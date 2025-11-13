.class public abstract Lcom/android/systemui/haptics/slider/SliderTracker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public currentState:Lcom/android/systemui/haptics/slider/SliderState;

.field public final eventProducer:Lcom/android/systemui/haptics/slider/SliderEventProducer;

.field public job:Lkotlinx/coroutines/Job;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final sliderListener:Lcom/android/systemui/haptics/slider/SliderStateListener;


# direct methods
.method private constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/haptics/slider/SliderStateListener;Lcom/android/systemui/haptics/slider/SliderEventProducer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->sliderListener:Lcom/android/systemui/haptics/slider/SliderStateListener;

    iput-object p3, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->eventProducer:Lcom/android/systemui/haptics/slider/SliderEventProducer;

    sget-object p1, Lcom/android/systemui/haptics/slider/SliderState;->IDLE:Lcom/android/systemui/haptics/slider/SliderState;

    iput-object p1, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->currentState:Lcom/android/systemui/haptics/slider/SliderState;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/haptics/slider/SliderStateListener;Lcom/android/systemui/haptics/slider/SliderEventProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/haptics/slider/SliderTracker;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/haptics/slider/SliderStateListener;Lcom/android/systemui/haptics/slider/SliderEventProducer;)V

    return-void
.end method


# virtual methods
.method public abstract executeOnState(Lcom/android/systemui/haptics/slider/SliderState;)V
.end method

.method public abstract iterateState(Lcom/android/systemui/haptics/slider/SliderEvent;)Lkotlin/Unit;
.end method
