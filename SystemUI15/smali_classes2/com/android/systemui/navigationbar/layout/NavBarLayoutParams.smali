.class public final Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getBarGravity(ZI)I
    .locals 1

    const/4 p0, 0x1

    xor-int/2addr p1, p0

    const/16 v0, 0x50

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p2, p0, :cond_2

    const/4 p0, 0x3

    if-eq p2, p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    :goto_0
    return v0
.end method

.method public final getBarHeight(ZI)I
    .locals 2

    xor-int/lit8 p1, p1, 0x1

    const v0, 0x10502c4

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getBarInsetHeight(ZI)I
    .locals 2

    xor-int/lit8 p1, p1, 0x1

    const v0, 0x10502c9

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getBarInsetWidth(ZI)I
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10502ce

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public final getBarWidth(ZI)I
    .locals 2

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10502c4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    return v1
.end method
