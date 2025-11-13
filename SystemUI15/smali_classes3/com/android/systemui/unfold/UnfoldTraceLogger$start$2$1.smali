.class public final Lcom/android/systemui/unfold/UnfoldTraceLogger$start$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/unfold/UnfoldTraceLogger$start$2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$2$1;

    invoke-direct {v0}, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$2$1;-><init>()V

    sput-object v0, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$2$1;->INSTANCE:Lcom/android/systemui/unfold/UnfoldTraceLogger$start$2$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-int p0, p0

    const-wide/16 p1, 0x1000

    const-string v0, "hingeAngle"

    invoke-static {p1, p2, v0, p0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
