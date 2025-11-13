.class public final synthetic Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iput-object p2, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->onVideoSizeChanged(Landroid/util/Size;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$mediaPlayer$1$1$1$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, v0, p3}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$mediaPlayer$1$1$1$1;-><init>(Ljava/util/function/Consumer;Landroid/util/Size;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, p3, p3, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
