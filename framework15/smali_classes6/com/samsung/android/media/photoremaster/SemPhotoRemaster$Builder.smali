.class public Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;
.super Ljava/lang/Object;
.source "SemPhotoRemaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder$setLongParamaterIds;,
        Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder$setStringParameterIds;
    }
.end annotation


# static fields
.field public static final whitelist ID_AMOUNT_REMASTER_IMAGES:I = 0x3ee

.field public static final whitelist ID_ENHANCEMENT_STRENGTH:I = 0x3f4

.field public static final whitelist ID_ENHANCERS_EXCLUDE_LIST:I = 0x3f1

.field public static final whitelist ID_ENHANCERS_INCLUDE_LIST:I = 0x3f5

.field public static final whitelist ID_GIF_SAVE_FORMAT:I = 0x3f2

.field private static final blacklist ID_INPUT_BITMAP:I = 0x3f6

.field public static final whitelist ID_JPEG_QUALITY:I = 0x3f0

.field public static final whitelist ID_LAST_MODIFIED_DATETIME_INPUT:I = 0x3ec

.field private static final blacklist ID_PATH_INPUT:I = 0x3ea

.field public static final whitelist ID_SCENETYPE_INPUT:I = 0x3ed

.field public static final whitelist ID_SERVICE_PURPOSE:I = 0x3f3

.field public static final whitelist ID_SET_OUTPUT_DIR:I = 0x3ef

.field private static final blacklist ID_URI_INPUT:I = 0x3e9

.field private static final blacklist TAG:Ljava/lang/String; = "PhotoRemaster.Builder"


# instance fields
.field private final blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mInputPathName:Ljava/lang/String;

.field private final blacklist mInputUri:Landroid/net/Uri;

.field private blacklist mListener:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ProgressUpdateListener;

.field private final blacklist mLongParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mRequestFocusRoi:Z

.field private final blacklist mStringParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mTryInit:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBitmap(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputPathName(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mInputPathName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputUri(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mInputUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ProgressUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mListener:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ProgressUpdateListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongParams(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mLongParams:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestFocusRoi(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mRequestFocusRoi:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStringParams(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mStringParams:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTryInit(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mTryInit:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateInputPath(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->updateInputPath(Landroid/content/Context;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mStringParams:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mLongParams:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mTryInit:Z

    iput-boolean v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mRequestFocusRoi:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoRemaster.Builder"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Input is bitmap"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mInputUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mInputPathName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/Uri;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mStringParams:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mLongParams:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mTryInit:Z

    iput-boolean v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mRequestFocusRoi:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoRemaster.Builder"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mInputUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->setInputPathName(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static blacklist isValidFilePath(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist setInputPathName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->isValidFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mInputPathName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File does not exist or is inaccessible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist updateInputPath(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mInputUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mInputUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "PhotoRemaster.Builder"

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "InputPath is replaced with content provider"

    invoke-static {v2, v4}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mInputPathName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mInputPathName is updated as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mInputPathName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "InputPath is set as inputUri.getPath()"

    invoke-static {v2, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
.end method

.method public static whitelist with(Landroid/graphics/Bitmap;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static whitelist with(Landroid/net/Uri;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public whitelist build()Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;
    .locals 2

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;-><init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;Lcom/samsung/android/media/photoremaster/SemPhotoRemaster-IA;)V

    return-object v0
.end method

.method public whitelist setParameter(IJ)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mLongParams:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist setParameter(ILjava/lang/String;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mStringParams:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist setProgressUpdateListener(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ProgressUpdateListener;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mListener:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ProgressUpdateListener;

    return-object p0
.end method

.method public whitelist setRequestFocusRoi()Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mRequestFocusRoi:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FocusView does not support Bitmap-Object-Input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTryInit()Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->mTryInit:Z

    return-object p0
.end method
