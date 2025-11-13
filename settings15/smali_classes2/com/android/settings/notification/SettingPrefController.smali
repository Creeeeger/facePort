.class public abstract Lcom/android/settings/notification/SettingPrefController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field public final mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field public mPreference:Lcom/android/settings/notification/SettingPref;

.field public mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/notification/SettingPrefController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/settings/notification/SettingPrefController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/SettingPref;->isApplicable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v3, 0x0

    :cond_0
    instance-of v1, v3, Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_1

    move-object v1, v3

    check-cast v1, Landroidx/preference/TwoStatePreference;

    iput-object v1, v0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroidx/preference/TwoStatePreference;

    goto :goto_1

    :cond_1
    instance-of v1, v3, Landroidx/preference/DropDownPreference;

    if-eqz v1, :cond_3

    move-object v1, v3

    check-cast v1, Landroidx/preference/DropDownPreference;

    iput-object v1, v0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroidx/preference/DropDownPreference;

    iget-object v1, v0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    array-length v4, v1

    new-array v4, v4, [Ljava/lang/CharSequence;

    array-length v5, v1

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    aget v8, v1, v6

    invoke-virtual {v0, v7, v8}, Lcom/android/settings/notification/SettingPref;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    aget v7, v1, v6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1, v4}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroidx/preference/DropDownPreference;

    iput-object v5, v1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/settings/notification/SettingPref$1;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v4}, Lcom/android/settings/notification/SettingPref$1;-><init>(Lcom/android/settings/notification/SettingPref;Landroidx/fragment/app/FragmentActivity;I)V

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroidx/preference/DropDownPreference;

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/settings/notification/SettingPref$1;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v4}, Lcom/android/settings/notification/SettingPref$1;-><init>(Lcom/android/settings/notification/SettingPref;Landroidx/fragment/app/FragmentActivity;I)V

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/SettingPrefController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;-><init>(Lcom/android/settings/notification/SettingPrefController;)V

    iput-object p1, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    :cond_6
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object p0, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/SettingPref;->isApplicable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    invoke-static {v0}, Lcom/android/settings/notification/SettingPrefController;->access$000(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    invoke-static {v0}, Lcom/android/settings/notification/SettingPrefController;->access$000(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    iget-object v1, v1, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object v1, v1, Lcom/android/settings/notification/SettingPref;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    return-void
.end method
