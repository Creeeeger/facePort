.class public final Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

.field public final mApkResources:Landroid/content/res/Resources;

.field public final mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceDensity:F

.field public final mDeviceHeight:F

.field public final mDeviceWidth:F

.field public mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

.field public mImageViewHeight:I

.field public mImageViewWidth:I

.field public mIsScaled:Z

.field public mIsStartTag:Z

.field public mIsWallpaper:Z

.field public final mMetricsHeight:I

.field public final mMetricsWidth:I

.field public mPackageHeight:F

.field public mPackageWidth:F

.field public final mPkgName:Ljava/lang/String;

.field public final mRootView:Landroid/widget/FrameLayout;

.field public mScaledDx:F

.field public mScaledDy:F

.field public mScaledRatio:F

.field public mXpp:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/Context;Ljava/lang/String;Landroid/widget/FrameLayout;IIZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x44200000    # 640.0f

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageWidth:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageHeight:F

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkResources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mRootView:Landroid/widget/FrameLayout;

    const-string p1, "display"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance p3, Landroid/view/DisplayInfo;

    invoke-direct {p3}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget p1, p3, Landroid/view/DisplayInfo;->rotation:I

    iget p3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsWidth:I

    iget p4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsHeight:I

    if-eqz p8, :cond_1

    if-le p3, p4, :cond_1

    const/4 p8, 0x1

    if-eq p1, p8, :cond_0

    const/4 p8, 0x3

    if-ne p1, p8, :cond_1

    :cond_0
    iput p4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsWidth:I

    iput p3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsHeight:I

    :cond_1
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsWidth:I

    iget p3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsHeight:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, p4

    float-to-int p1, p1

    sput p1, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    int-to-float p1, p3

    div-float/2addr p1, p4

    float-to-int p1, p1

    sput p1, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    if-eqz p7, :cond_3

    int-to-float p3, p5

    div-float/2addr p3, p1

    iput p3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    int-to-float p3, p6

    div-float/2addr p3, p1

    iput p3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    goto :goto_0

    :cond_3
    sget p1, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    sget p1, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    :goto_0
    new-instance p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    invoke-direct {p1, p2}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    invoke-direct {p1}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    return-void
.end method


# virtual methods
.method public final getDevicePixelX(F)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final getDevicePixelY(F)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method
