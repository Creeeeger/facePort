.class public final Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;
.super Lcom/android/settings/applications/InstalledAppCounter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;


# virtual methods
.method public final onCountComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    invoke-interface {p0, p1}, Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;->onNumberOfAppsResult(I)V

    return-void
.end method
