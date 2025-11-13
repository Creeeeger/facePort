.class public final Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForFlex;
.super Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForFlex$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForFlex$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public final initializeCaptureType()V
    .locals 1

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    return-void
.end method

.method public final initializeScreenshotVariable()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    invoke-static {v1, v0}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getDisplay(ILandroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayWidth:I

    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayHeight:I

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayRotation:I

    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getDegreesForRotation(Landroid/view/Display;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->captureSharedBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "rect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isStatusBarVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isExcludeSystemUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->statusBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    return-void
.end method
