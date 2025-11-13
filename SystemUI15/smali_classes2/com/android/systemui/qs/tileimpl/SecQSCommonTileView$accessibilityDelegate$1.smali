.class public final Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$accessibilityDelegate$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$accessibilityDelegate$1;->this$0:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const-class v0, Landroid/widget/Button;

    const-string v0, "android.widget.Button"

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$accessibilityDelegate$1;->this$0:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->lastState:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    move p1, v1

    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    :goto_0
    return-void
.end method
