.class public final Landroid/content/res/ResourcesKey;
.super Ljava/lang/Object;
.source "ResourcesKey.java"


# instance fields
.field public blacklist hasInvalidOverlayPath:Z

.field public final greylist-max-o mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field public greylist-max-o mDisplayId:I

.field public blacklist mDisplayId2:I

.field private final greylist-max-o mHash:I

.field public final greylist-max-o mLibDirs:[Ljava/lang/String;

.field public final blacklist mLoaders:[Landroid/content/res/loader/ResourcesLoader;

.field public final blacklist mOverlayPaths:[Ljava/lang/String;

.field public final greylist-max-o mOverrideConfiguration:Landroid/content/res/Configuration;

.field public final blacklist mPackageName:Ljava/lang/String;

.field public final greylist mResDir:Ljava/lang/String;

.field public final greylist mSplitResDirs:[Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 9
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayPaths"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 220
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 222
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V
    .locals 11
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayPaths"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "overrideDisplayId"    # I
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "loader"    # [Landroid/content/res/loader/ResourcesLoader;

    .line 107
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;I)V

    .line 109
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;I)V
    .locals 11
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayPaths"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "overrideDisplayId"    # I
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "loader"    # [Landroid/content/res/loader/ResourcesLoader;
    .param p9, "displayId2"    # I

    .line 133
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;)V
    .locals 11
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayPaths"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "overrideDisplayId"    # I
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "loader"    # [Landroid/content/res/loader/ResourcesLoader;
    .param p9, "packageName"    # Ljava/lang/String;

    .line 120
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;I)V

    .line 122
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;I)V
    .locals 15
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayPaths"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "overrideDisplayId"    # I
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "loader"    # [Landroid/content/res/loader/ResourcesLoader;
    .param p9, "packageName"    # Ljava/lang/String;
    .param p10, "displayId2"    # I

    .line 146
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    move/from16 v3, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/content/res/ResourcesKey;->hasInvalidOverlayPath:Z

    .line 95
    iput v4, v0, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    .line 148
    move-object/from16 v5, p1

    iput-object v5, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 149
    move-object/from16 v6, p2

    iput-object v6, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 151
    if-lez v3, :cond_3

    .line 152
    if-eqz v1, :cond_2

    array-length v7, v1

    if-lez v7, :cond_2

    .line 153
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v7, "overlayDirsExceptSamsungTheme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v8, v1

    move v9, v4

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v1, v9

    .line 155
    .local v10, "overlay":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v11, "/data/overlays/currentstyle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 157
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v10    # "overlay":Ljava/lang/String;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 160
    :cond_1
    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    .line 161
    .end local v7    # "overlayDirsExceptSamsungTheme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 162
    :cond_2
    iput-object v1, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    goto :goto_1

    .line 165
    :cond_3
    iput-object v1, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    .line 168
    :goto_1
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 169
    if-eqz v2, :cond_4

    array-length v7, v2

    if-nez v7, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    move-object v7, v2

    :goto_2
    iput-object v7, v0, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    .line 170
    move/from16 v8, p5

    iput v8, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 171
    new-instance v9, Landroid/content/res/Configuration;

    if-eqz p6, :cond_5

    .line 172
    move-object/from16 v10, p6

    goto :goto_3

    :cond_5
    sget-object v10, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :goto_3
    invoke-direct {v9, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v9, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 173
    if-eqz p7, :cond_6

    move-object/from16 v10, p7

    goto :goto_4

    :cond_6
    sget-object v10, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    :goto_4
    iput-object v10, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 176
    move-object/from16 v11, p9

    iput-object v11, v0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    .line 184
    iput v3, v0, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    .line 188
    const/16 v12, 0x11

    .line 189
    .local v12, "hash":I
    mul-int/lit8 v13, v12, 0x1f

    iget-object v14, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-static {v14}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v14

    add-int/2addr v13, v14

    .line 190
    .end local v12    # "hash":I
    .local v13, "hash":I
    mul-int/lit8 v12, v13, 0x1f

    iget-object v14, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    invoke-static {v14}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v14

    add-int/2addr v12, v14

    .line 191
    .end local v13    # "hash":I
    .restart local v12    # "hash":I
    mul-int/lit8 v13, v12, 0x1f

    iget-object v14, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    invoke-static {v14}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v14

    add-int/2addr v13, v14

    .line 192
    .end local v12    # "hash":I
    .restart local v13    # "hash":I
    mul-int/lit8 v12, v13, 0x1f

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v14

    add-int/2addr v12, v14

    .line 193
    .end local v13    # "hash":I
    .restart local v12    # "hash":I
    mul-int/lit8 v13, v12, 0x1f

    iget v14, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v14

    add-int/2addr v13, v14

    .line 194
    .end local v12    # "hash":I
    .restart local v13    # "hash":I
    mul-int/lit8 v12, v13, 0x1f

    invoke-static {v9}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v9

    add-int/2addr v12, v9

    .line 195
    .end local v13    # "hash":I
    .restart local v12    # "hash":I
    mul-int/lit8 v9, v12, 0x1f

    invoke-static {v10}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v10

    add-int/2addr v9, v10

    .line 196
    .end local v12    # "hash":I
    .local v9, "hash":I
    mul-int/lit8 v10, v9, 0x1f

    invoke-static {v7}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v10, v7

    .line 199
    .end local v9    # "hash":I
    .local v10, "hash":I
    mul-int/lit8 v7, v10, 0x1f

    invoke-static/range {p9 .. p9}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v9

    add-int/2addr v7, v9

    .line 205
    .end local v10    # "hash":I
    .local v7, "hash":I
    mul-int/lit8 v9, v7, 0x1f

    iget v10, v0, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v10

    add-int/2addr v9, v10

    .line 209
    .end local v7    # "hash":I
    .restart local v9    # "hash":I
    iput v9, v0, Landroid/content/res/ResourcesKey;->mHash:I

    .line 210
    return-void
.end method

.method private static greylist-max-o anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "list"    # [Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 238
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 239
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 240
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    const/4 v0, 0x1

    return v0

    .line 239
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_1
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 255
    instance-of v0, p1, Landroid/content/res/ResourcesKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 256
    return v1

    .line 259
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/ResourcesKey;

    .line 260
    .local v0, "peer":Landroid/content/res/ResourcesKey;
    iget v2, p0, Landroid/content/res/ResourcesKey;->mHash:I

    iget v3, v0, Landroid/content/res/ResourcesKey;->mHash:I

    if-eq v2, v3, :cond_1

    .line 262
    return v1

    .line 265
    :cond_1
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 266
    return v1

    .line 268
    :cond_2
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 269
    return v1

    .line 271
    :cond_3
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 272
    return v1

    .line 274
    :cond_4
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 275
    return v1

    .line 277
    :cond_5
    iget v2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget v3, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-eq v2, v3, :cond_6

    .line 278
    return v1

    .line 280
    :cond_6
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 281
    return v1

    .line 283
    :cond_7
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 284
    return v1

    .line 286
    :cond_8
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 287
    return v1

    .line 291
    :cond_9
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 292
    return v1

    .line 296
    :cond_a
    const/4 v1, 0x1

    return v1
.end method

.method public greylist-max-o hasOverrideConfiguration()Z
    .locals 2

    .line 225
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 250
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    return v0
.end method

.method public greylist-max-o isPathReferenced(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    return v1

    .line 232
    :cond_0
    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 233
    invoke-static {v0, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 232
    :goto_1
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourcesKey{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " mHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/ResourcesKey;->mHash:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, " mResDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, " mSplitDirs=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 306
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v3, " mOverlayDirs=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 311
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v3, " mLibDirs=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 316
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v3, " mDisplayId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    const-string v3, " mOverrideConfig="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v3, " mCompatInfo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    const-string v3, " mLoaders=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    if-eqz v3, :cond_3

    .line 325
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, " mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
