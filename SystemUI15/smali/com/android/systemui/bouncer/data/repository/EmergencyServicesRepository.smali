.class public final Lcom/android/systemui/bouncer/data/repository/EmergencyServicesRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final enableEmergencyCallWhileSimLocked:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/res/Resources;Lcom/android/systemui/common/ui/data/repository/ConfigurationRepository;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bouncer/data/repository/EmergencyServicesRepository;->resources:Landroid/content/res/Resources;

    check-cast p3, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    new-instance v0, Lcom/android/systemui/bouncer/data/repository/EmergencyServicesRepository$special$$inlined$map$1;

    iget-object p3, p3, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->onConfigurationChange:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/bouncer/data/repository/EmergencyServicesRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/bouncer/data/repository/EmergencyServicesRepository;)V

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const v1, 0x1110190

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p3, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bouncer/data/repository/EmergencyServicesRepository;->enableEmergencyCallWhileSimLocked:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
