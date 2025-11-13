.class public final Landroidx/arch/core/executor/DefaultTaskExecutor;
.super Landroidx/arch/core/executor/TaskExecutor;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mDiskIO:Ljava/util/concurrent/ExecutorService;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Landroidx/arch/core/executor/DefaultTaskExecutor$1;

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/arch/core/executor/DefaultTaskExecutor$1;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-static {v0, p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    .line 13
    return-void
.end method
