.class public final Lcom/android/systemui/controls/management/adapter/SecStructureHolder$accessibilityDelegate$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/SecStructureHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/management/adapter/SecStructureHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder$accessibilityDelegate$1;->$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder$accessibilityDelegate$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecStructureHolder;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder$accessibilityDelegate$1;->$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder$accessibilityDelegate$1;->$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    iget-object v0, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;)V

    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder$accessibilityDelegate$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecStructureHolder;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->structureAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    :cond_0
    return-void
.end method
