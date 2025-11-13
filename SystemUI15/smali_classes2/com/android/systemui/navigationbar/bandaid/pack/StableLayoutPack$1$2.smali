.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $needReinflate:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$2;->$needReinflate:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$2;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$2;->$needReinflate:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$2;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget v1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutChangedBeforeAttached:Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ReinflateNavBar;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ReinflateNavBar;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    :cond_1
    :goto_0
    return-void
.end method
