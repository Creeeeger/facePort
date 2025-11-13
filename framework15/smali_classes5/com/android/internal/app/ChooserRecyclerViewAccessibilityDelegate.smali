.class Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;
.super Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;
.source "ChooserRecyclerViewAccessibilityDelegate.java"


# instance fields
.field private final blacklist mConsumed:[I

.field private final blacklist mTempRect:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mConsumed:[I

    return-void
.end method

.method private blacklist ensureViewOnScreenVisibility(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/RecyclerView;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    iget-object v1, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v4, v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, v2, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->nestedVerticalScrollBy(Lcom/android/internal/widget/RecyclerView;I)V

    return-void
.end method

.method private blacklist nestedVerticalScrollBy(Lcom/android/internal/widget/RecyclerView;I)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView;->startNestedScroll(I)Z

    iget-object v0, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mConsumed:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mConsumed:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int/2addr p2, v0

    :cond_1
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->stopNestedScroll()V

    return-void
.end method


# virtual methods
.method public whitelist onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const v2, 0x8000

    if-ne v1, v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->ensureViewOnScreenVisibility(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;)V

    :cond_0
    return v0
.end method
