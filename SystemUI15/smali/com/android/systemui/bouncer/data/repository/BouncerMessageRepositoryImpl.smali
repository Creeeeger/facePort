.class public final Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepository;


# instance fields
.field public final _bouncerMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final bouncerMessage:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;-><init>(Lcom/android/systemui/bouncer/shared/model/Message;Lcom/android/systemui/bouncer/shared/model/Message;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;->_bouncerMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v0, p0, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;->bouncerMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method


# virtual methods
.method public final setMessage(Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;->_bouncerMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
