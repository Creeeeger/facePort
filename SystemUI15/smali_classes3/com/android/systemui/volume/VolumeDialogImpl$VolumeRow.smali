.class public final Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sSliderHapticFeedbackConfig:Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;

.field public static final sSliderTrackerConfig:Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;


# instance fields
.field public anim:Landroid/animation/ObjectAnimator;

.field public animTargetProgress:I

.field public defaultStream:Z

.field public header:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageButton;

.field public iconMuteRes:I

.field public iconRes:I

.field public iconState:I

.field public important:Z

.field public lastAudibleLevel:I

.field public mHapticPlugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

.field public number:Landroid/widget/TextView;

.field public requestedLevel:I

.field public slider:Landroid/widget/SeekBar;

.field public sliderProgressIcon:Lcom/android/systemui/util/AlphaTintDrawableWrapper;

.field public sliderProgressSolid:Landroid/graphics/drawable/Drawable;

.field public ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

.field public stream:I

.field public tracking:Z

.field public userAttempt:J

.field public view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v14, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;

    const v12, 0x3d4ccccd    # 0.05f

    const v13, 0x3f8fd1fa

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const v7, 0x3d4ccccd    # 0.05f

    const/4 v8, 0x4

    const/high16 v9, 0x43480000    # 200.0f

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;-><init>(FFFFFFFIFIFFF)V

    sput-object v14, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sSliderHapticFeedbackConfig:Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;

    new-instance v0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

    const v19, 0x3c23d70a    # 0.01f

    const v20, 0x3f7d70a4    # 0.99f

    const-wide/16 v16, 0x64

    const v18, 0x3ca3d70a    # 0.02f

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;-><init>(JFFF)V

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sSliderTrackerConfig:Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;-><init>()V

    return-void
.end method


# virtual methods
.method public final deliverOnProgressChangedHaptics(IZ)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->mHapticPlugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderTracker:Lcom/android/systemui/haptics/slider/SliderStateTracker;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/android/systemui/haptics/slider/SliderTracker;->currentState:Lcom/android/systemui/haptics/slider/SliderState;

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    sget-object v5, Lcom/android/systemui/haptics/slider/SliderState;->IDLE:Lcom/android/systemui/haptics/slider/SliderState;

    iget-object v0, v0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderEventProducer:Lcom/android/systemui/haptics/slider/SliderStateProducer;

    if-ne v3, v5, :cond_2

    if-nez p2, :cond_2

    invoke-static {v2, p1}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->normalizeProgress(Landroid/widget/SeekBar;I)F

    move-result p1

    iget-object v2, v0, Lcom/android/systemui/haptics/slider/SliderStateProducer;->_currentEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v3, Lcom/android/systemui/haptics/slider/SliderEvent;

    sget-object v5, Lcom/android/systemui/haptics/slider/SliderEventType;->NOTHING:Lcom/android/systemui/haptics/slider/SliderEventType;

    invoke-direct {v3, v5, p1}, Lcom/android/systemui/haptics/slider/SliderEvent;-><init>(Lcom/android/systemui/haptics/slider/SliderEventType;F)V

    invoke-virtual {v2, v4, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/haptics/slider/SliderStateProducer;->onStartTracking(Z)V

    goto :goto_2

    :cond_2
    invoke-static {v2, p1}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->normalizeProgress(Landroid/widget/SeekBar;I)F

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_3

    sget-object v1, Lcom/android/systemui/haptics/slider/SliderEventType;->PROGRESS_CHANGE_BY_USER:Lcom/android/systemui/haptics/slider/SliderEventType;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/systemui/haptics/slider/SliderEventType;->PROGRESS_CHANGE_BY_PROGRAM:Lcom/android/systemui/haptics/slider/SliderEventType;

    :goto_1
    new-instance v2, Lcom/android/systemui/haptics/slider/SliderEvent;

    invoke-direct {v2, v1, p1}, Lcom/android/systemui/haptics/slider/SliderEvent;-><init>(Lcom/android/systemui/haptics/slider/SliderEventType;F)V

    iget-object p1, v0, Lcom/android/systemui/haptics/slider/SliderStateProducer;->_currentEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1, v4, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    if-nez p2, :cond_5

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->mHapticPlugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    invoke-virtual {p0}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->onKeyDown()V

    :cond_5
    const/4 p0, 0x1

    return p0
.end method
