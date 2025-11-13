.class public Lcom/android/settings/development/BugReportPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BugReportPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/development/BugReportPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 50
    iput-object p1, p0, Lcom/android/settings/development/BugReportPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bugreport"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 56
    iget-object p0, p0, Lcom/android/settings/development/BugReportPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onDeveloperOptionsEnabled()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/android/settings/development/BugReportPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v2, "isGoogleCrashReportedAllowed"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 93
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 95
    :cond_1
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    :goto_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/development/BugReportPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "false"

    .line 64
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/settings/development/BugReportPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v3, "isDeveloperModeAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 68
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    iget-object p0, p0, Lcom/android/settings/development/BugReportPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v5, "isGoogleCrashReportedAllowed"

    invoke-static {p0, v4, v5, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-eq p0, v2, :cond_3

    if-ne p0, v3, :cond_2

    move v1, v3

    .line 74
    :cond_2
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method
