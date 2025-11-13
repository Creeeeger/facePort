.class public Landroid/graphics/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FontFamily$NoImagePreloadHolder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mBuilderPtr:J

.field private greylist-max-o mNativeBuilderCleaner:Ljava/lang/Runnable;

.field public greylist-max-q mNativePtr:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetBuilderReleaseFunc()J
    .locals 2

    invoke-static {}, Landroid/graphics/FontFamily;->nGetBuilderReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetFamilyReleaseFunc()J
    .locals 2

    invoke-static {}, Landroid/graphics/FontFamily;->nGetFamilyReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "FontFamily"

    sput-object v0, Landroid/graphics/FontFamily;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-q <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nInitBuilder(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-static {}, Landroid/graphics/FontFamily$NoImagePreloadHolder;->-$$Nest$sfgetsBuilderRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    iget-wide v1, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor greylist-max-q <init>([Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    goto :goto_1

    :cond_1
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0, p2}, Landroid/graphics/FontFamily;->nInitBuilder(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-static {}, Landroid/graphics/FontFamily$NoImagePreloadHolder;->-$$Nest$sfgetsBuilderRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v1

    iget-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v1, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    return-void
.end method

.method private static native greylist-max-o nAddAxisValue(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nAddFont(JLjava/nio/ByteBuffer;III)Z
.end method

.method private static native greylist-max-o nAddFontWeightStyle(JLjava/nio/ByteBuffer;III)Z
.end method

.method private static native greylist-max-o nCreateFamily(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetBuilderReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFamilyReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nInitBuilder(Ljava/lang/String;I)J
.end method


# virtual methods
.method public greylist-max-q abortCreation()V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FontFamily is already frozen or abandoned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-q addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    iget-wide v3, v1, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p1

    :try_start_1
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v14

    if-eqz v2, :cond_0

    array-length v0, v2

    move v7, v3

    :goto_0
    if-ge v7, v0, :cond_0

    aget-object v8, v2, v7

    iget-wide v12, v1, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v8}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v15

    invoke-static {v12, v13, v9, v15}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-wide v12, v1, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move/from16 v15, p2

    move/from16 v16, p4

    move/from16 v17, p5

    invoke-static/range {v12 .. v17}, Landroid/graphics/FontFamily;->nAddFont(JLjava/nio/ByteBuffer;III)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return v0

    :catchall_0
    move-exception v0

    move-object v6, v0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_5
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    :goto_2
    return v3

    :cond_1
    move-object/from16 v4, p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to call addFont after freezing."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-q addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z
    .locals 7

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2, p4, p3}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v1, p0

    move v3, p5

    move-object v4, p8

    move v5, p6

    move v6, p7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to call addFontFromAsset after freezing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-q addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z
    .locals 8

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    iget-wide v3, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move-object v4, p1

    move v5, p2

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Landroid/graphics/FontFamily;->nAddFontWeightStyle(JLjava/nio/ByteBuffer;III)Z

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to call addFontWeightStyle after freezing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-q freeze()Z
    .locals 6

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nCreateFamily(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    iget-object v0, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/graphics/FontFamily$NoImagePreloadHolder;->-$$Nest$sfgetsFamilyRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    iget-wide v4, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    invoke-virtual {v0, p0, v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    :cond_0
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FontFamily is already frozen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
