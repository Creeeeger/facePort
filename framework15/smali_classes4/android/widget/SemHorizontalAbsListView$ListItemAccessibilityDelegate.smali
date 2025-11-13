.class Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SemHorizontalAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View$AccessibilityDelegate;->createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p1, v0, p2}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public whitelist performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_8

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5, v0}, Landroid/widget/SemHorizontalAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    sparse-switch p2, :sswitch_data_0

    return v4

    :sswitch_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p1, v0, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    return v1

    :cond_3
    return v4

    :sswitch_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p1, v0, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    return v1

    :cond_4
    return v4

    :sswitch_2
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v0, :cond_5

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, v3}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    return v1

    :cond_5
    return v4

    :sswitch_3
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v3

    if-eq v3, v0, :cond_6

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    return v1

    :cond_6
    return v4

    :cond_7
    :goto_0
    return v4

    :cond_8
    :goto_1
    return v4

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method
