.class public final Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeekProgress$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $position:J

.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeekProgress$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    iput-wide p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeekProgress$1;->$position:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeekProgress$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->scrubbing:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->_data:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    iget-wide v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeekProgress$1;->$position:J

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v2, 0x6f

    const/4 v3, 0x0

    invoke-static {v1, v3, p0, v3, v2}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;ZLjava/lang/Integer;ZI)Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->set_data(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;)V

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeekProgress$1;->$position:J

    new-instance p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeek$1;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeek$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;J)V

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
