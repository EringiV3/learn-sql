const fs = require('fs');

const main = () => {
  const path = process.argv[2];
  const fileCount = process.argv[3];
  for (let index = 1; index <= parseInt(fileCount); index++) {
    fs.writeFile(`${path}/${index}.sql`, '', (error) => {
      if (error) {
        throw error;
      }
    });
  }
};

main();
