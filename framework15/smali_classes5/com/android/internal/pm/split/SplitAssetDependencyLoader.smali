.class public Lcom/android/internal/pm/split/SplitAssetDependencyLoader;
.super Landroid/content/pm/split/SplitDependencyLoader;
.source "SplitAssetDependencyLoader.java"

# interfaces
.implements Lcom/android/internal/pm/split/SplitAssetLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/split/SplitDependencyLoader<",
        "Ljava/lang/IllegalArgumentException;",
        ">;",
        "Lcom/android/internal/pm/split/SplitAssetLoader;"
    }
.end annotation


# instance fields
.field private final blacklist mCachedAssetManagers:[Landroid/content/res/AssetManager;

.field private final blacklist mCachedSplitApks:[[Landroid/content/res/ApkAssets;

.field private final blacklist mFlags:I

.field private final blacklist mSplitPaths:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/parsing/PackageLite;Landroid/util/SparseArray;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/PackageLite;",
            "Landroid/util/SparseArray<",
            "[I>;I)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/content/pm/split/SplitDependencyLoader;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mFlags:I

    iget-object v0, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [[Landroid/content/res/ApkAssets;

    iput-object v0, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    iget-object v0, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/content/res/AssetManager;

    iput-object v0, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    return-void
.end method

.method private static blacklist createAssetManagerWithAssets([Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager;
    .locals 22

    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    move-object v1, v0

    const/4 v15, 0x0

    new-array v5, v15, [Ljava/lang/String;

    const/16 v20, 0x0

    sget v21, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v1 .. v21}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIII)V

    const/4 v2, 0x0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    return-object v0
.end method

.method private static blacklist loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load APK at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected blacklist constructSplit(I[II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget v2, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mFlags:I

    invoke-static {v1, v2}, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p2, v2

    iget-object v4, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget v5, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mFlags:I

    invoke-static {v4, v5}, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/res/ApkAssets;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/res/ApkAssets;

    aput-object v2, v1, p1

    iget-object v1, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    iget-object v2, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    aget-object v2, v2, p1

    invoke-static {v2}, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->createAssetManagerWithAssets([Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager;

    move-result-object v2

    aput-object v2, v1, p1

    return-void
.end method

.method public blacklist getBaseApkAssets()Landroid/content/res/ApkAssets;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist getBaseAssetManager()Landroid/content/res/AssetManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->loadDependenciesForSplit(I)V

    iget-object v1, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public blacklist getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->loadDependenciesForSplit(I)V

    iget-object v0, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected blacklist isSplitCached(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
