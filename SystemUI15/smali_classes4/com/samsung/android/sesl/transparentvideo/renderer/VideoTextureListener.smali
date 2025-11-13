.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public captureOnFirstDraw:Ljava/lang/Runnable;

.field public eglHandler:Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;

.field public final glCoroutine:Lkotlinx/coroutines/internal/ContextScope;

.field public final keepSurfaceTexture:Z

.field public lastDrawTimeInMs:Ljava/lang/Long;

.field public onFirstDrawFinished:Ljava/lang/Runnable;

.field public final onSurfaceDestroyed:Ljava/lang/Runnable;

.field public final perfProfiler:Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;

.field public final renderer:Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;

.field public surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/Float;FLjava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/Float;",
            "F",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/SurfaceTexture;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->keepSurfaceTexture:Z

    iput-object p6, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->onSurfaceDestroyed:Ljava/lang/Runnable;

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p2, Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher;->instance:Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->glCoroutine:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p2, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;

    sget-object p6, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {p6}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p6

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p5}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;Ljava/util/function/Consumer;)V

    invoke-direct {p2, p1, p4, p6, v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;-><init>(ZFLkotlinx/coroutines/CoroutineScope;Ljava/util/function/Consumer;)V

    iput-object p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->renderer:Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;

    const-string p2, "VideoTextureDraw"

    const-wide/16 p4, 0x1f4

    invoke-direct {p1, p2, p4, p5, p3}, Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;-><init>(Ljava/lang/String;JLjava/lang/Float;)V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->perfProfiler:Lcom/samsung/android/sesl/transparentvideo/utils/PerfProfiler;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/Float;FLjava/util/function/Consumer;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v2, p2

    and-int/lit8 p2, p7, 0x4

    const/4 p8, 0x0

    if-eqz p2, :cond_1

    move-object v3, p8

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_0
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_2

    move-object v6, p8

    goto :goto_1

    :cond_2
    move-object v6, p6

    :goto_1
    move-object v0, p0

    move v1, p1

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;-><init>(ZZLjava/lang/Float;FLjava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final captureBitmap(Lkotlin/jvm/functions/Function1;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->glCoroutine:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTextureAvailable("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    const-string v2, "VideoTextureListener"

    invoke-static {v0, p3, v1, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "using previous surface texture."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->glCoroutine:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v7, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;Landroid/graphics/SurfaceTexture;IILkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v7, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->keepSurfaceTexture:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceTextureDestroyed("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") keepSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTextureListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-boolean p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->keepSurfaceTexture:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->requestRelease(Z)V

    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->keepSurfaceTexture:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTextureSizeChanged("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    const-string v1, "VideoTextureListener"

    invoke-static {v0, p3, p1, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->glCoroutine:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureSizeChanged$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;IILkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final onVideoSizeChanged(Landroid/util/Size;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVideoSizeChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTextureListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->glCoroutine:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onVideoSizeChanged$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onVideoSizeChanged$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;Landroid/util/Size;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->glCoroutine:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;ZLkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final requestRelease(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->glCoroutine:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestRelease$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;ZLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->onSurfaceDestroyed:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
