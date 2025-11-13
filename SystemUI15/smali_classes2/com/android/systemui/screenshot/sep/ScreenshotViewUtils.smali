.class public final Lcom/android/systemui/screenshot/sep/ScreenshotViewUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/screenshot/sep/ScreenshotViewUtils;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotViewUtils;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLayoutParams(Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x968

    instance-of v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForFlex;

    const v4, 0x4200588

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getScreenshotRectToCapture()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 p0, 0x30

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 p0, 0x11

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    const/4 p0, -0x1

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 p0, 0x1

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p0, 0x0

    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v6
.end method
