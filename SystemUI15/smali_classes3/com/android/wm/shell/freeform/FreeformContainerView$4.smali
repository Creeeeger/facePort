.class public final Lcom/android/wm/shell/freeform/FreeformContainerView$4;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

.field public final synthetic val$iconListSize:I

.field public final synthetic val$label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->val$label:Ljava/lang/String;

    iput p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->val$iconListSize:I

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v0, 0x10

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->val$label:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->val$iconListSize:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    if-eqz v0, :cond_2

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
