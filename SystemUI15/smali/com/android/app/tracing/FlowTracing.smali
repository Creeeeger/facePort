.class public final Lcom/android/app/tracing/FlowTracing;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/app/tracing/FlowTracing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/app/tracing/FlowTracing;

    invoke-direct {v0}, Lcom/android/app/tracing/FlowTracing;-><init>()V

    sput-object v0, Lcom/android/app/tracing/FlowTracing;->INSTANCE:Lcom/android/app/tracing/FlowTracing;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static traceEmissionCount(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
    .locals 3

    const-string v0, "#emissionCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v1, Lcom/android/app/tracing/FlowTracing$traceEmissionCount$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/android/app/tracing/FlowTracing$traceEmissionCount$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p1, p0, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    return-object p1
.end method
