.class public final Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final coloredBGHelper:Lkotlin/jvm/functions/Function0;

.field public final context:Landroid/content/Context;

.field public final resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/qs/SecQSPanelResourcePicker;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->coloredBGHelper:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getResources()Lcom/android/systemui/qs/bar/VideoCallMicModeResources;
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconStartMargin(Landroid/content/Context;)I

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v0

    const v2, 0x7f071787

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->toPixelSize(I)I

    move-result v4

    const/4 v2, 0x2

    invoke-static {v0, v4, v2, v3}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const v0, 0x7f071788

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->toPixelSize(I)I

    move-result v0

    goto :goto_0

    :goto_1
    const v0, 0x7f07178a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->toPixelSize(I)I

    move-result v7

    const v0, 0x7f071789

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->toPixelSize(I)I

    move-result v8

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f07062a

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->toPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v9, v2, 0x4

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->toPixelSize(I)I

    move-result v10

    const v0, 0x7f071785

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->toPixelSize(I)I

    move-result v11

    new-instance p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;-><init>(IIIIIIIII)V

    return-object p0
.end method

.method public final inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f081075

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->coloredBGHelper:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->addBarBackground(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/util/RecoilEffectUtil;->getRecoilSmallAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final toPixelSize(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
