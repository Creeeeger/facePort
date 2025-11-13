.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarSidePadding;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    invoke-static {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isSideAndBottomGestureMode$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager;)Z

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarSidePadding;->landscape:Z

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    invoke-interface {v1, v2, p0, v0}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceSidePadding(Landroid/graphics/Point;ZZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "getNavBarSidePadding"

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
