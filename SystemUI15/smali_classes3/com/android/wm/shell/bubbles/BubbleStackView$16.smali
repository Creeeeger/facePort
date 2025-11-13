.class public final Lcom/android/wm/shell/bubbles/BubbleStackView$16;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$prevBubbleIconView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$16;->val$prevBubbleIconView:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$16;->val$prevBubbleIconView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    return-void
.end method
