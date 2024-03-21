import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const main = async () => {
  //create data into db
  // const result = await prima.post.create({
  //   data: {
  //     title: "Mehedi Hasan",
  //     contact: "This is contact",
  //     autherName: "This me",
  //   },
  // });

  // create many data

  const createManyData = await prisma.post.createMany({
    data: [
      {
        title: "Title many 1",
        contact: "contact many 1",
        autherName: "auther many 1",
      },
      {
        title: "Title many 2",
        contact: "contact many 2",
        autherName: "auther many 2",
      },
      {
        title: "Title many 3",
        contact: "contact many 3",
        autherName: "auther many 3",
      },
    ],
  });

  console.log(createManyData);
};
main();
