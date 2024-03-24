import { PrismaClient } from "@prisma/client";
import { run } from "node:test";

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

  //   const result = await prisma.user.findUnique({
  //     where: {
  //       id: 1,
  //     },
  //     include: {
  //       post: true,
  //     },
  //   });

  //reletion filter

  const result = await prisma.user.findMany({
    include: {
      post: {
        where: {
          published: true,
        },
      },
    },
  });

  console.dir(result, { depth: Infinity });
};
main();
