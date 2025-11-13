.class public final Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->onSeekBarPreesedValue:J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;JLandroid/widget/SeekBar;)V

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekStarting$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekStarting$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPNE0023"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;J)V

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
