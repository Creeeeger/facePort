.class public final synthetic Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;

    iput-boolean p2, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;

    iget-boolean p0, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda5;->f$1:Z

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    sget-object v1, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->VOLUME_KEYS_SHORTCUT_SETTING:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreferenceController;

    iget-object v0, v0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->mShortcutTargets:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreferenceController;->setShortcutTargets(Ljava/util/Set;)V

    invoke-virtual {p1, p0}, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreferenceController;->setInSetupWizard(Z)V

    return-void
.end method
