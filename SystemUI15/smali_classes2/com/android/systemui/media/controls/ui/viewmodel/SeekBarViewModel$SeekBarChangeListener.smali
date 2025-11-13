.class public final Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$SeekBarChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final viewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$SeekBarChangeListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    int-to-long p1, p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeekProgress$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeekProgress$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;J)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {p0, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeekStarting$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeekStarting$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->firstMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->lastMotionEvent:Landroid/view/MotionEvent;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->lastMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->firstMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->lastMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$SeekBarChangeListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeekFalse$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeekFalse$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;)V

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeek$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onSeek$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;J)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
