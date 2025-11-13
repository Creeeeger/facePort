.class public Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;
.super Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;
.source "SmartClipDataCropperImpl.java"


# static fields
.field private static blacklist DEBUG:Z = false

.field public static final blacklist EXTRACTION_LEVEL_0:I = 0x0

.field public static final blacklist EXTRACTION_LEVEL_1:I = 0x1

.field private static final blacklist EXTRACTION_RESULT_MAIN_MASKING:I = 0xff

.field private static final blacklist MAX_META_VALUE_SIZE:I = 0x19000

.field private static final blacklist META_NAME_SUPPORT_THIRD_PARTY_EXTRACTION_INTERFACE:Ljava/lang/String; = "com.samsung.android.smartclip.support_custom_smartclip_metaextraction"

.field private static final blacklist TAG:Ljava/lang/String; = "SmartClipDataCropperImpl"

.field private static final blacklist YOUTUBE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"

.field private static final blacklist YOUTUBE_URL_PREFIX:Ljava/lang/String; = "http://www.youtube.com/watch?v="


# instance fields
.field private blacklist mChromeBrowserContentViewName:Ljava/lang/String;

.field protected blacklist mContext:Landroid/content/Context;

.field protected blacklist mExtractionLevel:I

.field protected blacklist mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

.field private blacklist mExtractionStartTime:J

.field protected blacklist mIsExtractingData:Z

.field private blacklist mLastMetaFileId:I

.field protected blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPenWindowBorderWidth:I

.field protected blacklist mPendingElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScaleRect:Landroid/graphics/RectF;

.field protected blacklist mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

.field private blacklist mSupportThirdPartyExtractionInterface:Z

.field private blacklist mUseViewPositionCache:Z

