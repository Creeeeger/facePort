.class public final Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;


# instance fields
.field public final b5CutoutHeight:I

.field public final context:Landroid/content/Context;

.field public final navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    const/16 p1, 0x42

    iput p1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->b5CutoutHeight:I

    return-void
.end method


# virtual methods
.method public final getBarGravity(ZI)I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->supportLargeCoverScreenNavBar()Z

    move-result p1

    const/16 v0, 0x50

    if-eqz p1, :cond_4

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-eq p2, p0, :cond_3

    const/4 p0, 0x2

    if-eq p2, p0, :cond_2

    const/4 p0, 0x3

    if-eq p2, p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0

    :cond_2
    const/16 v0, 0x30

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    :cond_4
    :goto_0
    return v0
.end method

.method public final getBarHeight(ZI)I
    .locals 0

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result p1

    iget p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->b5CutoutHeight:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10502c4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method public final getBarInsetHeight(ZI)I
    .locals 2

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    const v0, 0x10502c9

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result p1

    iget v1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->b5CutoutHeight:I

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    const/4 p0, 0x2

    if-eq p2, p0, :cond_3

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method public final getBarInsetWidth(ZI)I
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->supportLargeCoverScreenNavBar()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    iget v1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->b5CutoutHeight:I

    :cond_1
    :goto_0
    return v1
.end method

.method public final getBarWidth(ZI)I
    .locals 1

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    iget v0, p0, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;->b5CutoutHeight:I

    :cond_1
    :goto_0
    return v0
.end method
