class QueryBuilderService {
    buildExerciseQuery(filters = {}) {
        const { category, difficulty, search, bodyPart, muscle, offset, limit } = filters;
        const params = [];
        let query = `
            SELECT 
                e.*,
                ed_diff.difficulty_name,
                json_agg(DISTINCT jsonb_build_object(
                    'id', m.id,
                    'name', m.name,
                    'name_en_us', m.name_en_us,
                    'is_primary', em.is_primary,
                    'is_secondary', em.is_secondary,
                    'is_tertiary', em.is_tertiary
                )) FILTER (WHERE m.id IS NOT NULL) as muscles,
                json_agg(DISTINCT jsonb_build_object(
                    'id', c.id,
                    'name', c.name,
                    'name_en_us', c.name_en_us,
                    'is_primary', ec.is_primary
                )) FILTER (WHERE c.id IS NOT NULL) as categories,
                json_agg(DISTINCT jsonb_build_object(
                    'id', f.id,
                    'name', f.name,
                    'name_en_us', f.name_en_us
                )) FILTER (WHERE f.id IS NOT NULL) as force,
                json_agg(DISTINCT jsonb_build_object(
                    'id', me.id,
                    'name', me.name,
                    'name_en_us', me.name_en_us
                )) FILTER (WHERE me.id IS NOT NULL) as mechanic,
                json_agg(DISTINCT jsonb_build_object(
                    'id', es.id,
                    'order', es.order_num,
                    'text', es.text,
                    'text_en_us', es.text_en_us
                )) FILTER (WHERE es.id IS NOT NULL) as steps,
                json_agg(DISTINCT jsonb_build_object(
                    'id', i.id,
                    'gender', i.gender,
                    'order', i.order_num,
                    'og_image', i.og_image,
                    'original_video', i.original_video,
                    'unbranded_video', i.unbranded_video,
                    'branded_video', i.branded_video
                )) FILTER (WHERE i.id IS NOT NULL) as images
            FROM exercises e
            LEFT JOIN exercise_muscles em ON e.id = em.exercise_id
            LEFT JOIN muscles m ON em.muscle_id = m.id
            LEFT JOIN exercise_categories ec ON e.id = ec.exercise_id
            LEFT JOIN categories c ON ec.category_id = c.id
            LEFT JOIN (
                SELECT ed_sub.exercise_id, d.name as difficulty_name
                FROM exercise_details ed_sub
                JOIN difficulties d ON ed_sub.difficulty_id = d.id
            ) ed_diff ON e.id = ed_diff.exercise_id
            LEFT JOIN exercise_details ed2 ON e.id = ed2.exercise_id
            LEFT JOIN forces f ON ed2.force_id = f.id
            LEFT JOIN mechanics me ON ed2.mechanic_id = me.id
            LEFT JOIN exercise_steps es ON e.id = es.exercise_id
            LEFT JOIN exercise_images i ON e.id = i.exercise_id
        `;

        // Add WHERE clauses based on filters
        const whereClauses = [];

        if (bodyPart) {
            params.push(`%${bodyPart}%`);
            whereClauses.push(`(m.name ILIKE $${params.length} OR m.name_en_us ILIKE $${params.length})`);
        }

        if (muscle) {
            params.push(`%${muscle}%`);
            whereClauses.push(`(m.name ILIKE $${params.length} OR m.name_en_us ILIKE $${params.length})`);
        }

        if (category) {
            params.push(`%${category}%`);
            whereClauses.push(`(c.name ILIKE $${params.length} OR c.name_en_us ILIKE $${params.length})`);
        }

        if (difficulty) {
            params.push(`%${difficulty}%`);
            whereClauses.push(`ed_diff.difficulty_name ILIKE $${params.length}`);
        }

        if (search) {
            params.push(`%${search}%`);
            whereClauses.push(`e.name ILIKE $${params.length}`);
        }

        if (whereClauses.length > 0) {
            query += ` WHERE ${whereClauses.join(' AND ')}`;
        }

        // Add GROUP BY and ORDER BY
        query += `
            GROUP BY e.id, e.name, e.description, e.name_en_us, e.name_alternative, e.slug, e.description_en_us, e.need_warmup, e.advanced_weight, e.featured_weight, e.weight, e.impact, e.use_youtube_links, e.featured, e.sponsered_link, e.status, e.created_at, e.updated_at, ed_diff.difficulty_name
            ORDER BY e.name
        `;

        // Add pagination if offset and limit are provided
        if (offset !== undefined && limit !== undefined) {
            params.push(limit, offset);
            query += ` LIMIT $${params.length - 1} OFFSET $${params.length}`;
        }

        return { query, params };
    }

    buildCountQuery(filters = {}) {
        const { category, difficulty, search, bodyPart, muscle } = filters;
        const params = [];
        let query = `
            SELECT COUNT(DISTINCT e.id) as total
            FROM exercises e
            LEFT JOIN exercise_muscles em ON e.id = em.exercise_id
            LEFT JOIN muscles m ON em.muscle_id = m.id
            LEFT JOIN exercise_categories ec ON e.id = ec.exercise_id
            LEFT JOIN categories c ON ec.category_id = c.id
            LEFT JOIN exercise_details ed ON e.id = ed.exercise_id
            LEFT JOIN difficulties d ON ed.difficulty_id = d.id
        `;

        const whereClauses = [];

        if (bodyPart) {
            params.push(`%${bodyPart}%`);
            whereClauses.push(`(m.name ILIKE $${params.length} OR m.name_en_us ILIKE $${params.length})`);
        }

        if (muscle) {
            params.push(`%${muscle}%`);
            whereClauses.push(`(m.name ILIKE $${params.length} OR m.name_en_us ILIKE $${params.length})`);
        }

        if (category) {
            params.push(`%${category}%`);
            whereClauses.push(`(c.name ILIKE $${params.length} OR c.name_en_us ILIKE $${params.length})`);
        }

        if (difficulty) {
            params.push(`%${difficulty}%`);
            whereClauses.push(`d.name ILIKE $${params.length}`);
        }

        if (search) {
            params.push(`%${search}%`);
            whereClauses.push(`e.name ILIKE $${params.length}`);
        }

        if (whereClauses.length > 0) {
            query += ` WHERE ${whereClauses.join(' AND ')}`;
        }

        return { query, params };
    }
}

module.exports = new QueryBuilderService(); 