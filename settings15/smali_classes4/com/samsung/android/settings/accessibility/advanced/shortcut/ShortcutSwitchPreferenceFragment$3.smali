.class public final Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$3;
.super Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->mResetMenu:Landroid/view/MenuItem;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getDbKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;

    invoke-virtual {p2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getShortcutType()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getShortcutService(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/HashSet;

    sget-object v0, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->COMPONENT_NAME_SEPARATOR_STRING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p1, p2

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->preferenceControllers:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->updatePreferenceStates()V

    return-void
.end method
