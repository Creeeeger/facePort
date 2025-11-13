.class public final Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->animTargetProgress:I

    if-ne v0, p2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->deliverOnProgressChangedHaptics(IZ)Z

    :cond_2
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-static {v2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onProgressChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fromUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p3, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_3
    if-nez p3, :cond_4

    return-void

    :cond_4
    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object p3, p3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v0, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-lez v0, :cond_7

    int-to-float v1, v0

    int-to-float v0, v0

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p3, v0

    sub-float v4, v3, v2

    const/4 v5, 0x0

    cmpl-float v6, p3, v5

    if-eqz v6, :cond_6

    cmpl-float v5, v4, v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    sub-float/2addr v1, v0

    div-float/2addr v1, p3

    mul-float/2addr v1, v4

    add-float/2addr v1, v2

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    :cond_6
    :goto_0
    float-to-int p3, v2

    if-ge p2, p3, :cond_7

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    move p2, p3

    :cond_7
    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object p3, p3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    invoke-static {p3, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getVolumeFromProgress(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;Landroid/widget/SeekBar;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object p3, p2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v0, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne v0, p1, :cond_8

    iget-boolean p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz p3, :cond_9

    if-lez p1, :cond_9

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->userAttempt:J

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget p3, p2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    if-eq p3, p1, :cond_9

    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object p3, p3, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget p2, p2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-interface {p3, p2}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object p2, p2, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget p3, p3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-interface {p2, p3, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x9

    invoke-static {p1, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStartTrackingTouch "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v1, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-static {v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x17

    invoke-static {v0, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->mHapticPlugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderEventProducer:Lcom/android/systemui/haptics/slider/SliderStateProducer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/haptics/slider/SliderStateProducer;->onStartTracking(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v1, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->tracking:Z

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStopTrackingTouch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-static {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->mHapticPlugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderEventProducer:Lcom/android/systemui/haptics/slider/SliderStateProducer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/haptics/slider/SliderStateProducer;->onStopTracking(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->tracking:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->userAttempt:J

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getVolumeFromProgress(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;Landroid/widget/SeekBar;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eq v1, p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method
