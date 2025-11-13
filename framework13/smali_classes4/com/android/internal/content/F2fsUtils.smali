.class public final Lcom/android/internal/content/F2fsUtils;
.super Ljava/lang/Object;
.source "F2fsUtils.java"


# static fields
.field private static final blacklist COMPRESSION_FEATURE:Ljava/lang/String; = "compression"

.field private static final blacklist DEBUG_F2FS:Z = false

.field private static final blacklist RELOCATION_FEATURE:Ljava/lang/String; = "sec_dnode_relocation"

.field private static final blacklist TAG:Ljava/lang/String; = "F2fsUtils"

.field private static final blacklist sDataDirectory:Ljava/io/File;

.field private static blacklist sKernelCompressionAvailable:Z

.field private static final blacklist sKernelFeatures:Ljava/io/File;

.field private static final blacklist sUserDataCompressionAvailable:Z

.field private static final blacklist sUserDataFeatures:Ljava/io/File;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/f2fs/features"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sKernelFeatures:Ljava/io/File;

    .line 44
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/sys/fs/by-name/userdata/features"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sUserDataFeatures:Ljava/io/File;

    .line 46
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sDataDirectory:Ljava/io/File;

    .line 55
    const-string v0, "compression"

    invoke-static {v0}, Lcom/android/internal/content/F2fsUtils;->isFeatureEnabledInKernel(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/content/F2fsUtils;->sKernelCompressionAvailable:Z

    .line 56
    nop

    .line 62
    const-string/jumbo v0, "sec_dnode_relocation"

    invoke-static {v0}, Lcom/android/internal/content/F2fsUtils;->isFeatureEnabledInKernel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/content/F2fsUtils;->sKernelCompressionAvailable:Z

    .line 68
    :cond_0
    invoke-static {}, Lcom/android/internal/content/F2fsUtils;->isCompressionEnabledOnUserData()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/content/F2fsUtils;->sUserDataCompressionAvailable:Z

    .line 69
    nop

    .line 74
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getFilesRecursive(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 271
    .local v0, "allFiles":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 272
    const/4 v1, 0x0

    return-object v1

    .line 274
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 276
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 277
    invoke-static {v4}, Lcom/android/internal/content/F2fsUtils;->getFilesRecursive(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 278
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 279
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v4    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :cond_3
    return-object v1
.end method

.method private static blacklist getFilesToRelease(Ljava/io/File;)[Ljava/io/File;
    .locals 3
    .param p0, "codePath"    # Ljava/io/File;

    .line 289
    invoke-static {p0}, Lcom/android/internal/content/F2fsUtils;->getFilesRecursive(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 290
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 291
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    return-object v1

    .line 294
    :cond_0
    return-object v1

    .line 296
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 297
    return-object v1

    .line 299
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    return-object v1
.end method

.method private static blacklist isChild(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p0, "base"    # Ljava/io/File;
    .param p1, "childPath"    # Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    move-object p0, v1

    .line 176
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 177
    .local v1, "parentFile":Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {p0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const/4 v0, 0x1

    return v0

    .line 181
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 183
    :cond_1
    return v0

    .line 184
    .end local v1    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "ignore":Ljava/io/IOException;
    return v0
.end method

.method private static blacklist isCompressionAllowed(Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 144
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v1, "filePath":Ljava/lang/String;
    nop

    .line 151
    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    return v0

    .line 157
    :cond_0
    sget-object v2, Lcom/android/internal/content/F2fsUtils;->sDataDirectory:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/android/internal/content/F2fsUtils;->isChild(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 161
    return v0

    .line 166
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 145
    .end local v1    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method private static blacklist isCompressionEnabledOnUserData()Z
    .locals 7

    .line 226
    sget-object v0, Lcom/android/internal/content/F2fsUtils;->sUserDataFeatures:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 236
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .local v0, "configLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 243
    if-eqz v0, :cond_4

    .line 244
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_4

    .line 245
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 251
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "features":[Ljava/lang/String;
    array-length v4, v1

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 253
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "compression"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 257
    return v3

    .line 252
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 263
    .end local v4    # "i":I
    :cond_3
    return v2

    .line 249
    .end local v1    # "features":[Ljava/lang/String;
    :cond_4
    :goto_1
    return v2

    .line 237
    .end local v0    # "configLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ignore":Ljava/io/IOException;
    return v2

    .line 232
    .end local v0    # "ignore":Ljava/io/IOException;
    :cond_5
    :goto_2
    return v2
.end method

.method private static blacklist isFeatureEnabledInKernel(Ljava/lang/String;)Z
    .locals 6
    .param p0, "targetFeature"    # Ljava/lang/String;

    .line 197
    sget-object v0, Lcom/android/internal/content/F2fsUtils;->sKernelFeatures:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 198
    .local v0, "features":[Ljava/io/File;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 205
    aget-object v4, v0, v2

    .line 206
    .local v4, "feature":Ljava/io/File;
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 210
    return v3

    .line 204
    .end local v4    # "feature":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    :cond_2
    return v1

    .line 202
    :cond_3
    :goto_1
    return v1
.end method

.method private static native blacklist nativeReleaseCompressedBlocks(Ljava/lang/String;)J
.end method

.method public static blacklist releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "file"    # Ljava/io/File;

    .line 94
    sget-boolean v0, Lcom/android/internal/content/F2fsUtils;->sKernelCompressionAvailable:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/internal/content/F2fsUtils;->sUserDataCompressionAvailable:Z

    if-nez v0, :cond_0

    goto :goto_3

    .line 103
    :cond_0
    nop

    .line 104
    const-string/jumbo v0, "release_compress_blocks_on_install"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 105
    .local v0, "releaseCompressBlocks":Z
    :goto_0
    if-nez v0, :cond_2

    .line 109
    return-void

    .line 111
    :cond_2
    invoke-static {p1}, Lcom/android/internal/content/F2fsUtils;->isCompressionAllowed(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 115
    return-void

    .line 117
    :cond_3
    invoke-static {p1}, Lcom/android/internal/content/F2fsUtils;->getFilesToRelease(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    .line 118
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_6

    array-length v3, v2

    if-nez v3, :cond_4

    goto :goto_2

    .line 124
    :cond_4
    array-length v3, v2

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 125
    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/content/F2fsUtils;->nativeReleaseCompressedBlocks(Ljava/lang/String;)J

    .line 124
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 131
    .end local v3    # "i":I
    :cond_5
    return-void

    .line 122
    :cond_6
    :goto_2
    return-void

    .line 95
    .end local v0    # "releaseCompressBlocks":Z
    .end local v2    # "files":[Ljava/io/File;
    :cond_7
    :goto_3
    return-void
.end method
