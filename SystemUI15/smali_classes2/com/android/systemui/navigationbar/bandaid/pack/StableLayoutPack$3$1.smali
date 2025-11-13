.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutChangedBeforeAttached:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ReinflateNavBar;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ReinflateNavBar;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutChangedBeforeAttached:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
