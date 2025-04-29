import React from 'react';

const Spinner = () => {
  return (
    <div className="flex justify-center items-center min-h-[200px] w-full">
      <div className="w-[50px] h-[50px] relative flex justify-center items-center">
        <div className="w-full h-full border-4 border-secondary border-t-primary rounded-full animate-spin box-border"></div>
      </div>
    </div>
  );
};

export default Spinner; 