.class final Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $videoFrame:Z

.field label:I

.field final synthetic this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;",
            "Z",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iput-boolean p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;->$videoFrame:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-boolean p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;->$videoFrame:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-object v0, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->eglHandler:Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;->$videoFrame:Z

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->makeCurrent()V

    iget-object v1, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->renderer:Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;

    iget-object v2, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->lastDrawTimeInMs:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object v4, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->perfProfiler:Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;->profile(JJ)V

    :cond_0
    if-eqz p0, :cond_1

    iget-object v2, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->renderer:Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->isVideoFrameAvailable:Z

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->onDraw()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->onFirstDrawFinished:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->onFirstDrawFinished:Ljava/lang/Runnable;

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    iput-object p0, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->lastDrawTimeInMs:Ljava/lang/Long;

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
