.class public final synthetic Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;

.field public final synthetic f$1:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->updateSoftwareShortcutPreference(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;Landroid/content/Context;)V

    return-void
.end method
