.class public final Lcom/android/systemui/qs/tileimpl/LabelTileView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/LaunchableView;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

.field public final iconFrame:Landroid/widget/FrameLayout;

.field public final iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

.field public final labelContainer:Landroid/widget/LinearLayout;

.field public final launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tileimpl/LabelTileView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tileimpl/LabelTileView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v3, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    new-instance v0, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/LabelTileView$launchableViewDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/LabelTileView$launchableViewDelegate$1;-><init>(Lcom/android/systemui/qs/tileimpl/LabelTileView;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

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

    iput-object v11, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    iget-object p1, v11, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->iconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->iconFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f0d03b8

    invoke-virtual {v11, v0, p0}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->createLabel(ILandroid/view/ViewGroup;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->labelContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0810b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/RecoilEffectUtil;->getRecoilSmallAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070615

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070614

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v1, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_2

    move-object v3, p1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getLabelHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    return-object p0
.end method

.method public final getIconWithBackground()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->iconFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/animation/Expandable;->Companion:Lcom/android/systemui/animation/Expandable$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->tileSpec:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->iconFrame:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/LabelTileView$init$1;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/qs/tileimpl/LabelTileView$init$1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/LabelTileView$init$2;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/systemui/qs/tileimpl/LabelTileView$init$2;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable;Lcom/android/systemui/qs/tileimpl/LabelTileView;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->updateRippleSize()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->setLabelSingleLine(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/LabelTileView$onStateChanged$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tileimpl/LabelTileView$onStateChanged$1;-><init>(Lcom/android/systemui/qs/tileimpl/LabelTileView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    return-void
.end method

.method public final setShouldBlockVisibilityChanges(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setShouldBlockVisibilityChanges(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0d2d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/util/ViewUtil;->INSTANCE:Lcom/android/systemui/util/ViewUtil;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/ViewUtil;->toIdSting(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/ViewUtil;->toIdSting(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->iconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Lcom/android/systemui/util/ViewUtil;->toIdSting(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v1, v4}, Lcom/android/systemui/util/ViewUtil;->toIdSting(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/util/ViewUtil;->toShortIdSting(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "LabelTileView{"

    const-string v5, ", label = "

    const-string v6, ", iconFrame = "

    invoke-static {v1, v2, v5, v0, v6}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon = "

    const-string v2, ", common = "

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityTraversalAfter(I)V

    return-object p0
.end method
