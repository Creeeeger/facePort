.class public final Lcom/android/systemui/biometrics/AuthContainerView$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthContainerView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView$1;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    iget-object v1, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$1;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    invoke-static {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->access$000(Lcom/android/systemui/biometrics/AuthContainerView;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f13022b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    return-void
.end method
