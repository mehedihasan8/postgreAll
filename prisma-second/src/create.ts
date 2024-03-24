import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const main = async () => {
  //   const createUser = await prisma.user.create({
  //     data: {
  //       username: "User 3",
  //       email: "usre1@gmail.com",
  //       age: 84,
  //     },
  //   });

  const createProfile = await prisma.profile.create({
    data: {
      bio: "this is main bio.....",
      userId: 1,
    },
  });
  console.log(createProfile);
};

main();
