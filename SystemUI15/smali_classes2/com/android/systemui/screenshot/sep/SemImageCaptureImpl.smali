.class public final Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;
.super Lcom/android/systemui/screenshot/ImageCaptureImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final atmService:Landroid/app/IActivityTaskManager;

.field public final bgContext:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final context:Landroid/content/Context;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final windowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Landroid/view/IWindowManager;Landroid/app/IActivityTaskManager;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0, p3, p4, p5}, Lcom/android/systemui/screenshot/ImageCaptureImpl;-><init>(Landroid/view/IWindowManager;Landroid/app/IActivityTaskManager;Lkotlinx/coroutines/CoroutineDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p3, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->windowManager:Landroid/view/IWindowManager;

    iput-object p4, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->atmService:Landroid/app/IActivityTaskManager;

    iput-object p5, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->bgContext:Lkotlinx/coroutines/CoroutineDispatcher;

    const-string p1, "Screenshot"

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final semCaptureTask(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;

    iget v1, v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;-><init>(Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;

    invoke-direct {p2, p0, p1, v3}, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$snapshot$1;-><init>(Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;ILkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl$semCaptureTask$1;->label:I

    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->bgContext:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Landroid/window/TaskSnapshot;

    if-nez p2, :cond_4

    new-instance p0, Lkotlin/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_4
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->containsSecureLayers()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "semCaptureTask: snapshot is a secure layer."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance p0, Lkotlin/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
