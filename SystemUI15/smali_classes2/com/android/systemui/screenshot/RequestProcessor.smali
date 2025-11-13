.class public final Lcom/android/systemui/screenshot/RequestProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/ScreenshotRequestProcessor;


# instance fields
.field public final capture:Lcom/android/systemui/screenshot/ImageCapture;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final policy:Lcom/android/systemui/screenshot/ScreenshotPolicy;

.field public final semCapture:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ImageCapture;Lcom/android/systemui/screenshot/ScreenshotPolicy;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/RequestProcessor;->capture:Lcom/android/systemui/screenshot/ImageCapture;

    iput-object p2, p0, Lcom/android/systemui/screenshot/RequestProcessor;->policy:Lcom/android/systemui/screenshot/ScreenshotPolicy;

    iput-object p3, p0, Lcom/android/systemui/screenshot/RequestProcessor;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p4, p0, Lcom/android/systemui/screenshot/RequestProcessor;->semCapture:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ImageCapture;Lcom/android/systemui/screenshot/ScreenshotPolicy;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/screenshot/RequestProcessor;-><init>(Lcom/android/systemui/screenshot/ImageCapture;Lcom/android/systemui/screenshot/ScreenshotPolicy;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;)V

    return-void
.end method


# virtual methods
.method public final process(Lcom/android/systemui/screenshot/ScreenshotData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcom/android/systemui/screenshot/RequestProcessor$process$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;

    iget v1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/screenshot/RequestProcessor$process$1;-><init>(Lcom/android/systemui/screenshot/RequestProcessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "RequestProcessor"

    const/4 v7, 0x3

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v7, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    iget-object p1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotData;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    iget-object p1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotData;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    iget-object p1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotData;

    iget-object v2, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/screenshot/RequestProcessor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotData;

    iget-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/screenshot/RequestProcessor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p2, p1, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    if-eq p2, v7, :cond_12

    iput-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->label:I

    iget-object p2, p0, Lcom/android/systemui/screenshot/RequestProcessor;->policy:Lcom/android/systemui/screenshot/ScreenshotPolicy;

    check-cast p2, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, Lcom/android/systemui/screenshot/ScreenshotData;->displayId:I

    invoke-static {p2, v2, v0}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->findPrimaryContent$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    check-cast p2, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "findPrimaryContent: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p2, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->taskId:I

    iput v2, p1, Lcom/android/systemui/screenshot/ScreenshotData;->taskId:I

    iget-object v2, p2, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->component:Landroid/content/ComponentName;

    iput-object v2, p1, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    iget-object v2, p2, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->user:Landroid/os/UserHandle;

    iput-object v2, p1, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/systemui/screenshot/RequestProcessor;->policy:Lcom/android/systemui/screenshot/ScreenshotPolicy;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->label:I

    check-cast v8, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v2, v0}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->isManagedProfile$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v9, v2

    move-object v2, p0

    move-object p0, p2

    move-object p2, v9

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, v2, Lcom/android/systemui/screenshot/RequestProcessor;->semCapture:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

    const/4 v4, 0x0

    if-eqz p2, :cond_f

    iget-object p2, v2, Lcom/android/systemui/screenshot/RequestProcessor;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz p2, :cond_f

    new-instance p2, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isFlexPanelRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p0, "process: skipped for flex panel mode."

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_8
    new-instance p2, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result p2

    const-string v3, "isInSplitWindow : "

    const-string v8, "Screenshot"

    invoke-static {p2, v3, v8}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    and-int/lit8 p2, p2, 0x38

    const/16 v3, 0x8

    if-eq p2, v3, :cond_9

    const-string p0, "process: skipped for split window mode."

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_9
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p0, "process: skipped for secure folder."

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_a
    iget-object p2, v2, Lcom/android/systemui/screenshot/RequestProcessor;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p2, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p0, "process: skipped by dpm policy."

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p1, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    iput-boolean v5, p1, Lcom/android/systemui/screenshot/ScreenshotData;->disableCapture:Z

    return-object p1

    :cond_b
    const/4 p2, -0x1

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->taskId:I

    if-ne v3, p2, :cond_c

    const-string p0, "process: invalid task id"

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_c
    iput-object p1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$2:Ljava/lang/Object;

    iput v7, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->label:I

    iget-object p2, v2, Lcom/android/systemui/screenshot/RequestProcessor;->semCapture:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

    invoke-virtual {p2, v3, v0}, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->semCaptureTask(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_d

    return-object v1

    :cond_d
    :goto_3
    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_e

    return-object p1

    :cond_e
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/screenshot/ScreenshotData;->secureLayer:Z

    iput v7, p1, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    iput-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->bounds:Landroid/graphics/Rect;

    iput-object p0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    return-object p1

    :cond_f
    iget p2, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->taskId:I

    iput-object p1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$1;->label:I

    iget-object v2, v2, Lcom/android/systemui/screenshot/RequestProcessor;->capture:Lcom/android/systemui/screenshot/ImageCapture;

    check-cast v2, Lcom/android/systemui/screenshot/ImageCaptureImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p2, v0}, Lcom/android/systemui/screenshot/ImageCaptureImpl;->captureTask$suspendImpl(Lcom/android/systemui/screenshot/ImageCaptureImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_10

    return-object v1

    :cond_10
    :goto_4
    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_11

    iput v7, p1, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    iput-object p2, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->bounds:Landroid/graphics/Rect;

    iput-object p0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    goto :goto_5

    :cond_11
    new-instance p0, Lcom/android/systemui/screenshot/RequestProcessorException;

    const-string p1, "Task snapshot returned a null Bitmap!"

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/RequestProcessorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_5
    return-object p1
.end method
