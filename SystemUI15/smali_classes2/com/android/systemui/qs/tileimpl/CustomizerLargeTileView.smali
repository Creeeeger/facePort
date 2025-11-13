.class public final Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

.field public final iconFrame:Landroid/widget/FrameLayout;

.field public final iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

.field public final labelGroup:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Z)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v3, p1, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;->iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    new-instance v11, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v9, 0xb0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move v7, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/plugins/qs/QSIconView;Landroid/view/View;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v11, p0, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    iget-object v0, v11, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->iconFrame:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;->iconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f0d03b6

    invoke-virtual {v11, v1, p0}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->createLabel(ILandroid/view/ViewGroup;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;->labelGroup:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x7f070631

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f07062b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v2, 0x7f081075

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_0

    new-instance p0, Lkotlin/Triple;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNoBGTileIconSize(Landroid/content/Context;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNoBGTileIconStartMargin(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNoBGTileLabelStartMargin(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p3, v2, p1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/Triple;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconStartMargin(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p2, p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getTileLabelStartMargin(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p3, v2, p1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {p2, p3, v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v1

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr p3, v2

    goto :goto_1

    :cond_1
    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p1, v1, p0, v1}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Z)V

    return-void
.end method


# virtual methods
.method public final getDetailY()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    return p0
.end method

.method public final getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;->iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    return-object p0
.end method

.method public final getIconWithBackground()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;->iconFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;->iconFrame:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;->iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;->labelGroup:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const v3, 0x7f0a0d2d

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    const-string v3, " "

    invoke-static {p1, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;->labelGroup:Landroid/view/View;

    if-eqz p0, :cond_2

    const p1, 0x7f0a0100

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    :goto_2
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
