.class public final Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$27$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$27$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$27$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    const/4 v1, 0x0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isBottomGestureMode(Z)Z

    move-result v1

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureHintEnabled()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarLayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarLayoutParams;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
