.class public final Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$callback$1;
.super Landroid/media/session/MediaController$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    iput-object p1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->checkIfPollingNeeded()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$clearController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$clearController$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$clearController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$clearController$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
