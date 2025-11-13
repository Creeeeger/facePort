.class public final Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->isTracking:Z

    if-eqz p3, :cond_3

    :cond_0
    sget p3, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->getViewModel$1()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object p3

    iget-object v0, p3, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->progress:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    mul-int/lit8 v0, p2, 0xa

    iget-object p3, p3, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    iget-object p3, p3, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeController$delegate:Lkotlin/Lazy;

    const/4 v4, 0x3

    if-eqz v3, :cond_1

    const-string v3, "#soundCraft.VolumeManager_setStreamVolume"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p3, v4, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_1
    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p3, v4, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    sget-object p3, Lcom/android/systemui/volume/util/SeekBarUtil;->INSTANCE:Lcom/android/systemui/volume/util/SeekBarUtil;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result p3

    if-eq p2, p3, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result p3

    if-ne p2, p3, :cond_3

    :cond_2
    const/16 p2, 0x29

    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_3
    sget p1, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->$r8$clinit:I

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const p2, 0x102000d

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->getViewModel$1()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->isVolumeShocked(I)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {p1, p3}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->setShockColor(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->getViewModel$1()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->progressMax:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p2, p0, :cond_6

    invoke-virtual {p1, p3}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->setShockColor(Z)V

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->setShockColor(Z)V

    :goto_2
    return-void
.end method

.method public final onStartTrackingTouch()V
    .locals 3

    sget v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->getViewModel$1()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->mainThreadHandler$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->recheckCallback:Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$recheckCallback$1;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->getViewModel$1()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->isTouching:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 3

    sget p1, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->getViewModel$1()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object p1

    iget-object v0, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    iget-object v0, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->mainThreadHandler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->recheckCallback:Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$recheckCallback$1;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->getViewModel$1()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->isTouching:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1034"

    const-string v0, "location"

    const-string v1, "detail panel"

    const-string v2, "QUICK_PANEL_LAYOUT"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
