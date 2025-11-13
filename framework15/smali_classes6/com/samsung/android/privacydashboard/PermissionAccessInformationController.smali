.class public Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;
.super Ljava/lang/Object;
.source "PermissionAccessInformationController.java"


# static fields
.field private static final blacklist OP_CAPTURE_SCREEN:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "PermissionAccessInformationController"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFlushExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPermissionAccessInformationWriter:Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

.field private blacklist mPermissionAccessInformations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/privacydashboard/PermissionAccessInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPermissionGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReadLock:Ljava/util/concurrent/locks/Lock;

.field private final blacklist mUselessPackages:[Ljava/lang/String;

.field private final blacklist mWriterLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mUselessPackages:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$2;-><init>(Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;)V

    iput-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionGroupMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    iput-object p1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mFlushExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

    invoke-direct {v1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformationWriter:Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    return-void
.end method

.method private blacklist isOpCodeEnable(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionGroupMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist isPackageEnable(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mUselessPackages:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mUselessPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist write(Lcom/samsung/android/privacydashboard/PermissionAccessInformation;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public blacklist flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    move-object v0, v1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformationWriter:Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

    iget-object v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;->write(Landroid/content/Context;Ljava/util/Iterator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    :cond_0
    throw v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public blacklist flushAsync()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mFlushExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$1;-><init>(Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13

    move-object v0, p0

    move-object/from16 v10, p3

    invoke-direct {p0, v10}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->isPackageEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->isOpCodeEnable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v11, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;

    const/16 v1, 0x12c

    move/from16 v12, p6

    if-lt v12, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v7, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v1, v11

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-direct {p0, v1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->write(Lcom/samsung/android/privacydashboard/PermissionAccessInformation;)V

    iget-object v2, v0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->flushAsync()V

    goto :goto_1

    :cond_1
    move/from16 v12, p6

    :cond_2
    :goto_1
    return-void
.end method
