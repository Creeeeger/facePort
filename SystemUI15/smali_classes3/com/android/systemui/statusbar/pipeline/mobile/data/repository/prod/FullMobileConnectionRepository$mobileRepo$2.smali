.class final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository$mobileRepo$2;
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
.field final synthetic $subscriptionModel:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;Lkotlinx/coroutines/flow/Flow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;",
            "Lkotlinx/coroutines/flow/Flow;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository$mobileRepo$2;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository$mobileRepo$2;->$subscriptionModel:Lkotlinx/coroutines/flow/Flow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository$mobileRepo$2;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;

    iget v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;->subId:I

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_0

    new-instance p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;->dummyRepoFactory:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$Factory;

    iget-object v9, v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$Factory;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iget-object v10, v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$Factory;->phone:Landroid/telephony/TelephonyManager;

    iget-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;->networkNameSeparator:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;->tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    iget-object v3, v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$Factory;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v4, v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$Factory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;->defaultNetworkName:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;

    iget-object v7, v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$Factory;->logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository;-><init>(ILkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;Ljava/lang/String;Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;Lcom/android/systemui/log/table/TableLogBuffer;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Landroid/telephony/TelephonyManager;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository$mobileRepo$2;->$subscriptionModel:Lkotlinx/coroutines/flow/Flow;

    iget-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;->defaultNetworkName:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;

    iget-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;->networkNameSeparator:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;->mobileRepoFactory:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;->tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->build(ILcom/android/systemui/log/table/TableLogBuffer;Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;Ljava/lang/String;)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl;

    move-result-object p0

    :goto_0
    return-object p0
.end method
