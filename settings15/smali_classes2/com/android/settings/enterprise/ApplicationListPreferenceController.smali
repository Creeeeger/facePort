.class public final Lcom/android/settings/enterprise/ApplicationListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public final mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field public final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;Landroid/content/pm/PackageManager;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-interface {p2, p0}, Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;->buildApplicationList(Lcom/android/settings/enterprise/ApplicationListPreferenceController;)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onListOfAppsResult(Ljava/util/List;)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/UserAppInfo;

    new-instance v6, Lcom/android/settingslib/widget/AppPreference;

    invoke-direct {v6, v0}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    iget-object v7, v5, Lcom/android/settings/applications/UserAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, v5, Lcom/android/settings/applications/UserAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
