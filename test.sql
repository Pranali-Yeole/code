USE [dbblogreview]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 14-12-2020 00:01:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](150) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 14-12-2020 00:01:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Comment] [varchar](150) NOT NULL,
	[UserId] [int] NOT NULL,
	[BlogId] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Status] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentsStatus]    Script Date: 14-12-2020 00:01:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentsStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CommentId] [int] NOT NULL,
 CONSTRAINT [PK_CommentsStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 14-12-2020 00:01:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Role] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 14-12-2020 00:01:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 
GO
INSERT [dbo].[Blogs] ([ID], [Title], [Description], [UserId]) VALUES (1, N'How I Approach the Toughest Decisions', N'In March of 2009, just a couple of months into my presidency, the economy was in freefall. Unemployment was up to 8.5 percent, on its way to ten percent. 800,000 Americans lost their jobs that month, families across the country were losing their homes, a tanking stock market was depleting their 401ks, and a difficult credit market was making it hard for small business owners to take out the loans they needed. To turn around any of this required stabilizing the financial system, and to do that, I had settled on what was the least bad of three lousy options — subjecting the 19 largest banks to “stress tests” to see whether they had the capital to survive an even worse economy.
Nobody was happy about it — not the public, not Wall Street, not me. My own advisors disagreed about the path forward, with some calling for a sharper condemnation of the bankers whose recklessness had gotten us into the mess, and others saying that such gestures might stifle the very market confidence we needed.', 1)
GO
INSERT [dbo].[Blogs] ([ID], [Title], [Description], [UserId]) VALUES (2, N'Death of an Open Source Business Model', N'I am not a zealot. I do not feel entitled to others’ intellectual property, even if they’ve given away their ideas in the past. I know from experience how exhausting, thankless, and exploitative the work of creating and maintaining open source software can feel.
Until yesterday, I was still clinging to a few shreds of romantic optimism about open source software businesses. Mapbox is the protagonist of a story I’ve told myself and others countless times. It’s a seductive tale about the incredible, counterintuitive concept of the “open core” business model for software companies. In a piece I wrote last year that no one read, I defined the open core strategy thusly:²
“Open core” businesses offer a free, open source version of their software and a paid version with additional proprietary features that would be a pain to replicate […]
For the best in-depth analysis of the concept of the “open core” business model I’ve come across, I highly recommend reading Joseph Jacks’ blog post Open Core — Definition, Examples & Tradeoffs.
The whole idea is insane. No one believes it could possibly work when they first learn about it, and yet dozens of companies like Elastic, D2iQ (formerly Mesosphere), MongoDB and Cloudera have all managed to achieve valuations in the billions of dollars by pursuing this batshit-crazy, reverse-psychology, let-it-all-hang-out strategy. Or, at least, they were open core businesses at some point…maybe not so much today. More on that later.', 1)
GO
INSERT [dbo].[Blogs] ([ID], [Title], [Description], [UserId]) VALUES (3, N'We Need To Talk About Your Christmas', N'People who follow me on <b>instagram</b> know that I dabble in home design. In a hostile world, I choose to nest as radical praxis. People who follow me on @twitter know that I recently moved into what can best be described as a suburban Disneyland. This is the first time I have encountered holiday decorating as subculture and identity. I am talking animated displays, layered twinkle lights and displays set to music. I refuse to be caught slipping. I am wrapping my front porch footstools in big bows to match the blinking “JOY” sign. Don’t start none, won’t be none. Some folks took, shall we say, another route. And I have questions. They begin with those inflated Christmas yard…things. They’re great if you like used car lots and these things:', 1)
GO
INSERT [dbo].[Blogs] ([ID], [Title], [Description], [UserId]) VALUES (4, N'5 Things we can learn from AWS US-East-1 region outage', N'I’ve been reading that the outage of AWS US-East-1 which happened earlier today or last night (at the point of writing) has an impact on thousands of online services including SaaS platforms that probably do not follow a reliable DR strategy. Some people have been complaining that they can’t connect to voice-enabled as well as smart devices that use the affected AWS infrastructure. I was personally on a website that is purely built on the serverless platform when that happened. At that time, I noticed the loading pages took unusually very long, and at some point, it simply stopped loading. Services that use AWS Kinesis got affected badly. At the point of writing, AWS announced, as of 10:30 PM PST, they had restored all traffic to Kinesis Data Streams from Internet-facing endpoints, and they were continuing to incrementally restore all requests to Kinesis Data Streams using VPC Endpoints — which is great news. I really love AWS’s transparency, determination, and effort to restore the services, and keep all of us updated on the status!', 2)
GO
INSERT [dbo].[Blogs] ([ID], [Title], [Description], [UserId]) VALUES (5, N'Container Image Support in AWS Lambda', N'AWS has a growing number of serverless services that enable development teams to build agile applications rapidly, leaving AWS responsible for managing and operating servers and infrastructure. AWS Lambda takes care of running your application code and scales the code with high availability, with pay-per-use pricing.
With today’s AWS Re:Invent announcement of Container Image Support in AWS Lambda, developers can build new applications as functions using familiar container tooling, which will provide a seamless way to write code and test locally. Enterprise customers can use a consistent set of tools with both containerized applications and Lambda function for central application and security governance requirements, such as security scanning and image signing.
', 1)
GO
INSERT [dbo].[Blogs] ([ID], [Title], [Description], [UserId]) VALUES (6, N'Spend More Money than You Save', N'You should spend the money you earn like an out of control drunk. Well, okay, let me clarify…not quite.
My advice is counter-intuitive: spend all the money you earn.
The next worst piece of personal finance advice is “save money for a rainy day.” Really Joey know-it-all. Excuse me while I vomit.
In a zero interest rate environment, where the government is creating trillions of dollars out of thin air (money printing), that acts as a hidden tax, you want us all to-save-money? Are you freaking kidding me?
Now is the time to spend every dollar you have.
Every dollar you have sitting in a bank account is rotting to death. Your currency is evaporating. Your currency (dollars) is like a melting ice cube. Every day you keep a dollar in your bank account it’s inflated away.', 1)
GO
INSERT [dbo].[Blogs] ([ID], [Title], [Description], [UserId]) VALUES (7, N'Deploy a Load Balancer and multiple Web Servers ', N'<i>rovision EC2 instances through ansible.</i>
Retrieve the IP Address of instances using the dynamic inventory concept.
Configure the web servers through the ansible role.
Configure the load balancer through the ansible role.
<b>The target nodes of the load balancer should auto-update as per the status of web servers.</b>', 1)
GO
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 
GO
INSERT [dbo].[Comments] ([ID], [Comment], [UserId], [BlogId], [Rating], [Status]) VALUES (1, N'This is the best blog', 1, 2, 6, N'Approved')
GO
INSERT [dbo].[Comments] ([ID], [Comment], [UserId], [BlogId], [Rating], [Status]) VALUES (2, N'This is worst blog', 2, 2, 2, N'Approved')
GO
INSERT [dbo].[Comments] ([ID], [Comment], [UserId], [BlogId], [Rating], [Status]) VALUES (4, N'I Would like to clone this blg', 1, 1, 8, N'Approved')
GO
INSERT [dbo].[Comments] ([ID], [Comment], [UserId], [BlogId], [Rating], [Status]) VALUES (6, N'We Will Make this Happen', 1, 2, 6, N'Pending')
GO
INSERT [dbo].[Comments] ([ID], [Comment], [UserId], [BlogId], [Rating], [Status]) VALUES (23, N'Nice Blog', 1, 3, 9, N'Approved')
GO
INSERT [dbo].[Comments] ([ID], [Comment], [UserId], [BlogId], [Rating], [Status]) VALUES (24, N'Yess !! Christmas', 1, 3, 8, N'Approved')
GO
INSERT [dbo].[Comments] ([ID], [Comment], [UserId], [BlogId], [Rating], [Status]) VALUES (25, N'Thanks For sharing', 1, 6, 7, N'Approved')
GO
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[CommentsStatus] ON 
GO
INSERT [dbo].[CommentsStatus] ([ID], [CommentId]) VALUES (1, 1)
GO
INSERT [dbo].[CommentsStatus] ([ID], [CommentId]) VALUES (2, 2)
GO
SET IDENTITY_INSERT [dbo].[CommentsStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([ID], [UserID], [Role]) VALUES (1, 1, N'Admin')
GO
INSERT [dbo].[Roles] ([ID], [UserID], [Role]) VALUES (2, 2, N'User')
GO
INSERT [dbo].[Roles] ([ID], [UserID], [Role]) VALUES (6, 1, N'User')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([ID], [UserName], [Password]) VALUES (1, N'Admin', N'admin123')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Password]) VALUES (2, N'User', N'user123')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [df_Status]  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([ID])
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[CommentsStatus]  WITH CHECK ADD FOREIGN KEY([CommentId])
REFERENCES [dbo].[Comments] ([ID])
GO
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
