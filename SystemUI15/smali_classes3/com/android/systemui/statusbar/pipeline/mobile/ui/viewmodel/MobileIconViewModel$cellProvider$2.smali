.class final Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$cellProvider$2;
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
.field final synthetic $airplaneModeInteractor:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;

.field final synthetic $constants:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

.field final synthetic $flags:Lcom/android/systemui/flags/FeatureFlagsClassic;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $slotName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;Lcom/android/systemui/flags/FeatureFlagsClassic;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$cellProvider$2;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$cellProvider$2;->$airplaneModeInteractor:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$cellProvider$2;->$constants:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$cellProvider$2;->$flags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$cellProvider$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$cellProvider$2;->$slotName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$cellProvider$2;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;

    iget v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->subscriptionId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$cellProvider$2;->$airplaneModeInteractor:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$cellProvider$2;->$constants:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$cellProvider$2;->$flags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$cellProvider$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v8, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel$cellProvider$2;->$slotName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->iconInteractor:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractor;

    iget-object v7, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;-><init>(ILcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractor;Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;Lcom/android/systemui/flags/FeatureFlagsClassic;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/DesktopManager;Ljava/lang/String;)V

    return-object v9
.end method
