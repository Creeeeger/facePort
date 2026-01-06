.class public Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;
.super Landroid/view/View;
.source "FaceRegisterEffectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;
    }
.end annotation


# static fields
.field private static final ALPHA_GREEN_MASK:I = 0x39

.field private static final CHECK_ICON_MOVING_DP:F = 3.0f

.field private static final COLOR_SCAN_LINE:I = -0x1

.field private static final COLOR_TRACE_LINE:I = -0x2f1f30

.field private static final DURATION_COMPLETED_CHECK_ICON_MS:J = 0x190L

.field private static final DURATION_COMPLETED_LINE_MS:J = 0x258L

.field private static final DURATION_COMPLETED_LINE_SCALE_MS:J = 0x96L

.field private static final DURATION_ERROR_STEP1_MS:J = 0x1c2L

.field private static final DURATION_ERROR_STEP2_MS:J = 0x96L

.field private static final DURATION_ERROR_STEP3_MS:J = 0x3e8L

.field private static final DURATION_GREEN_MASK_MS:J = 0x96L

.field private static final DURATION_PREVIEW_STARTING_MS:J = 0xfaL

.field private static final DURATION_SCAN_MS:J = 0x708L

.field private static final DURATION_STARTING_INNER_GUIDE_MS:J = 0x190L

.field private static final DURATION_STARTING_MS:J = 0x578L

.field private static final DURATION_STARTING_PROGRESS_BASE_MS:J = 0x258L

.field private static final INTP_CHECK_ICON_MOVING:Landroid/view/animation/PathInterpolator;

.field private static final INTP_COMPLETED_LINE_MOVING:Landroid/view/animation/PathInterpolator;

.field private static final INTP_COMPLETED_LINE_SCALE:Landroid/view/animation/PathInterpolator;

.field private static final INTP_COMPLETED_ROTATION:Landroid/view/animation/PathInterpolator;

.field private static final INTP_ERROR_MOVING:Landroid/view/animation/PathInterpolator;

.field private static final INTP_ERROR_STARTING:Landroid/view/animation/PathInterpolator;

.field private static final INTP_STARTING_ANIMATION:Landroid/view/animation/PathInterpolator;

.field private static final PROGRESS_LINE_THICKNESS:F = 0.05f

.field private static final SCAN_LINE_ANGLE_RANGE:I = 0x32

.field private static final STATE_COMPLETED:I = 0x3

.field private static final STATE_DONE:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_PROGRESS:I = 0x2

.field private static final STATE_STARTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BSS_FaceRegisterEffectView"

.field private static final TRACE_LINE_NUM:I = 0x32

.field private static final WIDTH_INNER_GUIDE_LINE_PERCENT:F = 0.5f

.field private static final WIDTH_PROGRESS_LINE_PERCENT:F = 2.5f

.field private static final WIDTH_SCAN_LINE_PERCENT:F = 1.5f

.field private static final WIDTH_TRACE_LINE_PERCENT:F = 3.0f

.field private static final WIDTH_ZOOM_MARGIN_RATIO:F = 0.1f


# instance fields
.field private final COLOR_BACKGROUND:I

.field private final COLOR_CHECK_ICON:I

.field private final COLOR_GREEN_MASK:I

.field private final COLOR_INNER_GUIDE_LINE:I

.field private final COLOR_PREVIEW_MASK:I

.field private final COLOR_PROGRESS_BASE_LINE:I

.field private final COLOR_PROGRESS_LINE:I

.field private final WIDTH_ERROR_PREVIEW_AREA_PERCENT:F

.field private final WIDTH_INNER_CIRCLE_AREA_PERCENT:F

.field private mCheckIconMoveDp:F

.field private mCompletionTimestamp:J

.field private mErrorState:I

.field private mErrorTimestamp:J

.field private mIsErrorFinished:Z

.field private mIsErrorStarted:Z

.field private mIsPreviewMask:Z

.field private mIsPreviewStarting:Z

.field private mIsScanning:Z

.field private final mPath:Landroid/graphics/Path;

.field private final mPathCheckIcon:Landroid/graphics/Path;

.field private final mPntBackground:Landroid/graphics/Paint;

.field private final mPntCheckIcon:Landroid/graphics/Paint;

.field private final mPntGreenMask:Landroid/graphics/Paint;

.field private final mPntInnerCircle:Landroid/graphics/Paint;

.field private final mPntPreviewMask:Landroid/graphics/Paint;

