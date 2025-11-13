.class public final Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;


# instance fields
.field public final MODE_BOTTOM_GESTURE:I

.field public final MODE_BOTTOM_SIDE_GESTURE:I

.field public final context:Landroid/content/Context;

.field public navigationMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->MODE_BOTTOM_SIDE_GESTURE:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->MODE_BOTTOM_GESTURE:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->navigationMode:I

    return-void
.end method


# virtual methods
.method public final getButtonDistanceSize(Landroid/graphics/Point;Z)I
    .locals 0

    iget p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->navigationMode:I

    iget p2, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->MODE_BOTTOM_GESTURE:I

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070619

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07061c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getButtonWidth(Landroid/graphics/Point;Z)I
    .locals 0

    iget p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->navigationMode:I

    iget p2, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->MODE_BOTTOM_GESTURE:I

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07061b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07061e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getGesturalLayout(ZZ)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    const/4 v1, 0x1

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->MODE_BOTTOM_GESTURE:I

    iput p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->navigationMode:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    if-eqz p2, :cond_0

    const p1, 0x7f1303e5

    goto :goto_0

    :cond_0
    const p1, 0x7f1303e3

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    if-eqz p2, :cond_2

    const p1, 0x7f1303e6

    goto :goto_1

    :cond_2
    const p1, 0x7f1303e4

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    iget p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->MODE_BOTTOM_SIDE_GESTURE:I

    iput p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->navigationMode:I

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    if-eqz p2, :cond_4

    const p1, 0x7f1303eb

    goto :goto_3

    :cond_4
    const p1, 0x7f1303e8

    :goto_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    const p1, 0x7f1303e9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_5
    return-object p0
.end method

.method public final getGestureWidth(Landroid/graphics/Point;Z)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070620

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getLayout(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->navigationMode:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    const p1, 0x7f1303ea

    goto :goto_0

    :cond_0
    const p1, 0x7f1303e7

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLayout(ZI)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->getLayout(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSpaceSidePadding(Landroid/graphics/Point;Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getSpaceWidth(Landroid/graphics/Point;ZZ)I
    .locals 0

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07061f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->navigationMode:I

    iget p2, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->MODE_BOTTOM_GESTURE:I

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07061a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07061d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getVerticalLayoutID(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f0d0337

    goto :goto_0

    :cond_0
    const p0, 0x7f0d0335

    :goto_0
    return p0
.end method
