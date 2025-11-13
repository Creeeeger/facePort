.class public final Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    sget-object p1, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->VOLUME_KEYS_SHORTCUT_SETTING:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;

    const-class p2, Lcom/android/settings/accessibility/shortcuts/VolumeKeysShortcutOptionController;

    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->refreshPreferenceController(Ljava/lang/Class;)V

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->BUTTON_SHORTCUT_MODE_SETTING:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->BUTTON_SHORTCUT_SETTING:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->TRIPLE_TAP_SHORTCUT_SETTING:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;

    const-class p2, Lcom/android/settings/accessibility/shortcuts/TripleTapShortcutOptionController;

    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->refreshPreferenceController(Ljava/lang/Class;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->TWO_FINGERS_DOUBLE_TAP_SHORTCUT_SETTING:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;

    const-class p2, Lcom/android/settings/accessibility/shortcuts/TwoFingerDoubleTapShortcutOptionController;

    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->refreshPreferenceController(Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->QUICK_SETTINGS_SHORTCUT_SETTING:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;

    const-class p2, Lcom/android/settings/accessibility/shortcuts/QuickSettingsShortcutOptionController;

    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->refreshPreferenceController(Ljava/lang/Class;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;

    const-class p2, Lcom/android/settings/accessibility/shortcuts/GestureShortcutOptionController;

    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->refreshPreferenceController(Ljava/lang/Class;)V

    const-class p2, Lcom/android/settings/accessibility/shortcuts/FloatingButtonShortcutOptionController;

    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->refreshPreferenceController(Ljava/lang/Class;)V

    const-class p2, Lcom/android/settings/accessibility/shortcuts/NavButtonShortcutOptionController;

    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->refreshPreferenceController(Ljava/lang/Class;)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;

    iget-object p0, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->mShortcutTargets:Ljava/util/Set;

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/PreferredShortcuts;->updatePreferredShortcutsFromSettings(Landroid/content/Context;Ljava/util/Set;)V

    :cond_6
    return-void
.end method
