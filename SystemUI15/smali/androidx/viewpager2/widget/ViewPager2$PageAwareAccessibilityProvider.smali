.class public final Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;
.super Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActionPageBackward:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;

.field public final mActionPageForward:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

.field public final synthetic this$0:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ViewPager2$1;)V

    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;-><init>(Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageForward:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;-><init>(Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageBackward:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;

    return-void
.end method


# virtual methods
.method public final updatePageAccessibilityActions()V
    .locals 12

    const v0, 0x1020048

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->removeActionWithId(Landroid/view/View;I)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    const v3, 0x1020049

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->removeActionWithId(Landroid/view/View;I)V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    const v4, 0x1020046

    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->removeActionWithId(Landroid/view/View;I)V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    const v5, 0x1020047

    invoke-static {v1, v5}, Landroidx/core/view/ViewCompat;->removeActionWithId(Landroid/view/View;I)V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    iget-object v6, v1, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    iget-boolean v7, v1, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    if-nez v7, :cond_2

    return-void

    :cond_2
    iget-object v7, v1, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    iget v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v9, 0x1

    iget-object v10, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageBackward:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageForward:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

    const/4 v11, 0x0

    if-nez v8, :cond_7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v4

    if-ne v4, v9, :cond_3

    move v2, v9

    :cond_3
    if-eqz v2, :cond_4

    move v4, v0

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    if-eqz v2, :cond_5

    move v0, v3

    :cond_5
    iget v2, v1, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    sub-int/2addr v6, v9

    if-ge v2, v6, :cond_6

    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v2, v4, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {v1, v2, v11, p0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    :cond_6
    iget p0, v1, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-lez p0, :cond_9

    new-instance p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {v1, p0, v11, v10}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    goto :goto_1

    :cond_7
    iget v0, v1, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    sub-int/2addr v6, v9

    if-ge v0, v6, :cond_8

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v0, v5, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {v1, v0, v11, p0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    :cond_8
    iget p0, v1, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-lez p0, :cond_9

    new-instance p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v4, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {v1, p0, v11, v10}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    :cond_9
    :goto_1
    return-void
.end method
