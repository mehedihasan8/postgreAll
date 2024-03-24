import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const main = async () => {
  //fluent api

  //   const result = await prisma.user
  //     .findUnique({
  //       where: {
  //         id: 1,
  //       },
  //     })
  //     .post();

  // include

  const result = await prisma.user.findUnique({
    where: {
      id: 1,
    },
    include: {
      post: true,
    },
  });
  console.log(result);
};
main();
