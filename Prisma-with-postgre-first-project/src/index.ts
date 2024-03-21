import { PrismaClient } from "@prisma/client";

const prima = new PrismaClient();

const main = async () => {
  //   const result = await prima.post.create({
  //     data: {
  //       title: "Mehedi Hasan",
  //       contact: "This is contact",
  //       autherName: "This me",
  //     },
  //   });

  const getAllData = await prima.post.findMany();
  console.log(getAllData);
};

main();
