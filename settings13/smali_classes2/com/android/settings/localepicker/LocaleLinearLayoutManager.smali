.class public Lcom/android/settings/localepicker/LocaleLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "LocaleLinearLayoutManager.java"


# instance fields
.field private final mActionMoveBottom:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveDown:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveTop:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveUp:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionRemove:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V
    .locals 2

    .line 55
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    .line 59
    new-instance p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v0, Lcom/android/settings/R$id;->action_drag_move_up:I

    sget v1, Lcom/android/settings/R$string;->action_drag_label_move_up:I

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveUp:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 62
    new-instance p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v0, Lcom/android/settings/R$id;->action_drag_move_down:I

    sget v1, Lcom/android/settings/R$string;->action_drag_label_move_down:I

    .line 64
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveDown:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 65
    new-instance p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v0, Lcom/android/settings/R$id;->action_drag_move_top:I

    sget v1, Lcom/android/settings/R$string;->action_drag_label_move_top:I

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveTop:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 68
    new-instance p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v0, Lcom/android/settings/R$id;->action_drag_move_bottom:I

    sget v1, Lcom/android/settings/R$string;->action_drag_label_move_bottom:I

    .line 70
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveBottom:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 71
    new-instance p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v0, Lcom/android/settings/R$id;->action_drag_remove:I

    sget v1, Lcom/android/settings/R$string;->action_drag_label_remove:I

    .line 73
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionRemove:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 82
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    .line 83
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    .line 84
    check-cast p3, Lcom/android/settings/localepicker/LocaleDragCell;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 95
    invoke-virtual {p4, p3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p3, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->isEditMode()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_1

    .line 111
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveUp:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 112
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveTop:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_1
    if-ge v1, p1, :cond_2

    .line 115
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveDown:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 116
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveBottom:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_2
    return-void
.end method

.method public performAccessibilityActionForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    .line 130
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    .line 131
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 134
    sget v2, Lcom/android/settings/R$id;->action_drag_move_up:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p4, v2, :cond_0

    if-lez v1, :cond_4

    .line 136
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    add-int/lit8 p2, v1, -0x1

    invoke-virtual {p1, v1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    :goto_0
    move v3, v4

    goto :goto_1

    .line 139
    :cond_0
    sget v2, Lcom/android/settings/R$id;->action_drag_move_down:I

    if-ne p4, v2, :cond_1

    add-int/lit8 p1, v1, 0x1

    if-ge p1, v0, :cond_4

    .line 141
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p2, v1, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    goto :goto_0

    .line 144
    :cond_1
    sget v2, Lcom/android/settings/R$id;->action_drag_move_top:I

    if-ne p4, v2, :cond_2

    if-eqz v1, :cond_4

    .line 146
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1, v1, v3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    goto :goto_0

    .line 149
    :cond_2
    sget v2, Lcom/android/settings/R$id;->action_drag_move_bottom:I

    if-ne p4, v2, :cond_3

    sub-int/2addr v0, v4

    if-eq v1, v0, :cond_4

    .line 151
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    goto :goto_0

    .line 154
    :cond_3
    sget v2, Lcom/android/settings/R$id;->action_drag_remove:I

    if-ne p4, v2, :cond_6

    if-le v0, v4, :cond_4

    .line 156
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->removeItem(I)V

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 164
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    :cond_5
    return v3

    .line 160
    :cond_6
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
