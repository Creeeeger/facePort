.class final Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;
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
.field final synthetic $height:I

.field final synthetic $width:I

.field label:I

.field final synthetic this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;",
            "II",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iput p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;->$width:I

    iput p3, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;->$height:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;->$width:I

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;->$height:I

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;IILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-object v0, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->eglHandler:Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;->$width:I

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;->$height:I

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->makeCurrent()V

    iget-object p1, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->renderer:Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;

    invoke-virtual {p1, v1, p0}, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->onSurfaceChanged(II)V

    invoke-virtual {p1}, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->onDraw()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p0, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