.field private blacklist mViewPositionCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWinFrameRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetViewBoundsOnScreen(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDataElementWithBundle(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->updateDataElementWithBundle(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;)V
    .locals 6

    new-instance v3, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v3, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v0, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPenWindowBorderWidth:I

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iput-boolean v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    iput v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSupportThirdPartyExtractionInterface:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionStartTime:J

    iput v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    iput-boolean v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mUseViewPositionCache:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    iput p5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPenWindowBorderWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->getChromeViewClassNameFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->isThirdPartyExtractionInterfaceEnabledOnManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSupportThirdPartyExtractionInterface:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    const/4 v1, 0x3

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    iput v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    :cond_1
    const-string v2, "com.samsung.android.smartclip.DEBUG"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v3, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    :cond_2
    return-void
.end method

.method private blacklist adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    const-string v3, "SmartClipDataCropperImpl"

    if-nez p2, :cond_0

    const-string v4, "adjustMetaAreaRect : rect is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    const/4 v5, 0x1

    if-eqz v4, :cond_2

    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v6, v4

    check-cast v6, Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v0, v6}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-ne v8, v5, :cond_1

    move-object v0, v7

    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p2, v0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-ne v6, v5, :cond_3

    return-object v1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustMetaAreaRect : there is no intersection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private blacklist allocateMetaTagFilePath()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/smartclip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_0
    iget v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    iget v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    rem-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    iget v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s/SC%02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string v4, "SmartClipDataCropperImpl"

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractSmartClipImageData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v7, "extractSmartClipData"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x3

    aput-object v9, v8, v11

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "setSmartClipResultHandler"

    new-array v9, v5, [Ljava/lang/Class;

    const-class v11, Landroid/os/Handler;

    aput-object v11, v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    if-eqz v0, :cond_1

    if-eqz v7, :cond_1

    const-string v8, "Extracting meta data from Chrome view..."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;

    invoke-direct {v8, v1, v3, v2, v7}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;-><init>(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Landroid/view/View;Ljava/lang/reflect/Method;)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-array v11, v10, [I

    invoke-virtual {v2, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v12, v11, v6

    neg-int v12, v12

    aget v13, v11, v5

    neg-int v13, v13

    invoke-virtual {v9, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v12, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    if-eqz v12, :cond_0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Converting coordinate : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v12, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v12, v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v10

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v7, "Current chrome view does not support smartclip"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v4, "getUrl"

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v7, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v8, "url"

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "getTitle"

    new-array v9, v6, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v7, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v8, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v9, "title"

    invoke-direct {v8, v9, v6}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    iget-object v8, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    if-eqz v8, :cond_3

    iget-object v8, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v8, v8, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    if-nez v8, :cond_2

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    iget-object v8, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v8, v8, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v5
.end method

.method private blacklist extractDefaultSmartClipData_ImageView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 4

    const-string/jumbo v0, "plain_text"

    invoke-virtual {p3, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string v3, ""

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist extractDefaultSmartClipData_TextView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string/jumbo v2, "plain_text"

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    move-object/from16 v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v5

    if-eqz v5, :cond_0

    instance-of v6, v5, Landroid/text/method/PasswordTransformationMethod;

    if-nez v6, :cond_4

    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, ""

    :cond_1
    iget-object v7, v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v7, v7, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->getSpannedTextRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v1, v7}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    const-string v6, ""

    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v8

    if-ne v8, v4, :cond_3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-interface {v6, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_3

    new-instance v13, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v14, "text_selection"

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    :cond_3
    new-instance v7, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    :cond_4
    return v4
.end method

.method private blacklist extractDefaultSmartClipData_TextureView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 3

    const-string/jumbo v0, "plain_text"

    invoke-virtual {p3, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist extractDefaultSmartClipData_ThirdPartyInterface(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 7

    const-string v0, "SmartClipDataCropperImpl"

    move-object v1, p1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v3, v4

    :cond_0
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    const-string v4, "Extracting meta data using third party interface..."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;

    invoke-direct {v4, p0, p3, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;-><init>(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Landroid/view/View;)V

    invoke-interface {p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_1

    const-string v6, "Bundle data returned immediately from third party"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    check-cast v6, Landroid/os/Bundle;

    invoke-direct {p0, p1, v6, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->updateDataElementWithBundle(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z

    return v2

    :cond_1
    const-string v6, "Null returned immediately from third party. waiting pending meta data.."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    return v0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is thrown during execute the third party smartclip interface. e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v2
.end method

.method private blacklist extractDefaultSmartClipData_YoutubePlayerView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist extractSmartClipImageData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V
    .locals 17

    move-object/from16 v1, p1

    const-string v2, "SmartClipDataCropperImpl"

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "getSmartClipImageData"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x4

    aput-object v5, v4, v9

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x5

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setSmartClipImageResultHandler"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v9, Landroid/os/Handler;

    aput-object v9, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "Extracting original image from SBrowser"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    :try_start_1
    invoke-direct {v4, v5, v9, v3, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;-><init>(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Ljava/lang/reflect/Method;Landroid/view/View;)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-array v8, v8, [I

    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v11, v8, v6

    neg-int v11, v11

    aget v7, v8, v7

    neg-int v7, v7

    invoke-virtual {v10, v11, v7}, Landroid/graphics/Rect;->offset(II)V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget v7, v10, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v7, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object/from16 v5, p0

    move-object/from16 v9, p3

    :goto_0
    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "Current chrome view does not support SmartClipImageData"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private blacklist filterMetaTagForBrowserViews(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SmartClipDataCropperImpl"

    if-nez v1, :cond_0

    const-string/jumbo v3, "filterMetaTagForBrowserViews : element is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getTagTable()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "null"

    :goto_1
    const-string/jumbo v7, "html"

    invoke-virtual {v4, v7}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->getMetaTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v8

    const-string/jumbo v9, "plain_text"

    invoke-virtual {v4, v9}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->getMetaTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v10

    const/4 v11, 0x1

    if-lez v8, :cond_4

    if-lez v10, :cond_4

    iget v12, v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    packed-switch v12, :pswitch_data_0

    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object v12

    goto :goto_2

    :pswitch_0
    invoke-virtual {v4, v7}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->removeMetaTags(Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "filterMetaTagForBrowserViews : Discarding HTML tag from "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-virtual {v13}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-ne v14, v11, :cond_2

    const-string/jumbo v14, "html_text"

    invoke-virtual {v13, v14}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->setType(Ljava/lang/String;)V

    :cond_2
    goto :goto_2

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "filterMetaTagForBrowserViews : The TEXT tag changed to HTML_TEXT. View="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-virtual {v12}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-ne v14, v11, :cond_6

    invoke-virtual {v12}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    const v11, 0x19000

    if-le v15, v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "filterMetaTagForBrowserViews : Have large HTML data("

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " bytes). Converting tag.."

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->allocateMetaTagFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11, v14}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "filterMetaTagForBrowserViews : Failed to save meta tag! - "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "filterMetaTagForBrowserViews : Saved the meta tag to "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const-string/jumbo v0, "file_path_html"

    invoke-virtual {v12, v0}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->setType(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->setValue(Ljava/lang/String;)V

    :cond_6
    const/4 v11, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v3, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v3

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getChildViewsByZOrder(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getZ()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v6, v3

    :goto_1
    if-lez v6, :cond_1

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getZ()F

    move-result v7

    cmpl-float v7, v7, v5

    if-lez v7, :cond_1

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const-string/jumbo v3, "getChildViewsByZOrder : Z order detected"

    const-string v4, "SmartClipDataCropperImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getChildViewsByZOrder : Parent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / View="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / Z="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getZ()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method private blacklist getMainResultFromExtractionResult(I)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private blacklist getOpaqueBackgroundRect(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Landroid/graphics/Rect;
    .locals 7

    move-object v0, p1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v1, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getOpaqueBackgroundRect : opaqueRect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  element="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmartClipDataCropperImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private blacklist getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "extractSmartClipData"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Handler;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method private blacklist getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private blacklist getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mUseViewPositionCache:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/graphics/Point;

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mUseViewPositionCache:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private blacklist isSupportThirdPartyExtractionInterface(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_2

    move v0, v2

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method private blacklist isThirdPartyExtractionInterfaceEnabledOnManifest(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "SmartClipDataCropperImpl"

    if-nez v1, :cond_0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSupportThirdPartyExtractionInterface : Could not get appInfo! - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    const-string v4, "com.samsung.android.smartclip.support_custom_smartclip_metaextraction"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move v0, v4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    const-string/jumbo v4, "isSupportThirdPartyExtractionInterface : Feature enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method private blacklist removeSmartClipDataElementByRect(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getLastChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    move-object v1, v0

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->removeSmartClipDataElementByRect(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->removeChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    return v4

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {p2, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeSmartClipDataElementByRect : Removing element due to RECT intersection. element = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v2, v4}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmartClipDataCropperImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->removeChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    return v4

    :cond_2
    return v2
.end method

.method private blacklist traverseView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-eqz v1, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_12

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11

    new-instance v6, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-direct {v6, v3, v1, v5}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->semGetSmartClipTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->getCopy()Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTagTable(Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->semGetSmartClipDataExtractionListener()Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

    move-result-object v9

    const/4 v10, 0x0

    iget-boolean v11, v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSupportThirdPartyExtractionInterface:Z

    if-ne v11, v7, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->isSupportThirdPartyExtractionInterface(Landroid/view/View;)Z

    move-result v11

    if-ne v11, v7, :cond_1

    invoke-direct {v0, v1, v2, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_ThirdPartyInterface(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v10

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9, v1, v2, v6}, Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;->onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    move-result v10

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2, v6}, Landroid/view/View;->semExtractSmartClipData(Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    move-result v10

    :goto_0
    move-object v11, v6

    :goto_1
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    invoke-virtual {v11, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v11

    goto :goto_1

    :cond_3
    invoke-direct {v0, v10}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getMainResultFromExtractionResult(I)I

    move-result v12

    const-string v13, "SmartClipDataCropperImpl"

    packed-switch v12, :pswitch_data_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown main extraction result value : "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " / View = "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    goto :goto_2

    :pswitch_0
    iget-object v14, v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_2

    :pswitch_1
    goto :goto_2

    :pswitch_2
    invoke-virtual {v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    nop

    :goto_2
    and-int/lit16 v7, v10, 0x100

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    instance-of v15, v1, Landroid/view/ViewGroup;

    if-eqz v15, :cond_7

    if-nez v7, :cond_7

    move-object v15, v1

    check-cast v15, Landroid/view/ViewGroup;

    invoke-direct {v0, v15}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getChildViewsByZOrder(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v16, 0x0

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    :goto_4
    if-ge v4, v14, :cond_6

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    check-cast v5, Landroid/view/View;

    move/from16 v17, v7

    invoke-direct {v0, v5, v2, v3, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->traverseView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z

    move-result v7

    const/4 v2, 0x1

    if-ne v7, v2, :cond_5

    const/4 v2, 0x1

    move/from16 v16, v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p2

    move/from16 v7, v17

    move-object/from16 v5, v18

    goto :goto_4

    :cond_6
    move-object/from16 v18, v5

    move/from16 v17, v7

    move/from16 v4, v16

    goto :goto_5

    :cond_7
    move-object/from16 v18, v5

    move/from16 v17, v7

    :goto_5
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v2, 0x1

    move v4, v2

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v5

    if-nez v5, :cond_a

    sget-boolean v5, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    const-string/jumbo v7, "traverseView : Contains meta data : "

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6, v2, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_6
    const/4 v2, 0x1

    if-ne v4, v2, :cond_10

    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-nez v2, :cond_b

    instance-of v2, v1, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_f

    :cond_b
    invoke-virtual {v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getLastChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    const/4 v5, 0x0

    :goto_7
    if-eqz v2, :cond_f

    const/4 v7, 0x0

    move-object v13, v2

    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    if-eqz v5, :cond_c

    invoke-direct {v0, v13, v5}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->removeSmartClipDataElementByRect(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z

    move-result v7

    :cond_c
    if-nez v7, :cond_e

    invoke-direct {v0, v13}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getOpaqueBackgroundRect(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Landroid/graphics/Rect;

    move-result-object v14

    if-eqz v14, :cond_e

    if-nez v5, :cond_d

    move-object v5, v14

    goto :goto_8

    :cond_d
    invoke-virtual {v5, v14}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_e
    :goto_8
    goto :goto_7

    :cond_f
    move-object/from16 v2, p4

    invoke-virtual {v2, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    goto :goto_9

    :cond_10
    move-object/from16 v2, p4

    goto :goto_9

    :cond_11
    move-object/from16 v2, p4

    move-object/from16 v18, v5

    goto :goto_9

    :cond_12
    move-object/from16 v2, p4

    :goto_9
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    new-instance v6, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-direct {v6, v3, v1, v5}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->semGetSmartClipDataExtractionListener()Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

    move-result-object v10

    if-eqz v10, :cond_0

    instance-of v11, v1, Landroid/view/SurfaceView;

    if-ne v11, v7, :cond_0

    const/4 v9, 0x1

    :cond_0
    if-ne v9, v7, :cond_1

    invoke-interface {v10, v1, v2, v6}, Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;->onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    move-result v8

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2, v6}, Landroid/view/View;->semExtractSmartClipData(Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    move-result v8

    :goto_0
    move-object v11, v6

    :goto_1
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    invoke-virtual {v11, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v11

    goto :goto_1

    :cond_2
    invoke-direct {v0, v8}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getMainResultFromExtractionResult(I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown main extraction result value : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / View = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "SmartClipDataCropperImpl"

    invoke-static {v15, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    goto :goto_2

    :pswitch_0
    iget-object v13, v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_2

    :pswitch_1
    goto :goto_2

    :pswitch_2
    invoke-virtual {v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    nop

    :goto_2
    and-int/lit16 v13, v8, 0x100

    if-eqz v13, :cond_3

    move v13, v7

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    instance-of v14, v1, Landroid/view/ViewGroup;

    if-eqz v14, :cond_6

    if-nez v13, :cond_6

    move-object v14, v1

    check-cast v14, Landroid/view/ViewGroup;

    invoke-direct {v0, v14}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getChildViewsByZOrder(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v16, v15, -0x1

    move/from16 v7, v16

    :goto_4
    if-ltz v7, :cond_5

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroid/view/View;

    move/from16 v16, v4

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z

    move-result v4

    const/4 v0, 0x1

    if-ne v4, v0, :cond_4

    const/4 v0, 0x1

    move v4, v0

    goto :goto_6

    :cond_4
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, v16

    goto :goto_4

    :cond_5
    move/from16 v16, v4

    goto :goto_5

    :cond_6
    move/from16 v16, v4

    :goto_5
    move/from16 v4, v16

    :goto_6
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    move v4, v1

    :cond_7
    if-ne v4, v0, :cond_8

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    goto :goto_7

    :cond_8
    move-object/from16 v0, p4

    goto :goto_7

    :cond_9
    move-object/from16 v0, p4

    goto :goto_7

    :cond_a
    move-object/from16 v0, p4

    :goto_7
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist updateDataElementWithBundle(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z
    .locals 9

    const/4 v0, 0x0

    const-string/jumbo v1, "title"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_link"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "rect"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    sget-boolean v7, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const-string/jumbo v7, "fillDataElementWithBundle : Title:%s\nLink:%s\nURL:%s\nArea:%s"

    filled-new-array {v2, v5, v4, v6}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SmartClipDataCropperImpl"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-direct {v7, v1, v2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v7}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    const/4 v0, 0x1

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    const/4 v0, 0x1

    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string v3, "app_deep_link"

    invoke-direct {v1, v3, v5}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    const/4 v0, 0x1

    :cond_3
    if-eqz v6, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    invoke-virtual {p3, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private blacklist writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string/jumbo v0, "writeStringToFile : File close failed! "

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeStringToFile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmartClipDataCropperImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v5

    const-string v5, "UTF-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_3

    :catch_1
    move-exception v5

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeStringToFile : File write failed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    :goto_2
    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2, v0, v5}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set writable permission for file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :goto_3
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_2
    :goto_4
    throw v5
.end method


# virtual methods
.method protected blacklist addAppMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    const-string v1, "SmartClipDataCropperImpl"

    if-nez v0, :cond_0

    const-string v0, "addAppMetaTag : mContext is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAppMetaTag : package name is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    const-string v1, "app_launch_info"

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    return-void
.end method

.method public blacklist doExtractSmartClipData(Landroid/view/View;)Z
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    const/4 v1, 0x0

    const-string v2, "SmartClipDataCropperImpl"

    if-nez v0, :cond_0

    const-string v0, "doExtractSmartClipData : extractionRequest is null!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionStartTime:J

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipCroppedAreaImpl;

    iget-object v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget-object v3, v3, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Lcom/samsung/android/content/smartclip/SmartClipCroppedAreaImpl;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipCroppedAreaImpl;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v4, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doExtractSmartClipData : Extraction start! reqId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  Cropped area = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  Package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    new-instance v5, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    iget v8, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPenWindowBorderWidth:I

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V

    iput-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-virtual {v5}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getRootElement()Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-direct {p0, p1, v0, v6, v5}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->traverseView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-direct {p0, p1, v0, v6, v5}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0, v5}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->addAppMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)V

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    iget-object v7, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->setAppPackageName(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->determineContentType()Z

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService()Z

    :cond_4
    return v2
.end method

.method public blacklist extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "SmartClipDataCropperImpl"

    if-nez p3, :cond_0

    const-string v2, "extractDefaultSmartClipData : The result element is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p2, :cond_1

    const-string v2, "extractDefaultSmartClipData : The cropped area is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    const-string v4, "com.google.android.youtube"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "PlayerView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_YoutubePlayerView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v0

    return v0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v0, :cond_3

    const-string v3, "extractDefaultSmartClipData : Has chrome view"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v0

    return v0

    :cond_3
    const-string/jumbo v1, "org.chromium.content.browser.JellyBeanContentView"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v0

    return v0

    :cond_4
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_TextView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v0

    return v0

    :cond_5
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_ImageView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v0

    return v0

    :cond_6
    instance-of v1, p1, Landroid/view/TextureView;

    if-eqz v1, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_TextureView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_7
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassCastException in traverseView : target class is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method protected blacklist findElementIndexFromPendingList(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getExtractionLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    return v0
.end method

.method public blacklist getExtractionMode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v0, v0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist getParentList(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewParent;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public blacklist getSmartClipDataRepository()Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    return-object v0
.end method

.method protected blacklist sendExtractionResultToSmartClipService()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SmartClipDataCropperImpl"

    if-lez v0, :cond_0

    const-string v0, "Cannot send the extraction result due to it still have pending element!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)Z

    move-result v0

    return v0

    :cond_1
    const-string v0, "Cannot send the extraction result due to it is NULL!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist sendExtractionResultToSmartClipService(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)Z
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    const-string v1, "SmartClipDataCropperImpl"

    if-nez v0, :cond_0

    const-string/jumbo v0, "sendExtractionResultToSmartClipService : extractionRequest is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v0, v0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getRootElement()Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-direct {p0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->filterMetaTagForBrowserViews(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v0, "sendExtractionResultToSmartClipService : -- Extracted SmartClip data information --"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendExtractionResultToSmartClipService : Request Id : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v2, v2, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendExtractionResultToSmartClipService : Extraction mode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v2, v2, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->dump(Z)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "sendExtractionResultToSmartClipService : The repository is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "spengestureservice"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    new-instance v2, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;

    iget-object v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v3, v3, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v4, v4, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    invoke-direct {v2, v3, v4, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;-><init>(IILcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v3, v3, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v3, v3, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    invoke-virtual {p1, v3}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->setWindowLayer(I)V

    :cond_3
    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v5, v5, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    invoke-direct {v4, v5, v3, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;-><init>(IILandroid/os/Parcelable;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendExtractionResultToSmartClipService : Failed to send the result! e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "sendExtractionResultToSmartClipService : Send empty response..."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    const/4 v7, 0x0

    invoke-direct {v5, v6, v3, v7}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;-><init>(IILandroid/os/Parcelable;)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendExtractionResultToSmartClipService : Elapsed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionStartTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public blacklist setPendingExtractionResult(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z
    .locals 7

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->findElementIndexFromPendingList(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-virtual {v2, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    const-string/jumbo v5, "setPendingExtractionResult : Contains meta data : "

    const-string v6, "SmartClipDataCropperImpl"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v1, v4}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v1, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->determineContentType()Z

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService()Z

    :cond_2
    return v4

    :cond_3
    return v1
.end method
