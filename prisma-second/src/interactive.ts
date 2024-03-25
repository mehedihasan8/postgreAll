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

    // query 3
    const updateUser = await transactionClient.user.update({
      where: {
        id: 7,
      },
      data: {
        age: 50,
      },
    });

    return {
      gerAllPost,
      totalCount,
      updateUser,
    };
  });

  console.log(result);
};
main();
