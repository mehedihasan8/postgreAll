import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const main = async () => {
  const result = await prisma.$transaction(async (transactionClient) => {
    // query --- 1
    const gerAllPost = await transactionClient.post.findMany({
      where: {
        published: true,
      },
    });
    //query --- 2
    const totalCount = await transactionClient.user.count();
  });
};
main();
