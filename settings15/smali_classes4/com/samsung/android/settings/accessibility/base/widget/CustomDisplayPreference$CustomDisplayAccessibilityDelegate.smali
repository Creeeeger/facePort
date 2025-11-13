.class public final Lcom/samsung/android/settings/accessibility/base/widget/CustomDisplayPreference$CustomDisplayAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final description:Ljava/lang/CharSequence;

.field public final isSelected:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/CustomDisplayPreference$CustomDisplayAccessibilityDelegate;->isSelected:Z

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/CustomDisplayPreference$CustomDisplayAccessibilityDelegate;->description:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    sget-object p0, Lcom/samsung/android/settings/accessibility/base/widget/CustomDisplayPreference;->ACCESSIBILITY_EVENT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    iget-object v1, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v0, Lcom/samsung/android/settings/accessibility/base/widget/CustomDisplayPreference;->ACCESSIBILITY_EVENT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/CustomDisplayPreference$CustomDisplayAccessibilityDelegate;->isSelected:Z

    if-eqz v0, :cond_0

    const v0, 0x7f142a95

    goto :goto_0

    :cond_0
    const v0, 0x7f141a58

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setStateDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/CustomDisplayPreference$CustomDisplayAccessibilityDelegate;->description:Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
