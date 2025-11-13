.class public final Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->-$$Nest$fgetmDescriptionPreference(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;)Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->access$000(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonGestureUtil;->getMode(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->-$$Nest$mrefreshDescriptionPreference(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;)V

    return-void
.end method
