.class Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "NavigationBarBackGesturePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p0, 0x1

    .line 59
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 60
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 61
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_0

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->-$$Nest$fgetmSensitivitySeekBar(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->-$$Nest$fputmValue(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;I)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->-$$Nest$mapplyBackGestureSensitivity(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;)V

    .line 71
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
