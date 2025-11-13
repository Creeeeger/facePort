.class public abstract Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mUserId:I

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserId:I

    return-void
.end method


# virtual methods
.method public abstract getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
.end method

.method public getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public showAppSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showLabelAsTitle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    instance-of v3, p1, Lcom/android/settingslib/widget/TwoTargetPreference;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lcom/android/settingslib/widget/TwoTargetPreference;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/settingslib/widget/TwoTargetPreference;->mIconSize:I

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->showLabelAsTitle()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->showAppSummary()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move-object v1, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/android/settingslib/applications/DefaultAppInfo;->summary:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->showLabelAsTitle()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    move-object v1, v2

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Lcom/android/settings/Utils;->getSafeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_9
    const-string v1, "DefaultAppPrefControl"

    const-string v3, "No default app"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->showLabelAsTitle()Z

    move-result v1

    const v3, 0x7f140383

    if-eqz v1, :cond_a

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_4
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    instance-of v1, p1, Lcom/samsung/android/settings/widget/SecGearPreference;

    if-nez v1, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast p1, Lcom/samsung/android/settings/widget/SecGearPreference;

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;Landroid/content/Intent;)V

    iput-object v1, p1, Lcom/samsung/android/settings/widget/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_6

    :cond_c
    check-cast p1, Lcom/samsung/android/settings/widget/SecGearPreference;

    iput-object v2, p1, Lcom/samsung/android/settings/widget/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :goto_6
    return-void
.end method
