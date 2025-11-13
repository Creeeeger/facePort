.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$2;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$2;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->getOrCreateConfigForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;->processNewCarrierConfig(Landroid/os/PersistableBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
