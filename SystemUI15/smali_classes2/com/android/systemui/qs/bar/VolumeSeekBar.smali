.class public final Lcom/android/systemui/qs/bar/VolumeSeekBar;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateListener;


# instance fields
.field public final audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

.field public final bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

.field public final context:Landroid/content/Context;

.field public device:I

.field public final downPoint:Landroid/graphics/PointF;

.field public final handler:Lcom/android/systemui/qs/bar/VolumeSeekBar$handler$1;

.field public iconAnimationType:Z

.field public isAllSoundMute:Z

.field public isAuraCasting:Z

.field public isEarShockWarned:Z

.field public isLongPressed:Z

.field public isShowing:Z

.field public isSmartViewEnabled:Z

.field public isZenMode:Z

.field public isZenModeDisabled:Z

.field public final onUnhandledKeyEventListener:Lcom/android/systemui/qs/bar/VolumeSeekBar$onUnhandledKeyEventListener$1;

.field public progress:I

.field public progressMax:I

.field public progressMin:I

.field public final qsDetailControllerLazy:Ldagger/Lazy;

.field public final qsExpansionStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

.field public final resourcePicker$delegate:Lkotlin/Lazy;

.field public seekBarEnabled:Z

.field public slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

.field public final soundCraftQpDetailAdapterLazy:Ldagger/Lazy;

.field public statusIcon:Landroid/widget/ImageView;

.field public stream:I

.field public toast:Landroid/widget/Toast;

.field public volumeIcon:Lcom/android/systemui/volume/view/icon/QPVolumeIcon;

