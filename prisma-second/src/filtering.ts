import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();
const main = async () => {
  // and filtering and parsilal seacrch
  const andFilting = await prisma.post.findMany({
    where: {
      AND: [
        {
          title: {
            contains: "title",
          },
        },
        {
          published: true,
        },
      ],
    },
  });

  // or filtering and parsilal seacrch

  const orFilting = await prisma.post.findMany({
    where: {
      OR: [
        {
          title: {
            contains: "title",
          },
        },
        {
          published: true,
        },
      ],
    },
  });

  //not filtering and persial search

  const notFiltering = await prisma.post.findMany({
    where: {
      NOT: [
        {
          title: {
            contains: "title",
          },
        },
      ],
    },
  });

  //search with first letter

  const emdtWith = await prisma.user.findMany({
    where: {
      email: {
        endsWith: ".com",
      },
    },
  });
  //search with first letter

  const equlWith = await prisma.user.findMany({
    where: {
      email: {
        equals: "usre1@gmail.com",
      },
    },
  });
  //search with first letter

  const startWith = await prisma.user.findMany({
    where: {
      email: {
        startsWith: "f",
      },
    },
  });

  //filtering with array like

  const userNameArray = ["User 1", "User 2", "user3"];

  const userNameByArray = await prisma.user.findMany({
    where: {
      username: {
        in: userNameArray,
      },
    },
  });

  //indepthdata like relational model and all data find

  const idDeptData = await prisma.user.findUnique({
    where: {
      id: 1,
    },
    include: {
      post: {
        include: {
          postCategory: {
            include: {
              category: true,
            },
          },
        },
      },
    },
  });

  console.dir(idDeptData, { depth: Infinity });
};
main();
