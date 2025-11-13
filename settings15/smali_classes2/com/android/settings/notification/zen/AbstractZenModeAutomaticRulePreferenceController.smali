.class public abstract Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field public mParent:Landroidx/fragment/app/Fragment;

.field public mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public static getSettingsActivity(Landroid/content/pm/PackageManager;Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;
    .locals 6

    const-string v0, "PrefControllerMixin"

    const-string v1, "Config activity not in owner package for "

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_1

    :cond_1
    if-nez p2, :cond_3

    :cond_2
    move-object p2, v3

    goto :goto_1

    :cond_3
    instance-of v4, p2, Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_4

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v4

    goto :goto_1

    :cond_4
    iget-object p2, p2, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    if-eqz p2, :cond_2

    const-string v4, "android.service.zen.automatic.configurationActivity"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_7

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    if-ne v2, p0, :cond_6

    return-object p2

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    const-string p0, "Failed to find config activity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_7
    :goto_2
    return-object p2
.end method


# virtual methods
.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getAutomaticZenRules()[Ljava/util/Map$Entry;

    return-void
.end method
