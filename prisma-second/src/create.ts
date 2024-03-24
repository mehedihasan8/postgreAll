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

  //   const createProfile = await prisma.profile.create({
  //     data: {
  //       bio: "this is main bio.....",
  //       userId: 1,
  //     },
  //   });

  //   const createCategory = await prisma.category.create({
  //     data: {
  //       name: "web...",
  //     },
  //   });

  const createPost = await prisma.post.create({
    data: {
      title: "this is title..",
      content: "this is content of the post",
      authorId: 1,
      postCategory: {
        create: {
          categoryId: 4,
          //   category: {
          //     connect: {
          //       id: 1,
          //     },
          //   },
        },
      },
    },
    include: {
      postCategory: true,
    },
  });

  console.log(createPost);
};

main();