.field public final volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/bar/VolumeSeekBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/VolumeSeekBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;Lcom/android/systemui/volume/VolumeDependency;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;",
            "Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;",
            "Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;",
            "Lcom/android/systemui/volume/VolumeDependency;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    iput-object p4, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->qsExpansionStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    iput-object p6, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->soundCraftQpDetailAdapterLazy:Ldagger/Lazy;

    iput-object p7, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->qsDetailControllerLazy:Ldagger/Lazy;

    const/16 p1, 0x46

    iput p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->progress:I

    const/16 p1, 0x96

    iput p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->progressMax:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->seekBarEnabled:Z

    sget-object p1, Lcom/android/systemui/qs/bar/VolumeSeekBar$resourcePicker$2;->INSTANCE:Lcom/android/systemui/qs/bar/VolumeSeekBar$resourcePicker$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->resourcePicker$delegate:Lkotlin/Lazy;

    const-class p1, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p5, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    new-instance p1, Lcom/android/systemui/qs/bar/VolumeSeekBar$handler$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/VolumeSeekBar$handler$1;-><init>(Lcom/android/systemui/qs/bar/VolumeSeekBar;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->handler:Lcom/android/systemui/qs/bar/VolumeSeekBar$handler$1;

    new-instance p1, Lcom/android/systemui/qs/bar/VolumeSeekBar$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/VolumeSeekBar$1;-><init>(Lcom/android/systemui/qs/bar/VolumeSeekBar;)V

    const-wide/16 p3, 0x1000

    invoke-static {p3, p4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p5

    const/4 p6, 0x2

    if-eqz p5, :cond_1

    const-string p5, "#soundCraft.VolumeManager_updateQPVolumeModel"

    invoke-static {p3, p4, p5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p5, p2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->qpVolumeModelCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ne p5, p6, :cond_0

    iget-object p5, p2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->qpVolumeModelCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object p5, p2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->qpVolumeModelCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getVolumeModel()Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    move-result-object p5

    iget-boolean p2, p2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p5, p2}, Lcom/android/systemui/qs/bar/VolumeSeekBar$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p3, p4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p3, p4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_1
    iget-object p3, p2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->qpVolumeModelCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p3, p6, :cond_2

    iget-object p3, p2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->qpVolumeModelCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object p3, p2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->qpVolumeModelCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getVolumeModel()Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    move-result-object p3

    iget-boolean p2, p2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/qs/bar/VolumeSeekBar$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance p1, Lcom/android/systemui/qs/bar/VolumeSeekBar$onUnhandledKeyEventListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/VolumeSeekBar$onUnhandledKeyEventListener$1;-><init>(Lcom/android/systemui/qs/bar/VolumeSeekBar;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->onUnhandledKeyEventListener:Lcom/android/systemui/qs/bar/VolumeSeekBar$onUnhandledKeyEventListener$1;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->downPoint:Landroid/graphics/PointF;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->stream:I

    return-void
.end method


# virtual methods
.method public final animateProgressDrawable()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->volumeIcon:Lcom/android/systemui/volume/view/icon/QPVolumeIcon;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->isShocked:Z

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->progress:I

    iget v2, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->progressMax:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VolumeSeekBar;->getThumbThreshold()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/16 v2, 0xff

    if-ne v0, v2, :cond_3

    :cond_2
    :goto_1
    move v3, v1

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isEarShockWarned:Z

    if-ne v3, v0, :cond_4

    return-void

    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isEarShockWarned:Z

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_2

    :cond_5
    move-object p0, v0

    :goto_2
    instance-of v2, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_6

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    goto :goto_3

    :cond_6
    move-object p0, v0

    :goto_3
    if-eqz p0, :cond_7

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_4

    :cond_7
    move-object p0, v0

    :goto_4
    instance-of v1, p0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_8

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    :cond_8
    if-eqz v0, :cond_a

    const/16 p0, 0xfa

    if-eqz v3, :cond_9

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_5

    :cond_9
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    :cond_a
    :goto_5
    return-void
.end method

.method public final getThumbThreshold()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->resourcePicker$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarExpandedHeight(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result p0

    div-int/2addr v1, p0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    :goto_0
    return v1
.end method

.method public final initialize(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;Lcom/android/systemui/volume/view/icon/QPVolumeIcon;Landroid/widget/ImageView;)V
    .locals 11

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->stream:I

    iput-object p2, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->volumeIcon:Lcom/android/systemui/volume/view/icon/QPVolumeIcon;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->statusIcon:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->device:I

    iget v5, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->progress:I

    iget-boolean v6, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->seekBarEnabled:Z

    iget-boolean v7, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->iconAnimationType:Z

    iget-object v10, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    move-object v2, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->initialize(IIIZZZLcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;)V

    iget-object v6, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getVolumeModel()Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    move-result-object v2

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/16 v3, 0xff

    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v7, 0xc8

    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$thumbAnimator$1$1;

    invoke-direct {v5, v6}, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$thumbAnimator$1$1;-><init>(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v5, v2, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->minVolume:I

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setMin(I)V

    iget v5, v2, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->maxVolume:I

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setMax(I)V

    iget v2, v2, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->volume:I

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iput-object v0, v6, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    iput-object p0, v6, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeSeekBar:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    iput-boolean v4, v6, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->isTracking:Z

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v0, v6, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v6, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->scaledTouchSlop:F

    iget-object v0, v6, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->seekbarChangeListener:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f131483

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VolumeSeekBar;->updateStatusIcon()V

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->onUnhandledKeyEventListener:Lcom/android/systemui/qs/bar/VolumeSeekBar$onUnhandledKeyEventListener$1;

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    new-instance v7, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1;-><init>(Lcom/android/systemui/qs/bar/VolumeSeekBar;Landroid/animation/ValueAnimator;Landroid/os/Handler;Ljava/lang/Integer;Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$2;->INSTANCE:Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$2;

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_1
    return-void
.end method

.method public final setProgressChanged(I)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->progress:I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->volumeIcon:Lcom/android/systemui/volume/view/icon/QPVolumeIcon;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->updateLayout(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VolumeSeekBar;->getThumbThreshold()I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    check-cast v2, Landroid/graphics/drawable/ScaleDrawable;

    mul-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VolumeSeekBar;->getThumbThreshold()I

    move-result v0

    div-int/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_3
    check-cast v2, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VolumeSeekBar;->animateProgressDrawable()V

    return-void
.end method

.method public final updateStatusIcon()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->statusIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->context:Landroid/content/Context;

    const v3, 0x7f06003b

    invoke-static {v3, v2}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isAllSoundMute:Z

    const/4 v2, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isZenMode:Z

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isAuraCasting:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->statusIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->context:Landroid/content/Context;

    const v4, 0x7f08081f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->statusIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_4
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->statusIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, p0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->statusIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_7

    move-object v0, v1

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->context:Landroid/content/Context;

    const v4, 0x7f080a93

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->statusIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    move-object v1, p0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method
