.class public final Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $foldUpdateLogger:Lcom/android/app/tracing/TraceStateLogger;


# direct methods
.method public constructor <init>(Lcom/android/app/tracing/TraceStateLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1$1;->$foldUpdateLogger:Lcom/android/app/tracing/TraceStateLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1$1;->$foldUpdateLogger:Lcom/android/app/tracing/TraceStateLogger;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/app/tracing/TraceStateLogger;->log(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
