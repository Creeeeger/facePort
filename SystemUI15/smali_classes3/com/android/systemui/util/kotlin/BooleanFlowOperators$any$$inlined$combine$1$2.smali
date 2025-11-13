.class public final Lcom/android/systemui/util/kotlin/BooleanFlowOperators$any$$inlined$combine$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $flowArray:[Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/BooleanFlowOperators$any$$inlined$combine$1$2;->$flowArray:[Lkotlinx/coroutines/flow/Flow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators$any$$inlined$combine$1$2;->invoke()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/BooleanFlowOperators$any$$inlined$combine$1$2;->$flowArray:[Lkotlinx/coroutines/flow/Flow;

    array-length p0, p0

    new-array p0, p0, [Ljava/lang/Boolean;

    return-object p0
.end method
