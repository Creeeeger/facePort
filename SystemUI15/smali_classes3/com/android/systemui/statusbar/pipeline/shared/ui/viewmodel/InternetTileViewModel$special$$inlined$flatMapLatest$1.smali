.class public final Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Companion;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->context:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v1, v4, v2, v3}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Companion;->fromModel(Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;Landroid/content/Context;ZLcom/android/settingslib/SignalIcon$IconGroup;)Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon;

    move-result-object v4

    instance-of v5, v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    if-eqz v5, :cond_4

    instance-of v5, v4, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->Companion:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$Companion;

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->ssid:Ljava/lang/String;

    if-nez v1, :cond_2

    :goto_0
    move-object v6, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v3, v1

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Active;

    check-cast v4, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    iget-object v3, v4, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;->icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget v3, v3, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v9

    new-instance v11, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->internetLabel:Ljava/lang/String;

    const-string v5, ","

    invoke-static {v3, v5, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v10, v4, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Active;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/common/shared/model/Text;Ljava/lang/Integer;Lcom/android/systemui/plugins/qs/QSTile$Icon;Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/common/shared/model/ContentDescription;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;

    iget-object v3, v1, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->notConnectedFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    :goto_2
    iput v2, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$special$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v3, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
