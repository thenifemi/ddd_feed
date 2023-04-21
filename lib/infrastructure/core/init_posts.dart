final initPosts = {
  "posts": [
    {
      "id": 1,
      "name": "Jane Doe",
      "handle": "@janedoe",
      "time": "2023-02-22 08:59:37",
      "content": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "image":
          "https://images.unsplash.com/photo-1681204620601-5b0806930959?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "likes": 123,
      "comments": 45,
      "dislikes": 6,
      "is_verified": true,
      "liked": true,
      "disliked": false,
      "bookmarked": true
    },
    {
      "id": 2,
      "name": "John Smith",
      "handle": "@johnsmith",
      "time": "2023-03-26 16:20:54",
      "content":
          "Praesent eget magna ac turpis dignissim luctus diam ac diam euismod, non auctor magna pulvinar.",
      "image": null,
      "likes": 42,
      "comments": 7,
      "dislikes": 1,
      "is_verified": false,
      "liked": false,
      "disliked": true,
      "bookmarked": false
    },
    {
      "id": 3,
      "name": "Emily Johnson",
      "handle": "@emilyj",
      "time": "2023-01-27 12:28:18",
      "content":
          "Vivamus venenatis nisl a massa tempus, id finibus eros euismod.",
      "image":
          "https://images.unsplash.com/photo-1681313171433-f92cf1eaccae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
      "likes": 789,
      "comments": 23,
      "dislikes": 9,
      "is_verified": true,
      "liked": false,
      "disliked": false,
      "bookmarked": true
    },
    {
      "id": 4,
      "name": "David Lee",
      "handle": "@davidl",
      "time": "2023-04-19 05:12:05",
      "content": "Suspendisse sit amet ex quis nisi ullamcorper pulvinar.",
      "image": null,
      "likes": 321,
      "comments": 12,
      "dislikes": 3,
      "is_verified": false,
      "liked": false,
      "disliked": false,
      "bookmarked": true
    },
    {
      "id": 5,
      "name": "Sarah Kim",
      "handle": "@sarahk",
      "time": "2023-01-17 20:30:41",
      "content":
          "Nulla tincidunt quam at erat bibendum, ut sollicitudin lorem malesuada.",
      "image":
          "https://images.unsplash.com/photo-1681116407296-848937ae1961?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "likes": 567,
      "comments": 34,
      "dislikes": 7,
      "is_verified": true,
      "liked": true,
      "disliked": false,
      "bookmarked": false
    },
    {
      "id": 6,
      "name": "Michael Chen",
      "handle": "@michaelc",
      "time": "2023-03-27 13:54:09",
      "content":
          "Fusce malesuada diam ac diam euismod, non auctor magna pulvinar.",
      "image": null,
      "likes": 987,
      "comments": 56,
      "dislikes": 12,
      "is_verified": false,
      "liked": true,
      "disliked": false,
      "bookmarked": false
    },
    {
      "id": 7,
      "name": "Julia Baker",
      "handle": "@juliab",
      "time": "2023-03-04 04:39:02",
      "content":
          "Proin id felis at metus dapibus ultrices vel eu metus. Sed aliquet eros in metus lacinia, non maximus sapien bibendum.",
      "image":
          "https://plus.unsplash.com/premium_photo-1664889357864-c5b963d74431?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1026&q=80",
      "likes": 234,
      "comments": 54,
      "dislikes": 5,
      "is_verified": false,
      "liked": true,
      "disliked": false,
      "bookmarked": false
    },
    {
      "id": 8,
      "name": "Daniel Brown",
      "handle": "@danielb",
      "time": "2023-01-30 19:46:50",
      "content":
          "Vestibulum nec metus in sapien bibendum tempor sit amet sed neque. Nulla facilisi.",
      "image": null,
      "likes": 456,
      "comments": 67,
      "dislikes": 10,
      "is_verified": false,
      "liked": false,
      "disliked": false,
      "bookmarked": true
    },
    {
      "id": 9,
      "name": "Avery Taylor",
      "handle": "@averyt",
      "time": "2023-04-19 10:16:31",
      "content":
          "Donec lobortis arcu nec metus pretium, vitae maximus metus interdum. In hac habitasse platea dictumst.",
      "image":
          "https://images.unsplash.com/photo-1681066471063-94f665643fb9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80",
      "likes": 789,
      "comments": 89,
      "dislikes": 4,
      "is_verified": true,
      "liked": true,
      "disliked": false,
      "bookmarked": false
    },
    {
      "id": 10,
      "name": "Sophia Rodriguez",
      "handle": "@sophiar",
      "time": "2023-01-26 23:14:56",
      "content":
          "Curabitur maximus tortor euismod, lacinia quam ut, rhoncus sapien. Aliquam sollicitudin nisi ac quam sodales, a hendrerit ante dapibus.",
      "image": null,
      "likes": 345,
      "comments": 23,
      "dislikes": 1,
      "is_verified": false,
      "liked": true,
      "disliked": false,
      "bookmarked": false
    },
    {
      "id": 11,
      "name": "William Davis",
      "handle": "@williamd",
      "time": "2023-02-21 05:41:12",
      "content":
          "Vestibulum eget orci et nisl aliquam convallis. Fusce eleifend, elit at ultrices facilisis, risus elit ultrices massa, sit amet pharetra risus neque et lectus.",
      "image":
          "https://plus.unsplash.com/premium_photo-1677636665443-2276041868e7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "likes": 123,
      "comments": 12,
      "dislikes": 0,
      "is_verified": false,
      "liked": false,
      "disliked": false,
      "bookmarked": true
    },
    {
      "id": 12,
      "name": "Emma Turner",
      "handle": "@emmat",
      "time": "2023-04-11 16:33:47",
      "content":
          "Nam convallis, nibh eget lacinia ultricies, enim ipsum gravida magna, nec consequat odio tellus in diam. Integer suscipit tortor eu velit lacinia semper.",
      "image": null,
      "likes": 789,
      "comments": 34,
      "dislikes": 2,
      "is_verified": true,
      "liked": false,
      "disliked": false,
      "bookmarked": true
    },
    {
      "id": 13,
      "name": "Isabella Scott",
      "handle": "@isabellas",
      "time": "2023-03-30 11:08:16",
      "content":
          "Fusce eleifend turpis id justo sagittis, id pretium enim posuere. Ut malesuada justo id elit euismod congue.",
      "image":
          "https://images.unsplash.com/photo-1666606654604-a4fae870efdf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=736&q=80",
      "likes": 234,
      "comments": 45,
      "dislikes": 3,
      "is_verified": true,
      "liked": true,
      "disliked": false,
      "bookmarked": false
    },
    {
      "id": 14,
      "name": "Liam Campbell",
      "handle": "@liamc",
      "time": "2023-02-17 06:52:39",
      "content":
          "Mauris laoreet magna id lectus malesuada congue. Donec fringilla risus a nibh auctor, eu gravida mauris facilisis.",
      "image": null,
      "likes": 567,
      "comments": 56,
      "dislikes": 8,
      "is_verified": false,
      "liked": false,
      "disliked": false,
      "bookmarked": false
    },
    {
      "id": 15,
      "name": "Mia Perez",
      "handle": "@miap",
      "time": "2023-01-24 20:19:30",
      "content":
          "Cras vel tortor scelerisque, luctus ipsum sit amet, lobortis turpis. Nulla nec magna sed turpis sodales tincidunt sit amet ac ipsum.",
      "image":
          "https://plus.unsplash.com/premium_photo-1675777641088-8db5c02e3e81?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "likes": 789,
      "comments": 90,
      "dislikes": 12,
      "is_verified": true,
      "liked": false,
      "disliked": false,
      "bookmarked": true
    },
    {
      "id": 16,
      "name": "Ethan Powell",
      "handle": "@ethanp",
      "time": "2023-03-19 15:23:58",
      "content":
          "Mauris nec diam quis diam sagittis auctor. Nullam consectetur elit ut eros malesuada, a luctus elit tincidunt.",
      "image": null,
      "likes": 345,
      "comments": 23,
      "dislikes": 4,
      "is_verified": false,
      "liked": true,
      "disliked": false,
      "bookmarked": false
    },
    {
      "id": 17,
      "name": "Chloe Clark",
      "handle": "@chloec",
      "time": "2023-01-11 10:37:44",
      "content":
          "Pellentesque consequat odio vitae diam auctor ultricies. Duis vel nulla vel augue convallis bibendum at sit amet lacus.",
      "image": null,
      "likes": 123,
      "comments": 13,
      "dislikes": 2,
      "is_verified": false,
      "liked": false,
      "disliked": false,
      "bookmarked": true
    },
    {
      "id": 18,
      "name": "James Martinez",
      "handle": "@jamesm",
      "time": "2023-04-15 22:15:20",
      "content":
          "Praesent interdum dolor eu nibh tristique bibendum. Praesent faucibus nunc vel neque dapibus, a eleifend leo gravida.",
      "image": null,
      "likes": 567,
      "comments": 45,
      "dislikes": 6,
      "is_verified": false,
      "liked": false,
      "disliked": true,
      "bookmarked": false
    },
    {
      "id": 19,
      "name": "Ethan Harris",
      "handle": "@ethanh",
      "time": "2023-03-29 06:02:38",
      "content":
          "Vivamus sed quam nec odio tincidunt pretium. Duis sit amet tortor id sapien iaculis feugiat.",
      "image":
          "https://plus.unsplash.com/premium_photo-1679619558457-8cce2aa37768?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "likes": 456,
      "comments": 34,
      "dislikes": 7,
      "is_verified": false,
      "liked": true,
      "disliked": false,
      "bookmarked": true
    },
    {
      "id": 20,
      "name": "Avery Peterson",
      "handle": "@averyp",
      "time": "2023-03-22 14:39:56",
      "content":
          "Maecenas sed velit vitae velit tincidunt faucibus. Maecenas vulputate felis eu sapien consectetur congue.",
      "image": null,
      "likes": 345,
      "comments": 23,
      "dislikes": 4,
      "is_verified": false,
      "liked": false,
      "disliked": false,
      "bookmarked": false
    },
    {
      "id": 21,
      "name": "Nora Evans",
      "handle": "@norae",
      "time": "2023-04-03 08:12:45",
      "content":
          "Duis vel purus a lorem iaculis molestie. Sed tincidunt orci quis risus viverra euismod.",
      "image":
          "https://images.unsplash.com/photo-1680866106821-0ad2f2871780?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
      "likes": 123,
      "comments": 12,
      "dislikes": 1,
      "is_verified": true,
      "liked": true,
      "disliked": false,
      "bookmarked": true
    },
    {
      "id": 22,
      "name": "Alexander Bailey",
      "handle": "@alexb",
      "time": "2023-04-03 08:12:45",
      "content":
          "Praesent sed lorem nec nisi euismod suscipit. Sed vitae ex interdum, faucibus enim eu, venenatis purus.",
      "image":
          "https://images.unsplash.com/photo-1680870752953-c574054e6c32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80",
      "likes": 789,
      "comments": 78,
      "dislikes": 13,
      "is_verified": true,
      "liked": false,
      "disliked": false,
      "bookmarked": false
    },
    {
      "id": 23,
      "name": "Madison Collins",
      "handle": "@madisonc",
      "time": "2023-04-01 19:27:05",
      "content":
          "Nam id lorem nec tortor eleifend laoreet. Maecenas pretium sapien sit amet nulla auctor aliquet.",
      "image": null,
      "likes": 567,
      "comments": 67,
      "dislikes": 9,
      "is_verified": false,
      "liked": false,
      "disliked": false,
      "bookmarked": true
    },
    {
      "id": 24,
      "name": "Nicholas Baker",
      "handle": "@nicholasb",
      "time": "2023-04-08 12:45:18",
      "content":
          "Donec vitae arcu non velit euismod lacinia. Sed a ipsum at massa hendrerit euismod.",
      "image": null,
      "likes": 345,
      "comments": 23,
      "dislikes": 4,
      "is_verified": false,
      "liked": false,
      "disliked": false,
      "bookmarked": false
    },
    {
      "id": 25,
      "name": "Emma Davis",
      "handle": "@emmad",
      "time": "2023-04-12 07:56:30",
      "content": "Etiam eu augue eu nibh mattis bibendum. Integer nec est",
      "image":
          "https://plus.unsplash.com/premium_photo-1677664963439-1d8ff5476e5b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
      "likes": 123,
      "comments": 12,
      "dislikes": 1,
      "is_verified": true,
      "liked": false,
      "disliked": false,
      "bookmarked": true
    },
    {
      "id": 26,
      "name": "Oliver Clark",
      "handle": "@oliverc",
      "time": "2023-03-07 20:18:59",
      "content":
          "Aliquam erat volutpat. Maecenas scelerisque erat vitae nulla bibendum, ac malesuada elit hendrerit.",
      "image": null,
      "likes": 789,
      "comments": 78,
      "dislikes": 13,
      "is_verified": false,
      "liked": false,
      "disliked": false,
      "bookmarked": false
    },
    {
      "id": 27,
      "name": "Sofia Hernandez",
      "handle": "@sofiah",
      "time": "2023-02-14 09:41:23",
      "content":
          "Phasellus venenatis lorem ac massa luctus, ac vestibulum urna pellentesque. Donec ut nulla vel augue malesuada laoreet.",
      "image":
          "https://images.unsplash.com/photo-1680927430424-80697eddb413?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80",
      "likes": 567,
      "comments": 67,
      "dislikes": 9,
      "is_verified": true,
      "liked": true,
      "disliked": false,
      "bookmarked": true
    },
    {
      "id": 28,
      "name": "Lucas Lee",
      "handle": "@lucasl",
      "time": "2023-01-20 16:34:12",
      "content":
          "Donec tempor sapien at mi suscipit, non consequat nulla bibendum. Nunc quis nulla eget arcu tristique malesuada id id quam.",
      "image": null,
      "likes": 345,
      "comments": 23,
      "dislikes": 4,
      "is_verified": false,
      "liked": false,
      "disliked": false,
      "bookmarked": false
    },
    {
      "id": 29,
      "name": "Evelyn Gonzalez",
      "handle": "@evelyng",
      "time": "2022-11-02 10:23:47",
      "content":
          "Etiam ac sapien euismod, placerat nisi in, accumsan tortor. Curabitur blandit neque vitae lorem pulvinar, vel malesuada ipsum lobortis.",
      "image":
          "https://images.unsplash.com/photo-1680693377318-63eb48d33056?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
      "likes": 123,
      "comments": 12,
      "dislikes": 1,
      "is_verified": true,
      "liked": true,
      "disliked": false,
      "bookmarked": true
    },
    {
      "id": 30,
      "name": "Mia Wilson",
      "handle": "@miaw",
      "time": "2022-10-08 03:45:56",
      "content":
          "Sed auctor, nunc vel tincidunt lacinia, nunc nisl aliquet nisl, vitae aliquet nisl nisl sit amet nisl.",
      "image": null,
      "likes": 789,
      "comments": 78,
      "dislikes": 13,
      "is_verified": false,
      "liked": false,
      "disliked": false,
      "bookmarked": false
    },
  ]
};
