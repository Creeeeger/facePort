.class public final Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileDataInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;


# instance fields
.field public final context:Landroid/content/Context;

.field public final dateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

.field public final nightDisplayRepository:Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/time/DateFormatUtil;Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileDataInteractor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileDataInteractor;->dateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileDataInteractor;->nightDisplayRepository:Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;

    return-void
.end method


# virtual methods
.method public final availability(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileDataInteractor;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final tileData(Landroid/os/UserHandle;Lkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileDataInteractor;->nightDisplayRepository:Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;

    invoke-virtual {p2, p1}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->nightDisplayState(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileDataInteractor$tileData$$inlined$map$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileDataInteractor$tileData$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileDataInteractor;)V

    return-object p2
.end method
