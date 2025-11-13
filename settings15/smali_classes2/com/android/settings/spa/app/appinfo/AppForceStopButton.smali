.class public final Lcom/android/settings/spa/app/appinfo/AppForceStopButton;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appForceStopRepository:Lcom/android/settings/spa/app/appinfo/AppForceStopRepository;

.field public final context:Landroid/content/Context;

.field public final packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

.field public final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V
    .locals 2

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppForceStopRepository;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/app/appinfo/AppForceStopRepository;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    const-string v1, "packageInfoPresenter"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppForceStopButton;->packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppForceStopButton;->appForceStopRepository:Lcom/android/settings/spa/app/appinfo/AppForceStopRepository;

    iget-object p1, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppForceStopButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppForceStopButton;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final getAdminRestriction(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppForceStopButton;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppForceStopButton;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppForceStopButton;->context:Landroid/content/Context;

    const-string v0, "no_control_apps"

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result p1

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method
