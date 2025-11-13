.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final allowNetworkSliceIndicator:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public isUsingDefault:Z

.field public final shouldInflateSignalStrength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final trackedConfigs:Ljava/util/List;


# direct methods
.method public constructor <init>(ILandroid/os/PersistableBundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;->isUsingDefault:Z

    new-instance p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/BooleanCarrierConfig;

    const-string v0, "inflate_signal_strength_bool"

    invoke-direct {p1, v0, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/BooleanCarrierConfig;-><init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/BooleanCarrierConfig;->config:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;->shouldInflateSignalStrength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/BooleanCarrierConfig;

    const-string/jumbo v1, "show_operator_name_in_statusbar_bool"

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/BooleanCarrierConfig;-><init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/BooleanCarrierConfig;

    const-string/jumbo v2, "show_5g_slice_icon_bool"

    invoke-direct {v1, v2, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/BooleanCarrierConfig;-><init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    iget-object p2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/BooleanCarrierConfig;->config:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;->allowNetworkSliceIndicator:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    filled-new-array {p1, v0, v1}, [Lcom/android/systemui/statusbar/pipeline/mobile/data/model/BooleanCarrierConfig;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;->trackedConfigs:Ljava/util/List;

    return-void
.end method

.method public static synthetic isUsingDefault$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final processNewCarrierConfig(Landroid/os/PersistableBundle;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;->isUsingDefault:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;->trackedConfigs:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/BooleanCarrierConfig;

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/BooleanCarrierConfig;->_configValue:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/BooleanCarrierConfig;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;->trackedConfigs:Ljava/util/List;

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    sget-object v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig$toString$1;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig$toString$1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/16 v5, 0x1f

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toStringConsideringDefaults()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;->isUsingDefault:Z

    if-eqz v0, :cond_0

    const-string/jumbo p0, "using defaults"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;->trackedConfigs:Ljava/util/List;

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    sget-object v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig$toStringConsideringDefaults$1;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig$toStringConsideringDefaults$1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/16 v5, 0x1f

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
