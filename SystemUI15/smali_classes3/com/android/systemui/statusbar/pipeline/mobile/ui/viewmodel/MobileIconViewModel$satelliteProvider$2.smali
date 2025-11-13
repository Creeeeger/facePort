.class final Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$satelliteProvider$2;
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
.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$satelliteProvider$2;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$satelliteProvider$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CarrierBasedSatelliteViewModelImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$satelliteProvider$2;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;

    iget v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->subscriptionId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$satelliteProvider$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->iconInteractor:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractor;

    invoke-direct {v0, v2, v1, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CarrierBasedSatelliteViewModelImpl;-><init>(ILcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractor;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0
.end method
