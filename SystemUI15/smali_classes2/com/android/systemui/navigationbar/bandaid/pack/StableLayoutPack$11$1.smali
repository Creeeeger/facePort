.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetBarLayoutParams;

    new-instance v6, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    iget v0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetBarLayoutParams;->rotation:I

    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->shouldShowSUWStyle()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v3, v3, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    invoke-interface {v1, v3, v0}, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;->getBarWidth(ZI)I

    move-result v0

    move v1, v0

    :goto_0
    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetBarLayoutParams;->rotation:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->getNavBarHeight(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->shouldShowSUWStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10502c4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    iget-object v4, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v4, v4, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    invoke-interface {v0, v4, p0}, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;->getBarInsetHeight(ZI)I

    move-result v0

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->shouldShowSUWStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    move v5, v2

    goto :goto_3

    :cond_2
    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    iget-object v2, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    invoke-interface {v0, v2, p0}, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;->getBarInsetWidth(ZI)I

    move-result v0

    move v5, v0

    :goto_3
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->shouldShowSUWStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x50

    goto :goto_4

    :cond_3
    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    invoke-interface {v0, p1, p0}, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;->getBarGravity(ZI)I

    move-result p0

    :goto_4
    move-object v0, v6

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;-><init>(IIIII)V

    return-object v6
.end method
