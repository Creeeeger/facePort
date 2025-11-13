.class public final Lcom/android/systemui/smartspace/ui/viewmodel/SmartspaceViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isAwake:Lcom/android/systemui/smartspace/ui/viewmodel/SmartspaceViewModel$special$$inlined$filter$1;

.field public final surfaceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/smartspace/ui/viewmodel/SmartspaceViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/smartspace/ui/viewmodel/SmartspaceViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/power/domain/interactor/PowerInteractor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/smartspace/ui/viewmodel/SmartspaceViewModel;->surfaceName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->isAwake:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    new-instance p2, Lcom/android/systemui/smartspace/ui/viewmodel/SmartspaceViewModel$special$$inlined$filter$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/smartspace/ui/viewmodel/SmartspaceViewModel$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/smartspace/ui/viewmodel/SmartspaceViewModel;)V

    return-void
.end method
