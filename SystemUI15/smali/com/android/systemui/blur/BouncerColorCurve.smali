.class public final Lcom/android/systemui/blur/BouncerColorCurve;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static mDarkGrayishAttrList:[F

.field public static mThickLightAttrList:[F


# instance fields
.field public mCurve:F

.field public mFraction:F

.field public mMaxX:F

.field public mMaxY:F

.field public mMinX:F

.field public mMinY:F

.field public mRadius:F

.field public mSaturation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v1, v0, [F

    sput-object v1, Lcom/android/systemui/blur/BouncerColorCurve;->mThickLightAttrList:[F

    new-array v0, v0, [F

    sput-object v0, Lcom/android/systemui/blur/BouncerColorCurve;->mDarkGrayishAttrList:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mRadius:F

    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mSaturation:F

    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mCurve:F

    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMinX:F

    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxX:F

    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMinY:F

    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxY:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mFraction:F

    new-instance p0, Landroid/view/SemBlurInfo$Builder;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x67

    invoke-static {p0}, Landroid/view/SemBlurInfo$Builder;->getBlurPresetAttrs(I)[F

    move-result-object p0

    sput-object p0, Lcom/android/systemui/blur/BouncerColorCurve;->mThickLightAttrList:[F

    const/16 p0, 0x7a

    invoke-static {p0}, Landroid/view/SemBlurInfo$Builder;->getBlurPresetAttrs(I)[F

    move-result-object p0

    sput-object p0, Lcom/android/systemui/blur/BouncerColorCurve;->mDarkGrayishAttrList:[F

    goto :goto_0

    :cond_0
    const/16 p0, 0x6a

    invoke-static {p0}, Landroid/view/SemBlurInfo$Builder;->getBlurPresetAttrs(I)[F

    move-result-object p0

    sput-object p0, Lcom/android/systemui/blur/BouncerColorCurve;->mThickLightAttrList:[F

    const/16 p0, 0x7c

    invoke-static {p0}, Landroid/view/SemBlurInfo$Builder;->getBlurPresetAttrs(I)[F

    move-result-object p0

    sput-object p0, Lcom/android/systemui/blur/BouncerColorCurve;->mDarkGrayishAttrList:[F

    :goto_0
    return-void
.end method


# virtual methods
.method public final setFraction(FZ)V
    .locals 2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/systemui/blur/BouncerColorCurve;->mThickLightAttrList:[F

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/systemui/blur/BouncerColorCurve;->mDarkGrayishAttrList:[F

    :goto_0
    iput p1, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mFraction:F

    const/4 v0, 0x0

    aget v0, p2, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mRadius:F

    const/4 v0, 0x1

    aget v0, p2, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mSaturation:F

    const/4 v0, 0x2

    aget v0, p2, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mCurve:F

    const/4 v0, 0x3

    aget v0, p2, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMinX:F

    const/4 v0, 0x5

    aget v0, p2, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMinY:F

    const/4 v0, 0x4

    aget v0, p2, v0

    const/high16 v1, 0x437f0000    # 255.0f

    sub-float v0, v1, v0

    mul-float/2addr v0, p1

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxX:F

    const/4 v0, 0x6

    aget p2, p2, v0

    sub-float p2, v1, p2

    mul-float/2addr p2, p1

    sub-float/2addr v1, p2

    iput v1, p0, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxY:F

    return-void
.end method
