.class public final Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$Companion;


# instance fields
.field public final accessibilityDelegate:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$accessibilityDelegate$1;

.field public final activeColor:I

.field public final activeStrokeWidth:F

.field public circleColor:I

.field public final context:Landroid/content/Context;

.field public final disabledColor:I

.field public final iconFrame:Landroid/widget/FrameLayout;

.field public final iconView:Lcom/android/systemui/plugins/qs/QSIconView;

.field public final inactiveColor:I

.field public final inactiveStrokeWidth:F

.field public final isNoBgLargeTile:Z

.field public label:Landroid/widget/TextView;

.field public labelContainer:Landroid/widget/LinearLayout;

.field public lastState:I

.field public lastStateDescription:Ljava/lang/CharSequence;

.field public final parentView:Landroid/view/View;

.field public final resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final secLabelColor:Landroid/content/res/ColorStateList;

.field public final secSubLabelColor:Landroid/content/res/ColorStateList;

.field public secondLine:Landroid/widget/TextView;

.field public final tileBackground:Landroid/graphics/drawable/Drawable;

.field public final tileBg:Landroid/widget/ImageView;

.field public tileSpec:Ljava/lang/String;

.field public final uiHandler$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->Companion:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/plugins/qs/QSIconView;Landroid/view/View;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->iconView:Lcom/android/systemui/plugins/qs/QSIconView;

    iput-object p4, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->parentView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->secLabelColor:Landroid/content/res/ColorStateList;

    iput-object p6, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->secSubLabelColor:Landroid/content/res/ColorStateList;

    iput-boolean p7, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->isNoBgLargeTile:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const p6, 0x1050106

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p5

    iput p5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->activeStrokeWidth:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const p6, 0x1050107

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p5

    iput p5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->inactiveStrokeWidth:F

    const p5, 0x7f0605dd

    invoke-virtual {p1, p5}, Landroid/content/Context;->getColor(I)I

    move-result p5

    iput p5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->activeColor:I

    const p5, 0x7f0605dc

    invoke-virtual {p1, p5}, Landroid/content/Context;->getColor(I)I

    move-result p5

    iput p5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->disabledColor:I

    const p5, 0x7f0605db

    invoke-virtual {p1, p5}, Landroid/content/Context;->getColor(I)I

    move-result p5

    iput p5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->inactiveColor:I

    const/4 p5, -0x1

    iput p5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->lastState:I

    sget-object p5, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$uiHandler$2;->INSTANCE:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$uiHandler$2;

    invoke-static {p5}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->uiHandler$delegate:Lkotlin/Lazy;

    new-instance p5, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$accessibilityDelegate$1;

    invoke-direct {p5, p0}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$accessibilityDelegate$1;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;)V

    if-eqz p8, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileImageSize(Landroid/content/Context;)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result p2

    :goto_0
    new-instance p6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p7, 0x11

    invoke-direct {p6, p2, p2, p7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance p7, Landroid/widget/FrameLayout;

    invoke-direct {p7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p7, p6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p8, 0x0

    invoke-virtual {p7, p8}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {p7, p8}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    invoke-virtual {p7, p8}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iput-object p7, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->iconFrame:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-static {p8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p8

    invoke-virtual {v0, p8}, Landroid/graphics/drawable/ShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->tileBg:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p8, 0x7f0810b5

    invoke-virtual {p1, p8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p8, p1, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    if-eqz p8, :cond_1

    move-object p8, p1

    check-cast p8, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    goto :goto_1

    :cond_1
    const/4 p8, 0x0

    :goto_1
    if-eqz p8, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->updateRippleSize()V

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->tileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3, p6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p7, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p7, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    instance-of p0, p4, Lcom/android/systemui/qs/tileimpl/LargeTileView;

    if-eqz p0, :cond_3

    invoke-virtual {p3, p5}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_3
    invoke-virtual {p4, p5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/plugins/qs/QSIconView;Landroid/view/View;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    move-object v1, p1

    move/from16 v0, p9

    and-int/lit8 v2, v0, 0x10

    sget-object v3, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->Companion:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$Companion;

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f0605d7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, p5

    :goto_0
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f0605de

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, p6

    :goto_1
    and-int/lit8 v2, v0, 0x40

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move/from16 v7, p7

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move v8, v3

    goto :goto_3

    :cond_3
    move/from16 v8, p8

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/plugins/qs/QSIconView;Landroid/view/View;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ZZ)V

    return-void
.end method


# virtual methods
.method public final createLabel(ILandroid/view/ViewGroup;)Landroid/widget/LinearLayout;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->labelContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0d2d

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0xc0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->label:Landroid/widget/TextView;

    const p2, 0x7f0a0100

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p2

    or-int/lit16 p2, p2, 0xc0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->secondLine:Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "createLabel(): label inflates failed"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->labelContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->tileBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/ShapeDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v4, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->inactiveStrokeWidth:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_3

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eq v5, v3, :cond_2

    if-eq v5, v1, :cond_1

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->activeStrokeWidth:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1

    :cond_3
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->circleColor:I

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->isNoBgLargeTile:Z

    const-string v6, "SecQSCommonTileView"

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->context:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNoBGTileIconSize(Landroid/content/Context;)I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->tileBg:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_2
    move v5, v4

    goto :goto_3

    :cond_5
    iget v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v5, :cond_8

    if-eq v5, v3, :cond_7

    if-eq v5, v1, :cond_6

    const-string/jumbo v7, "toCircleColor: invalid state "

    invoke-static {v5, v7, v6}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->activeColor:I

    goto :goto_3

    :cond_7
    iget v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->disabledColor:I

    goto :goto_3

    :cond_8
    iget v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->inactiveColor:I

    :goto_3
    iput v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->circleColor:I

    if-ne v5, v0, :cond_9

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->tileBg:Landroid/widget/ImageView;

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->iconView:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->label:Landroid/widget/TextView;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_5

    :cond_a
    move-object v5, v2

    :goto_5
    if-eqz v5, :cond_b

    iget-object v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->secLabelColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    xor-int/2addr v7, v3

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setBreakStrategy(I)V

    :cond_b
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->secondLine:Landroid/widget/TextView;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_6

    :cond_c
    move-object v5, v2

    :goto_6
    if-eqz v5, :cond_e

    iget-object v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x8

    goto :goto_7

    :cond_d
    move v8, v4

    :goto_7
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->secSubLabelColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_e
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->uiHandler$delegate:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$handleLabel$1$2;

    invoke-direct {v7, p0, p2}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$handleLabel$1$2;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;Z)V

    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->label:Landroid/widget/TextView;

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Landroid/widget/TextView;->getLineCount()I

    move-result v8

    if-nez v8, :cond_f

    const-wide/16 v8, 0x64

    goto :goto_8

    :cond_f
    const-wide/16 v8, 0x0

    :goto_8
    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    const-string v5, ""

    if-eqz p2, :cond_11

    goto/16 :goto_c

    :cond_11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->tileSpec:Ljava/lang/String;

    const v8, 0x7f13132a

    if-eqz v7, :cond_12

    const-string v9, "SoundMode"

    invoke-static {v7, v9, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->context:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_12
    iget v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eq v4, v3, :cond_14

    if-eq v4, v1, :cond_13

    move-object v1, v5

    goto :goto_9

    :cond_13
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->context:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_14
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->context:Landroid/content/Context;

    const v3, 0x7f131329    # 1.95496E38f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_a

    :cond_15
    move-object v1, v2

    :goto_a
    if-eqz v1, :cond_16

    const-string v3, ", "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->lastState:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_16

    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v3, v1, :cond_16

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->lastStateDescription:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_16
    :goto_b
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->parentView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/systemui/qs/tileimpl/LargeTileView;

    if-eqz v1, :cond_17

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_17
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->parentView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    iget p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->lastState:I

    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->lastStateDescription:Ljava/lang/CharSequence;

    :goto_c
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz p2, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_d

    :cond_18
    move-object p2, v2

    :goto_d
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    :cond_19
    if-eqz p2, :cond_1a

    new-instance v1, Lkotlin/text/Regex;

    const-string v3, "\n"

    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v1, p2, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lkotlin/text/Regex;

    const-string v3, "-"

    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_1a
    move-object v1, v2

    :cond_1b
    :goto_e
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->parentView:Landroid/view/View;

    instance-of p2, p2, Lcom/android/systemui/qs/tileimpl/LargeTileView;

    if-eqz p2, :cond_1c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1c
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->parentView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_PANEL_DEBUG_LOG:Z

    if-eqz p2, :cond_20

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->label:Landroid/widget/TextView;

    if-eqz p2, :cond_1f

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->labelContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1d

    sget-object v2, Lcom/android/systemui/util/ViewUtil;->INSTANCE:Lcom/android/systemui/util/ViewUtil;

    invoke-virtual {v2, v1}, Lcom/android/systemui/util/ViewUtil;->toIdSting(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    :cond_1d
    sget-object v1, Lcom/android/systemui/util/ViewUtil;->INSTANCE:Lcom/android/systemui/util/ViewUtil;

    invoke-virtual {v1, p2}, Lcom/android/systemui/util/ViewUtil;->toIdSting(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    const-string v1, ", labelContainer = "

    const-string v3, ", label = "

    invoke-static {v1, v2, v3, p2}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1e

    goto :goto_f

    :cond_1e
    move-object v5, p2

    :cond_1f
    :goto_f
    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->parentView:Landroid/view/View;

    sget-object v1, Lcom/android/systemui/util/ViewUtil;->INSTANCE:Lcom/android/systemui/util/ViewUtil;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->iconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/ViewUtil;->toIdSting(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/ViewUtil;->toIdSting(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0}, Lcom/android/systemui/util/ViewUtil;->toShortIdSting(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleStateChanged state.spec = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", parent = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", iconFrame = "

    const-string p2, ", icon = "

    invoke-static {v1, p1, v2, p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ", common = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public final init(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/animation/Expandable;->Companion:Lcom/android/systemui/animation/Expandable$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    invoke-direct {v0, p2}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    new-instance p2, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$init$1;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$init$1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->iconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->iconView:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$init$3;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$init$3;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->iconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->tileSpec:Ljava/lang/String;

    return-void
.end method

.method public final setLabelSingleLine(Z)Z
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->label:Landroid/widget/TextView;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->label:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    new-instance v6, Lkotlin/text/Regex;

    const-string v7, "\n"

    invoke-direct {v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/util/ListIterator;->nextIndex()I

    move-result v6

    add-int/2addr v6, v7

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_4
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_2
    check-cast v4, Ljava/util/Collection;

    new-array v6, v1, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    array-length v6, v4

    move v8, v1

    move v9, v8

    :goto_3
    if-ge v8, v6, :cond_10

    aget-object v11, v4, v8

    new-instance v12, Lkotlin/text/Regex;

    const-string v13, " "

    invoke-direct {v12, v13}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v12}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_5

    goto :goto_4

    :cond_5
    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v12}, Ljava/util/ListIterator;->nextIndex()I

    move-result v12

    add-int/2addr v12, v7

    invoke-static {v11, v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v11

    goto :goto_5

    :cond_6
    sget-object v11, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_5
    check-cast v11, Ljava/util/Collection;

    new-array v12, v1, [Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    array-length v14, v11

    move v15, v1

    :goto_6
    if-ge v15, v14, :cond_e

    aget-object v7, v11, v15

    const/16 v16, 0x0

    if-eqz v5, :cond_7

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v17

    goto :goto_7

    :cond_7
    move/from16 v17, v16

    :goto_7
    int-to-float v1, v3

    cmpl-float v17, v17, v1

    if-lez v17, :cond_8

    const/4 v9, 0x3

    goto :goto_a

    :cond_8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-nez v17, :cond_9

    move-object v10, v7

    goto :goto_8

    :cond_9
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v13, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_8
    if-eqz v5, :cond_a

    invoke-virtual {v5, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v16

    :cond_a
    cmpg-float v1, v16, v1

    if-gtz v1, :cond_c

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_c
    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x2

    if-le v9, v1, :cond_d

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_f

    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x2

    if-le v9, v1, :cond_f

    goto :goto_a

    :cond_f
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_10
    :goto_a
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->secondLine:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    if-le v9, v0, :cond_11

    const/4 v0, 0x2

    const/4 v1, 0x1

    goto :goto_b

    :cond_11
    const/4 v0, 0x2

    const/4 v1, 0x0

    :goto_b
    if-gt v9, v0, :cond_12

    if-eqz v1, :cond_13

    :cond_12
    const/4 v0, 0x1

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    goto :goto_d

    :goto_c
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    return v0

    :cond_14
    move v0, v1

    :goto_d
    return v0
.end method

.method public final updateRippleSize()V
    .locals 5

    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->iconView:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3edc28f6    # 0.43f

    mul-float/2addr v1, v3

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->tileBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    sub-int v3, v2, v1

    sub-int v4, v0, v1

    add-int/2addr v2, v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v3, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method
