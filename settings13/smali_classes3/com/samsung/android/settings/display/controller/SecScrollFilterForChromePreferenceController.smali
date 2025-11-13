.class public Lcom/samsung/android/settings/display/controller/SecScrollFilterForChromePreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "SecScrollFilterForChromePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/SecSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "sem_scroll_filter_for_chrome"

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecScrollFilterForChromePreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "sem_scroll_filter_for_chrome"

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScrollFilterForChromePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    .line 89
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "sem_scroll_filter_for_chrome"

    return-object p0
.end method

.method public getUriListRequiringObservation()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecScrollFilterForChromePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.android.chrome"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v4, 0x1745205d

    cmp-long p0, v2, v4

    if-ltz p0, :cond_0

    move p0, v0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "PrefControllerMixin"

    const-string v3, "Error while calling packageInfo.getLongVersionCode"

    .line 111
    invoke-static {v2, v3, p0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move p0, v1

    .line 114
    :goto_0
    sget-boolean v2, Lcom/samsung/android/rune/ViewRune;->VIEWCORE_SCROLL_FILTER:Z

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 58
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecScrollFilterForChromePreferenceController;->mContext:Landroid/content/Context;

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 p1, 0xf

    const/4 p2, 0x1

    .line 64
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 69
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v4, "com.android.chrome"

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/app/ActivityManager;->semRemoveTask(II)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public updatePreference(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method
