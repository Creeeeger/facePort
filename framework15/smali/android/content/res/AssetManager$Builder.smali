.class public Landroid/content/res/AssetManager$Builder;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNoInit:Z

.field private greylist-max-o mUserApkAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager$Builder;->mNoInit:Z

    return-void
.end method


# virtual methods
.method public greylist-max-o addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    .locals 1

    iget-object v0, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addLoader(Landroid/content/res/loader/ResourcesLoader;)Landroid/content/res/AssetManager$Builder;
    .locals 1

    iget-object v0, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public greylist-max-o build()Landroid/content/res/AssetManager;
    .locals 11

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    const/4 v4, 0x0

    if-ltz v3, :cond_2

    iget-object v5, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v5}, Landroid/content/res/loader/ResourcesLoader;->getApkAssets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ApkAssets;

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    array-length v3, v0

    iget-object v5, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    new-array v5, v3, [Landroid/content/res/ApkAssets;

    array-length v6, v0

    invoke-static {v0, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_2
    if-ge v6, v7, :cond_3

    array-length v8, v0

    add-int/2addr v8, v6

    iget-object v9, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ApkAssets;

    aput-object v9, v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_3
    if-ge v6, v7, :cond_4

    array-length v8, v0

    add-int/2addr v8, v6

    iget-object v9, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ApkAssets;

    aput-object v9, v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    new-instance v6, Landroid/content/res/AssetManager;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Landroid/content/res/AssetManager;-><init>(ZLandroid/content/res/AssetManager-IA;)V

    invoke-static {v6, v5}, Landroid/content/res/AssetManager;->-$$Nest$fputmApkAssets(Landroid/content/res/AssetManager;[Landroid/content/res/ApkAssets;)V

    invoke-static {v6}, Landroid/content/res/AssetManager;->-$$Nest$fgetmObject(Landroid/content/res/AssetManager;)J

    move-result-wide v8

    iget-boolean v10, p0, Landroid/content/res/AssetManager$Builder;->mNoInit:Z

    invoke-static {v8, v9, v5, v4, v10}, Landroid/content/res/AssetManager;->-$$Nest$smnativeSetApkAssets(J[Landroid/content/res/ApkAssets;ZZ)V

    iget-object v8, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    iget-object v7, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    new-array v4, v4, [Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, [Landroid/content/res/loader/ResourcesLoader;

    :goto_4
    invoke-static {v6, v7}, Landroid/content/res/AssetManager;->-$$Nest$fputmLoaders(Landroid/content/res/AssetManager;[Landroid/content/res/loader/ResourcesLoader;)V

    invoke-static {v6}, Landroid/content/res/AssetManager;->-$$Nest$mupdateSamsungThemeOverlays(Landroid/content/res/AssetManager;)V

    return-object v6
.end method

.method public blacklist setNoInit()Landroid/content/res/AssetManager$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/AssetManager$Builder;->mNoInit:Z

    return-object p0
.end method
