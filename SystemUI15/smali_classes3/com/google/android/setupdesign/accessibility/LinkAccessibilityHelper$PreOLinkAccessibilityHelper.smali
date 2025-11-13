.class Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final tempRect:Landroid/graphics/Rect;

.field public final view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->tempRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->view:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getSpanForOffset(I)Landroid/text/style/ClickableSpan;
    .locals 1

    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->view:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/Spanned;

    const-class v0, Landroid/text/style/ClickableSpan;

    invoke-interface {p0, p1, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/ClickableSpan;

    array-length p1, p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVirtualViewAt(FF)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/text/Spanned;

    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->view:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    int-to-float v3, v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    float-to-int p2, p2

    invoke-virtual {v3, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p1, v3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p0

    :goto_0
    const-class p1, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, p0, p0, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/ClickableSpan;

    array-length p1, p0

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/high16 p0, -0x80000000

    return p0
.end method

.method public final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 5

    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->view:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/Spanned;

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Landroid/text/style/ClickableSpan;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPerformActionForVirtualView(II)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getSpanForOffset(I)Landroid/text/style/ClickableSpan;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->view:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "LinkSpan is null for offset: "

    const-string p2, "LinkAccessibilityHelper"

    invoke-static {p1, p0, p2}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getSpanForOffset(I)Landroid/text/style/ClickableSpan;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->view:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    instance-of p1, p0, Landroid/text/Spanned;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/text/Spanned;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_0
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "LinkSpan is null for offset: "

    const-string v1, "LinkAccessibilityHelper"

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->view:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getSpanForOffset(I)Landroid/text/style/ClickableSpan;

    move-result-object v0

    const-string v1, "LinkAccessibilityHelper"

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->view:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_0
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v2, "LinkSpan is null for offset: "

    invoke-static {p1, v2, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->view:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    iget-object v2, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->tempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->view:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->view:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-eqz v5, :cond_4

    check-cast v4, Landroid/text/Spanned;

    invoke-interface {v4, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v4, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    invoke-virtual {v5, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    invoke-virtual {v5, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {v5, v6, v2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    if-ne v0, v6, :cond_2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    float-to-int v0, v4

    iput v0, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_3
    float-to-int v0, v4

    iput v0, v2, Landroid/graphics/Rect;->left:I

    :goto_1
    iget-object v0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->view:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Rect;->offset(II)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "LinkSpan bounds is empty for: "

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->tempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_5
    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 p0, 0x10

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    return-void
.end method
