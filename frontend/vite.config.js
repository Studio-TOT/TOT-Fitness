import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import path from "path";

// Custom plugin to inject runtime config
function runtimeConfig() {
  return {
    name: 'runtime-config',
    transformIndexHtml(html) {
      // Inject a script that will be replaced at runtime
      const script = `
        <script>
          window.__RUNTIME_CONFIG__ = {
            VITE_API_URL: '${process.env.VITE_API_URL || ''}'
          };
        </script>
      `;
      return html.replace('</head>', `${script}</head>`);
    }
  };
}

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    react(),
    runtimeConfig()
  ],
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./src"),
      "@components": path.resolve(__dirname, "./src/components"),
      "@pages": path.resolve(__dirname, "./src/pages"),
      "@context": path.resolve(__dirname, "./src/context"),
      "@data": path.resolve(__dirname, "./src/data"),
    },
  },
  build: {
    rollupOptions: {
      output: {
        manualChunks: {
          vendor: ["react", "react-dom", "react-router-dom"],
        },
      },
    },
    chunkSizeWarningLimit: 1000,
  }
});
