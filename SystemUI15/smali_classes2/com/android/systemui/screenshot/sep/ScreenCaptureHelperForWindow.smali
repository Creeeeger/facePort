.class public final Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForWindow;
.super Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForWindow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    return-void
.end method

.method public final initializeScreenshotVariable()V
    .locals 7

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

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->mBundle:Landroid/os/Bundle;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v1, "windowCapture"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    move v0, v1

    move v1, v3

    move v4, v1

    move v5, v4

    :goto_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayWidth:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v4, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayHeight:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v6, v3, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    iput v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->windowMode:I

    return-void
.end method

.method public final isShowScreenshotAnimation(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
