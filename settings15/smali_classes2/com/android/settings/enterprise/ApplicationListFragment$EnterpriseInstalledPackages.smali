.class public Lcom/android/settings/enterprise/ApplicationListFragment$EnterpriseInstalledPackages;
.super Lcom/android/settings/enterprise/ApplicationListFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/enterprise/ApplicationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnterpriseInstalledPackages"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/enterprise/ApplicationListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildApplicationList(Lcom/android/settings/enterprise/ApplicationListPreferenceController;)V
    .locals 2

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getApplicationFeatureProvider()Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/applications/AppLister;-><init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V

    iput-object p1, v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;->mCallback:Lcom/android/settings/enterprise/ApplicationListPreferenceController;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3aa

    return p0
.end method
