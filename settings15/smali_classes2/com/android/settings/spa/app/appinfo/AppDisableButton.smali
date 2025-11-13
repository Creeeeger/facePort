.class public final Lcom/android/settings/spa/app/appinfo/AppDisableButton;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appButtonRepository:Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

.field public final applicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

.field public final context:Landroid/content/Context;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final resources:Landroid/content/res/Resources;

.field public final userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V
    .locals 1

    const-string v0, "packageInfoPresenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iget-object p1, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->appButtonRepository:Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->resources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->packageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->userManager:Landroid/os/UserManager;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getApplicationFeatureProvider()Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->applicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
