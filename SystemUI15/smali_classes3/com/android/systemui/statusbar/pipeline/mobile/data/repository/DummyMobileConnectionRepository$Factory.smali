.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

.field public final phone:Landroid/telephony/TelephonyManager;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Landroid/telephony/TelephonyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$Factory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$Factory;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$Factory;->logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$Factory;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/DummyMobileConnectionRepository$Factory;->phone:Landroid/telephony/TelephonyManager;

    return-void
.end method
