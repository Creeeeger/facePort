.class public final Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;
.super Lcom/android/settings/applications/AppLister;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCallback:Lcom/android/settings/enterprise/ApplicationListPreferenceController;


# virtual methods
.method public final includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/settings/applications/AppLister;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v0, p0, p1}, Lcom/android/settings/applications/InstalledAppCounter;->includeInCount(ILandroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public final onAppListBuilt(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;->mCallback:Lcom/android/settings/enterprise/ApplicationListPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->onListOfAppsResult(Ljava/util/List;)V

    return-void
.end method
