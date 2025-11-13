.class public final synthetic Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->glCoroutine:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$requestDraw$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;ZLkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p1, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->captureOnFirstDraw:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->captureOnFirstDraw:Ljava/lang/Runnable;

    return-void
.end method
