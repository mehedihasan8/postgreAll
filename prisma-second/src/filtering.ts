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

  console.log(orFilting);
};
main();
