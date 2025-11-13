.class public final Lcom/android/systemui/qs/tiles/impl/work/domain/interactor/WorkModeTileDataInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;


# instance fields
.field public final profileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/work/domain/interactor/WorkModeTileDataInteractor;->profileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    return-void
.end method


# virtual methods
.method public final availability(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/work/domain/interactor/WorkModeTileDataInteractor;->profileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {p0}, Lcom/android/systemui/util/kotlin/ManagedProfileControllerExtKt;->getHasActiveWorkProfile(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final tileData(Landroid/os/UserHandle;Lkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/impl/work/domain/interactor/WorkModeTileDataInteractor;->profileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {p1}, Lcom/android/systemui/util/kotlin/ManagedProfileControllerExtKt;->getHasActiveWorkProfile(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/tiles/impl/work/domain/interactor/WorkModeTileDataInteractor$tileData$$inlined$map$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/qs/tiles/impl/work/domain/interactor/WorkModeTileDataInteractor$tileData$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/tiles/impl/work/domain/interactor/WorkModeTileDataInteractor;)V

    return-object p2
.end method