.field private final mPntProgressBaseLine:Landroid/graphics/Paint;

.field private final mPntProgressLine:Landroid/graphics/Paint;

.field private final mPntScanLine:Landroid/graphics/Paint;

.field private final mPntTraceLine:Landroid/graphics/Paint;

.field private mPreviewExpandSize:F

.field private mPreviewMaskTimestamp:J

.field private mProgress:F

.field private final mRotateMatrix:Landroid/graphics/Matrix;

.field private final mScanPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mScanStartTimestamp:J

.field private mStartingTimestamp:J

.field private mState:I

.field private mStrokeWidth:F

.field private mTargetPreviewExpandSize:F

.field private mTargetProgress:F

.field private final mTracePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_STARTING_ANIMATION:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ee66666    # 0.45f

    const v6, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v5, v3, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_COMPLETED_LINE_SCALE:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_COMPLETED_LINE_MOVING:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f68f5c3    # 0.91f

    const v5, 0x3e570a3d    # 0.21f

    invoke-direct {v0, v3, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_COMPLETED_ROTATION:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e2e147b    # 0.17f

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_CHECK_ICON_MOVING:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_ERROR_STARTING:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_ERROR_MOVING:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBackground:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntInnerCircle:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressBaseLine:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntGreenMask:Landroid/graphics/Paint;

    const-string v2, "M42,11l-20.3383,21l-13.6617,-14.1065"

    invoke-static {v2}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPathCheckIcon:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntCheckIcon:Landroid/graphics/Paint;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStartingTimestamp:J

    iput-wide v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewMaskTimestamp:J

    iput-wide v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    iput-wide v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCompletionTimestamp:J

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetProgress:F

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewExpandSize:F

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetPreviewExpandSize:F

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCheckIconMoveDp:F

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewMask:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewStarting:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorState:I

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorFinished:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntScanLine:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntTraceLine:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanPathList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTracePathList:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    iput-wide v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanStartTimestamp:J

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->WIDTH_INNER_CIRCLE_AREA_PERCENT:F

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->WIDTH_ERROR_PREVIEW_AREA_PERCENT:F

    const v0, 0x7f060075

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_BACKGROUND:I

    const v0, 0x7f060061

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_PREVIEW_MASK:I

    const v0, 0x7f060060

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_INNER_GUIDE_LINE:I

    const v0, 0x7f06005c

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_PROGRESS_BASE_LINE:I

    const v0, 0x7f06005d

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_PROGRESS_LINE:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_GREEN_MASK:I

    const v0, 0x7f060058

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_CHECK_ICON:I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->initializeGuide(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->initializeScan(II)V

    return-void
.end method

.method private changeState()V
    .locals 10

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStartingTimestamp:J

    const-wide/16 v6, 0x578

    const/4 v8, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getTimePos(JJI)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->startScanEffect()V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewStarting:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->setPreviewState()V

    :cond_0
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCompletionTimestamp:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorState:I

    if-nez v0, :cond_2

    iget-wide v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1c2

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    iput-wide v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorState:I

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    iget-wide v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v1, v6, v8

    if-lez v1, :cond_3

    iput-wide v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorState:I

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_5

    iget-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    sub-long v6, v4, v0

    const-wide/16 v8, 0x3e8

    cmp-long v2, v6, v8

    if-lez v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorFinished:Z

    if-eqz v2, :cond_4

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanStartTimestamp:J

    goto :goto_0

    :cond_4
    sub-long v2, v4, v0

    const-wide/16 v6, 0x7d0

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    :cond_5
    :goto_0
    return-void
.end method

.method private checkRedraw()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->invalidate()V

    :cond_1
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;FF)V
    .locals 8

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewExpandSize:F

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetPreviewExpandSize:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewExpandSize:F

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetPreviewExpandSize:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const v3, -0x445c28f6    # -0.005f

    goto :goto_0

    :cond_0
    const v3, 0x3ba3d70a    # 0.005f

    :goto_0
    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewExpandSize:F

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetPreviewExpandSize:F

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewExpandSize:F

    :goto_1
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_JDM_HAL:Z

    if-eqz v2, :cond_2

    const v2, -0x42b33333    # -0.05f

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewExpandSize:F

    :cond_2
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewExpandSize:F

    mul-float/2addr v2, v0

    add-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBackground:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawCompletedEffect(Landroid/graphics/Canvas;FF)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawCompletedLine(Landroid/graphics/Canvas;FF)Z

    move-result v0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawCompletedGreenMask(Landroid/graphics/Canvas;FF)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawCompletedSymbol(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    :cond_1
    return-void
.end method

.method private drawCompletedGreenMask(Landroid/graphics/Canvas;FF)Z
    .locals 8

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-wide v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCompletionTimestamp:J

    const-wide/16 v5, 0x96

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getTimePos(JJI)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntGreenMask:Landroid/graphics/Paint;

    const/high16 v4, 0x42640000    # 57.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    div-float v3, p2, v1

    div-float v1, p3, v1

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntGreenMask:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private drawCompletedLine(Landroid/graphics/Canvas;FF)Z
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-wide v1, v6, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCompletionTimestamp:J

    const-wide/16 v3, 0x258

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getTimePos(JJI)F

    move-result v8

    sget-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_COMPLETED_LINE_MOVING:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v9

    iget-wide v1, v6, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCompletionTimestamp:J

    const-wide/16 v3, 0x96

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getTimePos(JJI)F

    move-result v0

    sget-object v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_COMPLETED_LINE_SCALE:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float v3, p2, v2

    mul-float/2addr v3, v1

    mul-float v2, v2, p3

    mul-float/2addr v2, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    neg-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    neg-float v10, v2

    div-float/2addr v10, v5

    invoke-virtual {v7, v4, v10}, Landroid/graphics/Canvas;->translate(FF)V

    add-float v4, p2, v3

    add-float v16, p3, v2

    mul-float v15, v9, v4

    sub-float v14, v4, v15

    sget-object v10, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_COMPLETED_ROTATION:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v10, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v10

    const/high16 v11, 0x42f00000    # 120.0f

    mul-float/2addr v10, v11

    const/high16 v11, 0x42700000    # 60.0f

    sub-float v13, v10, v11

    iget-object v10, v6, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    div-float v11, v4, v5

    div-float v5, v16, v5

    invoke-virtual {v10, v13, v11, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v5, v6, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v10, v6, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v12, 0x0

    move/from16 v18, v13

    move v13, v5

    move v5, v14

    move/from16 v14, v16

    move/from16 v19, v15

    move-object/from16 v15, v17

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v10, v6, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    iget-object v11, v6, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v10, v6, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    iget-object v11, v6, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v10, v8, v10

    if-gez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    return v10
.end method

.method private drawCompletedSymbol(Landroid/graphics/Canvas;)Z
    .locals 6

    iget-wide v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCompletionTimestamp:J

    const-wide/16 v3, 0x190

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getTimePos(JJI)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCheckIconMoveDp:F

    sget-object v2, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_CHECK_ICON_MOVING:Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    if-lez v3, :cond_0

    sub-float v3, v4, v0

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPathCheckIcon:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntCheckIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    cmpg-float v2, v0, v4

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private drawInnerGuideLine(Landroid/graphics/Canvas;FF)V
    .locals 8

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    const/16 v3, 0xff

    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    if-ne v4, v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStartingTimestamp:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x190

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2

    const/high16 v1, 0x437f0000    # 255.0f

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-float v6, v6

    mul-float/2addr v6, v1

    const/high16 v1, 0x43c80000    # 400.0f

    div-float/2addr v6, v1

    float-to-int v3, v6

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntInnerCircle:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    div-float v1, p2, v2

    div-float v2, p3, v2

    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->WIDTH_INNER_CIRCLE_AREA_PERCENT:F

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntInnerCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPreviewMask(Landroid/graphics/Canvas;FF)V
    .locals 11

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewMask:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewStarting:Z

    if-eqz v2, :cond_5

    :cond_0
    const/16 v2, 0xff

    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_JDM_HAL:Z

    if-eqz v3, :cond_1

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v0

    sub-float/2addr v0, v3

    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewMask:Z

    const-wide/16 v4, 0x0

    const/high16 v6, 0x437f0000    # 255.0f

    if-eqz v3, :cond_3

    div-float v3, p2, v1

    div-float v7, p3, v1

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v0, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStartingTimestamp:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x190

    cmp-long v3, v7, v9

    if-gtz v3, :cond_2

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v3, v6

    const/high16 v4, 0x43c80000    # 400.0f

    div-float/2addr v3, v4

    float-to-int v2, v3

    :cond_2
    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewMaskTimestamp:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0xfa

    cmp-long v3, v7, v9

    if-gtz v3, :cond_4

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v3, v6

    const/high16 v4, 0x437a0000    # 250.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    rsub-int v2, v3, 0xff

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewStarting:Z

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    div-float v3, p2, v1

    div-float v1, p3, v1

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method private drawProgressBaseLine(Landroid/graphics/Canvas;FF)V
    .locals 11

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/16 v2, 0xff

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStartingTimestamp:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x258

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    long-to-float v7, v3

    long-to-float v8, v5

    div-float/2addr v7, v8

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v0

    sget-object v9, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_STARTING_ANIMATION:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v7}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v9

    mul-float/2addr v9, v0

    const v10, 0x3f3d70a4    # 0.74f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v0, v8

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x2

    mul-long/2addr v7, v5

    cmp-long v7, v3, v7

    if-gez v7, :cond_2

    sub-long v7, v3, v5

    long-to-float v7, v7

    long-to-float v8, v5

    div-float/2addr v7, v8

    const v8, 0x3f851eb8    # 1.04f

    mul-float/2addr v8, v0

    sget-object v9, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_STARTING_ANIMATION:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v7}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v9

    mul-float/2addr v9, v0

    const v10, 0x3d23d70a    # 0.04f

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move v0, v8

    :cond_2
    :goto_0
    const-wide/16 v7, 0x64

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-float v7, v7

    const v8, 0x40233333    # 2.55f

    mul-float/2addr v7, v8

    float-to-int v2, v7

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressBaseLine:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getErrorSizeDiff(F)F

    move-result v3

    add-float/2addr v0, v3

    div-float v3, p2, v1

    div-float v1, p3, v1

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressBaseLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private drawProgressLine(Landroid/graphics/Canvas;FF)V
    .locals 15

    move-object v0, p0

    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetProgress:F

    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    const v3, 0x3e4ccccd    # 0.2f

    if-gez v2, :cond_1

    const v2, -0x41b33333    # -0.2f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_0
    move v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetProgress:F

    goto :goto_1

    :cond_2
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    add-float/2addr v2, v1

    :goto_1
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    const/high16 v12, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-direct {p0, v13}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getErrorSizeDiff(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v14, v3, v4

    neg-float v4, v14

    neg-float v5, v14

    add-float v6, p2, v14

    add-float v7, p3, v14

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v8, v12

    move v9, v2

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private drawScanLine(Landroid/graphics/Canvas;FF)V
    .locals 9

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTracePathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->WIDTH_INNER_CIRCLE_AREA_PERCENT:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v3

    mul-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v3

    mul-float/2addr v4, v2

    div-float/2addr v4, v6

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTracePathList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-wide v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanStartTimestamp:J

    sub-long v4, v0, v4

    int-to-long v6, v3

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x708

    div-long/2addr v4, v6

    long-to-int v4, v4

    rem-int/2addr v4, v3

    const/16 v5, 0x32

    move v6, v4

    :goto_0
    add-int/lit8 v7, v4, -0x32

    if-lt v6, v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntTraceLine:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    if-ltz v6, :cond_2

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTracePathList:Ljava/util/ArrayList;

    add-int v8, v6, v3

    rem-int/2addr v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntTraceLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanPathList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntScanLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Path is not ready ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanPathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTracePathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_FaceRegisterEffectView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private getErrorSizeDiff(F)F
    .locals 14

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorState:I

    const-wide/16 v2, 0x0

    const v4, 0x3d4ccccd    # 0.05f

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1c2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    sub-long/2addr v5, v7

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sget-object v2, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_ERROR_STARTING:Landroid/view/animation/PathInterpolator;

    long-to-float v3, v0

    const/high16 v5, 0x43e10000    # 450.0f

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float v3, v2, p1

    mul-float/2addr v3, v4

    return v3

    :cond_1
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    mul-float/2addr v4, p1

    return v4

    :cond_2
    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    const-wide/16 v0, 0x3e8

    const-wide/16 v5, 0x2

    mul-long/2addr v5, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    sub-long/2addr v7, v9

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    div-long v5, v2, v0

    long-to-int v5, v5

    rem-long v6, v2, v0

    rem-int/lit8 v8, v5, 0x2

    if-nez v8, :cond_3

    move-wide v8, v6

    goto :goto_0

    :cond_3
    sub-long v8, v0, v6

    :goto_0
    const/high16 v10, 0x3f800000    # 1.0f

    sget-object v11, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_ERROR_MOVING:Landroid/view/animation/PathInterpolator;

    long-to-float v12, v8

    long-to-float v13, v0

    div-float/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v11, v10, p1

    mul-float/2addr v11, v4

    return v11

    :cond_4
    return v1
.end method

.method private getTimePos(JJI)F
    .locals 3

    int-to-float v0, p5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    long-to-float v1, v1

    long-to-float v2, p3

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private initializeGuide(II)V
    .locals 9

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    int-to-float v1, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBackground:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_BACKGROUND:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBackground:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_PREVIEW_MASK:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntInnerCircle:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_INNER_GUIDE_LINE:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntInnerCircle:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntInnerCircle:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressBaseLine:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_PROGRESS_BASE_LINE:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressBaseLine:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressBaseLine:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressBaseLine:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v5, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_PROGRESS_LINE:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntGreenMask:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_GREEN_MASK:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntCheckIcon:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v5, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntCheckIcon:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_CHECK_ICON:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntCheckIcon:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntCheckIcon:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntCheckIcon:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCheckIconMoveDp:F

    int-to-float v3, p1

    const v5, 0x3f428f5c    # 0.76f

    div-float/2addr v3, v5

    const v5, 0x3e8f5c29    # 0.28f

    mul-float/2addr v3, v5

    const/high16 v5, 0x42340000    # 45.0f

    div-float v5, v3, v5

    div-int/lit8 v6, p1, 0x2

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, v3, v7

    div-float/2addr v8, v4

    sub-float/2addr v6, v8

    div-int/lit8 v8, p2, 0x2

    int-to-float v8, v8

    mul-float/2addr v7, v3

    div-float/2addr v7, v4

    sub-float/2addr v8, v7

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPathCheckIcon:Landroid/graphics/Path;

    invoke-virtual {v7, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private initializeScan(II)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-float v2, v1

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    sub-float/2addr v2, v4

    iget v5, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->WIDTH_INNER_CIRCLE_AREA_PERCENT:F

    mul-float/2addr v2, v5

    float-to-int v1, v2

    move/from16 v2, p2

    int-to-float v6, v2

    mul-float/2addr v6, v3

    sub-float/2addr v6, v4

    mul-float/2addr v6, v5

    float-to-int v2, v6

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntScanLine:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntScanLine:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntTraceLine:Landroid/graphics/Paint;

    const v4, -0x2f1f30

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ee66666    # 0.45f

    const/4 v5, 0x0

    const v7, 0x3f0ccccd    # 0.55f

    invoke-direct {v3, v4, v5, v7, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    int-to-float v4, v1

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v6, v1

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    div-float/2addr v6, v5

    float-to-int v5, v6

    div-int/lit8 v6, v5, 0x5

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v8, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    int-to-float v10, v2

    div-float/2addr v10, v9

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {v7, v9, v8, v10}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_0
    add-int v13, v1, v5

    if-ge v12, v13, :cond_0

    new-instance v13, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;

    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-direct {v13, v3, v14, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;-><init>(Landroid/view/animation/PathInterpolator;II)V

    new-instance v14, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;

    sub-int v15, v12, v4

    move/from16 p1, v4

    const/4 v4, 0x0

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-direct {v14, v3, v15, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;-><init>(Landroid/view/animation/PathInterpolator;II)V

    new-instance v15, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;

    sub-int v0, v12, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v15, v3, v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;-><init>(Landroid/view/animation/PathInterpolator;II)V

    move-object v0, v15

    mul-int/lit8 v4, v12, 0x32

    int-to-float v4, v4

    add-int v15, v1, v5

    int-to-float v15, v15

    div-float/2addr v4, v15

    const/high16 v15, 0x41c80000    # 25.0f

    sub-float/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    move/from16 v24, v1

    invoke-static {v13}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->access$200(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)I

    move-result v1

    int-to-float v1, v1

    const/16 v18, 0x0

    move-object/from16 p2, v3

    invoke-static {v13}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->access$300(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)I

    move-result v3

    int-to-float v3, v3

    move/from16 v25, v5

    int-to-float v5, v2

    invoke-static {v13}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->access$400(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)F

    move-result v16

    add-float v21, v16, v4

    const/high16 v22, 0x43340000    # 180.0f

    const/16 v23, 0x0

    move-object/from16 v16, v15

    move/from16 v17, v1

    move/from16 v19, v3

    move/from16 v20, v5

    invoke-virtual/range {v16 .. v23}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    invoke-static {v14}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->access$200(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v14}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->access$300(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, v2

    invoke-static {v14}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->access$400(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)F

    move-result v16

    add-float v16, v16, v4

    const/high16 v26, 0x43340000    # 180.0f

    add-float v21, v16, v26

    const/high16 v22, -0x3ccc0000    # -180.0f

    move-object/from16 v16, v15

    move/from16 v17, v1

    move/from16 v19, v3

    move/from16 v20, v5

    invoke-virtual/range {v16 .. v23}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1, v15}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    move-object v1, v3

    invoke-static {v13}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->access$200(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)I

    move-result v3

    int-to-float v3, v3

    const/16 v17, 0x0

    invoke-static {v13}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->access$300(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v15, v2

    invoke-static {v13}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->access$400(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)F

    move-result v16

    add-float v20, v16, v4

    const/high16 v21, 0x43340000    # 180.0f

    const/16 v22, 0x0

    move/from16 v19, v15

    move-object v15, v1

    move/from16 v16, v3

    move/from16 v18, v5

    invoke-virtual/range {v15 .. v22}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->access$200(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->access$300(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v15, v2

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->access$400(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)F

    move-result v16

    add-float v16, v16, v4

    add-float v20, v16, v26

    const/high16 v21, -0x3ccc0000    # -180.0f

    move/from16 v19, v15

    move-object v15, v1

    move/from16 v16, v3

    move/from16 v18, v5

    invoke-virtual/range {v15 .. v22}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    move-object v1, v3

    invoke-virtual {v1, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v12, v6

    move-object/from16 v0, p0

    move/from16 v4, p1

    move-object/from16 v3, p2

    move/from16 v1, v24

    move/from16 v5, v25

    goto/16 :goto_0

    :cond_0
    move/from16 v24, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanPathList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanPathList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTracePathList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTracePathList:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->stopScanEffect()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getHeight()I

    move-result v1

    int-to-float v7, v1

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    if-nez v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBackground:Landroid/graphics/Paint;

    move-object v1, p1

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    sub-float v3, v0, v2

    sub-float/2addr v3, v1

    sub-float v2, v7, v2

    sub-float/2addr v2, v1

    sget-boolean v4, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_JDM_HAL:Z

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v0, v7}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawBackground(Landroid/graphics/Canvas;FF)V

    invoke-direct {p0, p1, v0, v7}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawPreviewMask(Landroid/graphics/Canvas;FF)V

    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetProgress:F

    iput v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    const/high16 v6, 0x42c80000    # 100.0f

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    add-float v6, v4, v1

    div-float/2addr v6, v5

    add-float/2addr v4, v1

    div-float/2addr v4, v5

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawCompletedEffect(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawBackground(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    add-float v6, v4, v1

    div-float/2addr v6, v5

    add-float/2addr v4, v1

    div-float/2addr v4, v5

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawPreviewMask(Landroid/graphics/Canvas;FF)V

    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawInnerGuideLine(Landroid/graphics/Canvas;FF)V

    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawProgressBaseLine(Landroid/graphics/Canvas;FF)V

    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawProgressLine(Landroid/graphics/Canvas;FF)V

    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawCompletedEffect(Landroid/graphics/Canvas;FF)V

    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawScanLine(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->changeState()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->checkRedraw()V

    return-void
.end method

.method public setErrorState()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorState:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorFinished:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->WIDTH_ERROR_PREVIEW_AREA_PERCENT:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetPreviewExpandSize:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->invalidate()V

    return-void
.end method

.method public setPreviewState()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewMask:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewStarting:Z

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewMask:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewMaskTimestamp:J

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->startScanEffect()V

    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetProgress:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    :cond_1
    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetPreviewExpandSize:F

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorFinished:Z

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->invalidate()V

    return-void
.end method

.method public showStartingAnimation()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStartingTimestamp:J

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewMask:Z

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->stopScanEffect()V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->invalidate()V

    return-void
.end method

.method public startScanEffect()V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanStartTimestamp:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FACE_HAL:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_PREVIEW_MASK:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->invalidate()V

    return-void
.end method

.method public stopScanEffect()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FACE_HAL:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_BACKGROUND:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->invalidate()V

    return-void
.end method
