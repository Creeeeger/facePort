.class public final Lcom/android/systemui/volume/panel/data/repository/VolumePanelGlobalStateRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final globalState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final mutableGlobalState:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/volume/panel/shared/model/VolumePanelGlobalState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/panel/shared/model/VolumePanelGlobalState;-><init>(Z)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/panel/data/repository/VolumePanelGlobalStateRepository;->mutableGlobalState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/panel/data/repository/VolumePanelGlobalStateRepository;->globalState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string v0, "VolumePanelGlobalState"

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/panel/data/repository/VolumePanelGlobalStateRepository;->globalState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/panel/shared/model/VolumePanelGlobalState;

    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/shared/model/VolumePanelGlobalState;->isVisible:Z

    const-string p2, "isVisible: "

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    return-void
.end method
