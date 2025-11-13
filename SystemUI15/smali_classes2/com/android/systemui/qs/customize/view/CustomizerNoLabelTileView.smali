.class public final Lcom/android/systemui/qs/customize/view/CustomizerNoLabelTileView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

.field public final iconFrame:Landroid/widget/FrameLayout;

.field public final iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v3, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/view/CustomizerNoLabelTileView;->iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    new-instance v11, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0xf0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/plugins/qs/QSIconView;Landroid/view/View;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v11, p0, Lcom/android/systemui/qs/customize/view/CustomizerNoLabelTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    iget-object p1, v11, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->iconFrame:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/CustomizerNoLabelTileView;->iconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result p1

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public final getDetailY()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/CustomizerNoLabelTileView;->iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    return-object p0
.end method

.method public final getIconWithBackground()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/CustomizerNoLabelTileView;->iconFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/CustomizerNoLabelTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V

    return-void
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/CustomizerNoLabelTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    return-void
.end method

.method public final updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 0

    return-object p0
.end method
