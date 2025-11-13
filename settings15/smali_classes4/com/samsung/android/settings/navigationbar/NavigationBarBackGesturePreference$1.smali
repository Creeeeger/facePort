.class public final Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_0

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    iget-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mSensitivitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->applyBackGestureSensitivity()V

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
