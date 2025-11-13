.class final Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;
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
.field final synthetic $forceReleaseSurfaceTexture:Z

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

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iput-boolean p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;->$forceReleaseSurfaceTexture:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-boolean p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;->$forceReleaseSurfaceTexture:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;->label:I

    if-nez v0, :cond_9

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-object v0, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->eglHandler:Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->makeCurrent()V

    iget-object p1, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->renderer:Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "TransparentVideoRenderer"

    const-string v3, "onSurfaceDestroyed()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->glObj:Ljava/util/List;

    if-nez v2, :cond_0

    move-object v2, v1

    :cond_0
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;

    invoke-interface {v3}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;->dispose()V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->texturingRenderpass:Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;

    iget-object p1, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->glObj:Ljava/util/List;

    if-nez p1, :cond_2

    move-object p1, v1

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;

    invoke-interface {v2}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;->dispose()V

    goto :goto_1

    :cond_3
    const-string p1, "EGLHandler"

    const-string v2, "Destroy egl context"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq p1, v2, :cond_4

    iget-object p1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v3, v2, v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object p1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_4
    iget-object p1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object p1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iput-object v1, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->eglHandler:Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;

    iget-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;->$forceReleaseSurfaceTexture:Z

    if-eqz v0, :cond_8

    iget-object p1, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-object p1, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iput-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
