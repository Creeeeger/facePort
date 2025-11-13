.class public final Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public keyUpJob:Lkotlinx/coroutines/Job;

.field public pluginScope:Lkotlinx/coroutines/CoroutineScope;

.field public final sliderEventProducer:Lcom/android/systemui/haptics/slider/SliderStateProducer;

.field public final sliderHapticFeedbackProvider:Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;

.field public sliderTracker:Lcom/android/systemui/haptics/slider/SliderStateTracker;

.field public final sliderTrackerConfig:Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

.field public final velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 7

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderTrackerConfig:Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->velocityTracker:Landroid/view/VelocityTracker;

    new-instance v0, Lcom/android/systemui/haptics/slider/SliderStateProducer;

    invoke-direct {v0}, Lcom/android/systemui/haptics/slider/SliderStateProducer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderEventProducer:Lcom/android/systemui/haptics/slider/SliderStateProducer;

    new-instance v0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;

    invoke-direct {v0, p1, p4, p3, p2}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/view/VelocityTracker;Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;Lcom/android/systemui/util/time/SystemClock;)V

    iput-object v0, p0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderHapticFeedbackProvider:Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;

    const/16 v15, 0x1fff

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v16}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;-><init>(FFFFFFFIFIFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p3

    :goto_0
    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;-><init>(JFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    goto :goto_1

    :cond_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v1, p4

    :goto_1
    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;)V

    return-void
.end method

.method public static synthetic isKeyUpTimerWaiting$annotations()V
    .locals 0

    return-void
.end method

.method public static normalizeProgress(Landroid/widget/SeekBar;I)F
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    int-to-float p1, v0

    div-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final isTracking()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderTracker:Lcom/android/systemui/haptics/slider/SliderStateTracker;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->job:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public final onKeyDown()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->isTracking()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->keyUpJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->keyUpJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->pluginScope:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin$onKeyDown$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin$onKeyDown$1;-><init>(Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v1, v1, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->keyUpJob:Lkotlinx/coroutines/Job;

    return-void
.end method
