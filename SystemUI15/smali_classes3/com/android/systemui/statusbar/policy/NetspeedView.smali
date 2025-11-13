.class public Lcom/android/systemui/statusbar/policy/NetspeedView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Ljava/util/Observer;


# instance fields
.field public mContentMarginEnd:I

.field public mContentUpdated:Z

.field public mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

.field public final mContext:Landroid/content/Context;

.field public mInStatusBar:Z

.field public mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public mScreenOrientation:I

.field public final mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOrientation:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentUpdated:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mInStatusBar:Z

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOrientation:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentUpdated:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mInStatusBar:Z

    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOrientation:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentUpdated:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mInStatusBar:Z

    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->reset()V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOrientation:I

    :cond_0
    return-void
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .locals 0

    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a07cf

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    sget-boolean p0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    if-eqz p0, :cond_0

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mInStatusBar:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->getDisplayCutoutAreaToExclude()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p4, p3, Landroid/graphics/Rect;->left:I

    if-gez p4, :cond_2

    goto :goto_1

    :cond_2
    iget p4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    invoke-virtual {p3, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    iget p4, p3, Landroid/graphics/Rect;->right:I

    iget p5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    if-ltz p4, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p1

    if-lt p4, p3, :cond_3

    goto :goto_1

    :cond_3
    move p2, p4

    :cond_4
    :goto_1
    iget p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    if-eq p2, p1, :cond_5

    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->reset()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentUpdated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->add(Ljava/lang/Integer;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentUpdated:Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->getStableWidth()I

    move-result v1

    if-le v1, p1, :cond_1

    move p1, v1

    :cond_1
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    add-int/2addr p1, v1

    :cond_2
    if-eq v0, p1, :cond_3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :cond_3
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->reset()V

    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentUpdated:Z

    :cond_0
    return-void
.end method
