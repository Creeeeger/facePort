.class public final Lcom/android/systemui/qs/tileimpl/NoLabelTileView;
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

.field public final launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v3, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView;->iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    new-instance v0, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$launchableViewDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$launchableViewDelegate$1;-><init>(Lcom/android/systemui/qs/tileimpl/NoLabelTileView;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance v11, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    const/16 v9, 0x70

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/plugins/qs/QSIconView;Landroid/view/View;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v11, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    iget-object p1, v11, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->iconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView;->iconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileImageSize(Landroid/content/Context;)I

    move-result p1

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/util/RecoilEffectUtil;->getRecoilSmallAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

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

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView;->iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    return-object p0
.end method

.method public final getIconWithBackground()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView;->iconFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/animation/Expandable;->Companion:Lcom/android/systemui/animation/Expandable$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->tileSpec:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView;->iconFrame:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$init$1;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$init$1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$init$2;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$init$2;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable;Lcom/android/systemui/qs/tileimpl/NoLabelTileView;)V

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

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->updateRippleSize()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    if-eq p1, p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez p2, :cond_0

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_2

    :cond_0
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, p1, :cond_2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_DEBUG_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "onMeasure forced setWidth : w="

    const-string v1, ", h="

    const-string v2, "NoLabelTileView"

    invoke-static {p2, p1, v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :cond_2
    return-void
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$onStateChanged$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$onStateChanged$1;-><init>(Lcom/android/systemui/qs/tileimpl/NoLabelTileView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    return-void
.end method

.method public final setShouldBlockVisibilityChanges(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setShouldBlockVisibilityChanges(Z)V

    return-void
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
