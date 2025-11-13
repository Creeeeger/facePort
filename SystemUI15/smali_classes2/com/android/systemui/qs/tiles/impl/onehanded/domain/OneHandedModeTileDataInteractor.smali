.class public final Lcom/android/systemui/qs/tiles/impl/onehanded/domain/OneHandedModeTileDataInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;


# instance fields
.field public final oneHandedModeRepository:Lcom/android/systemui/accessibility/data/repository/OneHandedModeRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/data/repository/OneHandedModeRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/onehanded/domain/OneHandedModeTileDataInteractor;->oneHandedModeRepository:Lcom/android/systemui/accessibility/data/repository/OneHandedModeRepository;

    return-void
.end method


# virtual methods
.method public final availability(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    sget-boolean p0, Lcom/android/wm/shell/onehanded/OneHanded;->sIsSupportOneHandedMode:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final tileData(Landroid/os/UserHandle;Lkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/onehanded/domain/OneHandedModeTileDataInteractor;->oneHandedModeRepository:Lcom/android/systemui/accessibility/data/repository/OneHandedModeRepository;

    check-cast p0, Lcom/android/systemui/accessibility/data/repository/OneHandedModeRepositoryImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/data/repository/OneHandedModeRepositoryImpl;->isEnabled(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/qs/tiles/impl/onehanded/domain/OneHandedModeTileDataInteractor$tileData$$inlined$map$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/impl/onehanded/domain/OneHandedModeTileDataInteractor$tileData$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    return-object p1
.end method
