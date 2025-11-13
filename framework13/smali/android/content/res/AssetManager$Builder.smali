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

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public greylist-max-o addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    .locals 1
    .param p1, "apkAssets"    # Landroid/content/res/ApkAssets;

    .line 156
    iget-object v0, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-object p0
.end method

.method public blacklist addLoader(Landroid/content/res/loader/ResourcesLoader;)Landroid/content/res/AssetManager$Builder;
    .locals 1
    .param p1, "loader"    # Landroid/content/res/loader/ResourcesLoader;

    .line 161
    iget-object v0, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    return-object p0
.end method

.method public greylist-max-o build()Landroid/content/res/AssetManager;
    .locals 10

    .line 167
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    .line 172
    .local v0, "systemApkAssets":[Landroid/content/res/ApkAssets;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "loaderApkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 174
    .local v2, "uniqueLoaderApkAssets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/res/ApkAssets;>;"
    iget-object v3, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ltz v3, :cond_2

    .line 175
    iget-object v5, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v5}, Landroid/content/res/loader/ResourcesLoader;->getApkAssets()Ljava/util/List;

    move-result-object v5

    .line 176
    .local v5, "currentLoaderApkAssets":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_1
    if-ltz v6, :cond_1

    .line 177
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ApkAssets;

    .line 178
    .local v7, "apkAssets":Landroid/content/res/ApkAssets;
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 179
    invoke-virtual {v1, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 176
    .end local v7    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 174
    .end local v5    # "currentLoaderApkAssets":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 184
    .end local v3    # "i":I
    :cond_2
    array-length v3, v0

    iget-object v5, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    .line 185
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    .line 186
    .local v3, "totalApkAssetCount":I
    new-array v5, v3, [Landroid/content/res/ApkAssets;

    .line 188
    .local v5, "apkAssets":[Landroid/content/res/ApkAssets;
    array-length v6, v0

    invoke-static {v0, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "n":I
    :goto_2
    if-ge v6, v7, :cond_3

    .line 192
    array-length v8, v0

    add-int/2addr v8, v6

    iget-object v9, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ApkAssets;

    aput-object v9, v5, v8

    .line 191
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 196
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .restart local v7    # "n":I
    :goto_3
    if-ge v6, v7, :cond_4

    .line 197
    array-length v8, v0

    add-int/2addr v8, v6

    iget-object v9, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    .line 198
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ApkAssets;

    aput-object v9, v5, v8

    .line 196
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 203
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_4
    new-instance v6, Landroid/content/res/AssetManager;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Landroid/content/res/AssetManager;-><init>(ZLandroid/content/res/AssetManager-IA;)V

    .line 204
    .local v6, "assetManager":Landroid/content/res/AssetManager;
    invoke-static {v6, v5}, Landroid/content/res/AssetManager;->-$$Nest$fputmApkAssets(Landroid/content/res/AssetManager;[Landroid/content/res/ApkAssets;)V

    .line 205
    invoke-static {v6}, Landroid/content/res/AssetManager;->-$$Nest$fgetmObject(Landroid/content/res/AssetManager;)J

    move-result-wide v8

    invoke-static {v8, v9, v5, v4}, Landroid/content/res/AssetManager;->-$$Nest$smnativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V

    .line 207
    iget-object v8, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    .line 208
    :cond_5
    iget-object v7, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    new-array v4, v4, [Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, [Landroid/content/res/loader/ResourcesLoader;

    :goto_4
    invoke-static {v6, v7}, Landroid/content/res/AssetManager;->-$$Nest$fputmLoaders(Landroid/content/res/AssetManager;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 211
    iget-object v4, v6, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    iget-object v4, v6, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 212
    iget-object v4, v6, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 214
    :cond_6
    array-length v4, v5

    .line 215
    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v4, :cond_8

    .line 216
    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, "path":Ljava/lang/String;
    if-eqz v8, :cond_7

    const-string v9, "/data/overlays/currentstyle"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v6, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    if-eqz v9, :cond_7

    iget-object v9, v6, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 220
    iget-object v9, v6, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v8    # "path":Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 225
    .end local v4    # "count":I
    .end local v7    # "i":I
    :cond_8
    return-object v6
.end method
