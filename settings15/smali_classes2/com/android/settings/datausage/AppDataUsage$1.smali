.class public final Lcom/android/settings/datausage/AppDataUsage$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mPcoSettingObserver onChange(selfChange="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppDataUsage"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "background_data_by_pco"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string p1, "mPcoSettingObserver restrictBackgroundByPco: "

    invoke-static {p1, v0, v2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object v0, p1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object v0, p1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object p1, p1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p1, p1, Lcom/android/settingslib/AppItem;->key:I

    if-lez p1, :cond_6

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object v0, p1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object v0, p1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object v0, p1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedDataPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object v0, p1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    :goto_1
    return-void

    :cond_6
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Returning due to invalid app item key: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p0, p0, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_7
    :goto_3
    const-string p0, "Invalid context or content-resolver"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
