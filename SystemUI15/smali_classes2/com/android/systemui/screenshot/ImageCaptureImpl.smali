.class public Lcom/android/systemui/screenshot/ImageCaptureImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/ImageCapture;


# instance fields
.field public final atmService:Landroid/app/IActivityTaskManager;

.field public final bgContext:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final windowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/view/IWindowManager;Landroid/app/IActivityTaskManager;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageCaptureImpl;->windowManager:Landroid/view/IWindowManager;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ImageCaptureImpl;->atmService:Landroid/app/IActivityTaskManager;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ImageCaptureImpl;->bgContext:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method public static captureTask$suspendImpl(Lcom/android/systemui/screenshot/ImageCaptureImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;

    iget v1, v0, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;-><init>(Lcom/android/systemui/screenshot/ImageCaptureImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/screenshot/ImageCaptureImpl;->bgContext:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$snapshot$1;

    invoke-direct {v2, p0, p1, v3}, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$snapshot$1;-><init>(Lcom/android/systemui/screenshot/ImageCaptureImpl;ILkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Landroid/window/TaskSnapshot;

    if-nez p2, :cond_4

    return-object v3

    :cond_4
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final captureDisplay(ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    new-instance v0, Landroid/window/ScreenCapture$CaptureArgs$Builder;

    invoke-direct {v0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->build()Landroid/window/ScreenCapture$CaptureArgs;

    move-result-object p2

    invoke-static {}, Landroid/window/ScreenCapture;->createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageCaptureImpl;->windowManager:Landroid/view/IWindowManager;

    invoke-interface {p0, p1, p2, v0}, Landroid/view/IWindowManager;->captureDisplay(ILandroid/window/ScreenCapture$CaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)V

    invoke-virtual {v0}, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
