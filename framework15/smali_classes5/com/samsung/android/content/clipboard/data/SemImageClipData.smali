.class public Lcom/samsung/android/content/clipboard/data/SemImageClipData;
.super Lcom/samsung/android/content/clipboard/data/SemClipData;
.source "SemImageClipData.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemImageClipData"

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private transient blacklist mContentUri:Landroid/net/Uri;

.field private blacklist mContentUriString:Ljava/lang/String;

.field private blacklist mExtraDataPath:Ljava/lang/String;

.field private transient blacklist mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

.field private blacklist mImagePath:Ljava/lang/String;

.field private blacklist mInitBaseValue:Ljava/lang/String;

.field private blacklist mInitBaseValueCheck:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(Landroid/os/Parcel;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->readFromSource(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z
    .locals 21

    const/4 v1, 0x5

    const/16 v2, 0x80

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    long-to-int v5, v5

    if-ne v4, v5, :cond_6

    const/4 v0, 0x1

    if-lt v4, v0, :cond_6

    if-ge v5, v0, :cond_0

    move-object/from16 v15, p1

    move-object/from16 v6, p2

    move/from16 v16, v1

    move/from16 v17, v2

    goto/16 :goto_7

    :cond_0
    const/16 v7, 0x80

    if-gt v4, v7, :cond_1

    move v7, v4

    :cond_1
    div-int v8, v4, v7

    const/4 v9, 0x5

    if-lt v8, v9, :cond_2

    goto :goto_0

    :cond_2
    move v9, v8

    :goto_0
    mul-int v10, v7, v9

    sub-int v8, v4, v10

    div-int v10, v8, v9

    const/4 v11, 0x0

    new-array v12, v7, [B

    new-array v13, v7, [B

    new-instance v14, Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object/from16 v15, p1

    :try_start_1
    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v6, p2

    :try_start_2
    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 v16, 0x0

    move/from16 v20, v16

    move/from16 v16, v1

    move/from16 v1, v20

    :goto_1
    if-ge v1, v9, :cond_5

    move/from16 v17, v2

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v14, v12, v2, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    invoke-virtual {v0, v13, v2, v7}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int v2, v7, v10

    add-int/2addr v11, v2

    move/from16 v18, v3

    int-to-long v2, v11

    :try_start_4
    invoke-virtual {v14, v2, v3}, Ljava/io/BufferedInputStream;->skip(J)J

    int-to-long v2, v11

    invoke-virtual {v0, v2, v3}, Ljava/io/BufferedInputStream;->skip(J)J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    move/from16 v3, v18

    :goto_2
    if-ge v2, v7, :cond_4

    move-object/from16 v19, v0

    :try_start_5
    aget-byte v0, v12, v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v18, v3

    :try_start_6
    aget-byte v3, v13, v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    move v3, v0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    goto :goto_2

    :cond_4
    move-object/from16 v19, v0

    move/from16 v18, v3

    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v17

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move/from16 v3, v18

    goto/16 :goto_14

    :catch_0
    move-exception v0

    move/from16 v3, v18

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    move/from16 v18, v3

    move-object v1, v0

    goto/16 :goto_14

    :catch_1
    move-exception v0

    move/from16 v18, v3

    goto/16 :goto_f

    :cond_5
    move-object/from16 v19, v0

    move/from16 v17, v2

    move/from16 v18, v3

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :goto_5
    move/from16 v3, v18

    goto :goto_12

    :goto_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_e

    :catchall_4
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_d

    :cond_6
    move-object/from16 v15, p1

    move-object/from16 v6, p2

    move/from16 v16, v1

    move/from16 v17, v2

    :goto_7
    nop

    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :goto_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_8

    :goto_9
    const/4 v2, 0x0

    return v2

    :goto_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    throw v0

    :catchall_6
    move-exception v0

    move-object/from16 v15, p1

    :goto_b
    move-object/from16 v6, p2

    :goto_c
    move/from16 v16, v1

    move/from16 v17, v2

    move-object v1, v0

    goto :goto_14

    :catch_6
    move-exception v0

    move-object/from16 v15, p1

    :goto_d
    move-object/from16 v6, p2

    :goto_e
    move/from16 v16, v1

    move/from16 v17, v2

    :goto_f
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    const/4 v3, 0x0

    :try_start_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :goto_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :catchall_7
    move-exception v0

    goto :goto_13

    :catch_7
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_10

    :goto_11
    nop

    :goto_12
    return v3

    :goto_13
    const/4 v1, 0x0

    const/4 v2, 0x0

    throw v0

    :catchall_8
    move-exception v0

    move-object v1, v0

    :goto_14
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :goto_15
    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_16

    :catchall_9
    move-exception v0

    goto :goto_17

    :catch_8
    move-exception v0

    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_15

    :goto_16
    throw v1

    :goto_17
    const/4 v1, 0x0

    const/4 v2, 0x0

    throw v0
.end method

.method private blacklist compareFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v3

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    nop

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    return v2

    :goto_2
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    :catch_2
    move-exception v4

    goto :goto_4

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :goto_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_3
    :goto_5
    nop

    :goto_6
    throw v3
.end method

.method private blacklist compareFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    nop

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_1
    :goto_2
    nop

    :goto_3
    move v2, v3

    :goto_4
    return v2

    :goto_5
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_6

    :catch_3
    move-exception v3

    goto :goto_7

    :cond_2
    :goto_6
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :goto_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :cond_3
    :goto_8
    nop

    :goto_9
    throw v2
.end method

.method private blacklist setClipData()V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ClipData$Item;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setClipData([Ljava/lang/String;Landroid/content/ClipData$Item;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist convertForRemote()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/semclipboard/remote"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setImagePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SemImageClipData"

    const-string/jumbo v2, "success converting"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public blacklist deleteContentUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->deleteContentUriInternal(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 9

    const-string v0, "SemImageClipData"

    const-string v1, "bitmap equals"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    instance-of v3, p1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    if-nez v3, :cond_1

    return v4

    :cond_1
    move-object v3, p1

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getInitBasePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {p0, v7, v4}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v2
.end method

.method public blacklist getBitmapPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setClipData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method protected blacklist getClipDataInternal()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setClipData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public blacklist getContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getExtraDataPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExtraParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    :try_start_0
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v1
.end method

.method public whitelist getImageFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInitBasePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    :try_start_0
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v2
.end method

.method public blacklist hasExtraData()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist insertContentUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_data"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/content/clipboard/provider/SemImageClipDataProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setContentUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "SemImageClipData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurs in insertContentUri because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected blacklist readFromSource(Landroid/os/Parcel;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readFromSource~Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemImageClipData"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public blacklist setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setBitmapPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    nop

    :goto_0
    return v0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setBitmapPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "setBitmapPath"

    const-string v1, "SemImageClipData"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    if-eqz v2, :cond_1

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtraDataPath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    :cond_2
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    const/4 p2, 0x0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public blacklist setContentUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    return-void
.end method

.method public whitelist setExtraDataPath(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "SemImageClipData"

    const-string v3, "ClipboardDataBitmap : ExtraDataPath is no file path ..check plz"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public whitelist setImagePath(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    if-eqz v2, :cond_1

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "SemImageClipData"

    const-string v3, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist toLoad()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    const-string v1, "/data/clipboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/sec/clipboard/util/CompatabilityHelper;->replacePathForCompatability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setImagePath(Ljava/lang/String;)Z

    :cond_1
    const-string v0, "SemImageClipData"

    const-string/jumbo v1, "imageclipdata toLoad called"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist toSave()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUriString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemImageClipData class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "SemImageClipData"

    const-string v1, "Bitmap write to parcel"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
