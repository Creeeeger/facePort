.class public final Lcom/android/systemui/keyguard/domain/interactor/DevicePostureInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final posture:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/DevicePostureRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/keyguard/data/repository/DevicePostureRepositoryImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/repository/DevicePostureRepositoryImpl;->getCurrentDevicePosture()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/DevicePostureInteractor;->posture:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
