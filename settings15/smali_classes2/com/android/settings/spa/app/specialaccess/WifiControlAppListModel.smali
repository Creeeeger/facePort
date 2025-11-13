.class public final Lcom/android/settings/spa/app/specialaccess/WifiControlAppListModel;
.super Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appOps:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

.field public final broaderPermission:Ljava/lang/String;

.field public final footerResId:I

.field public final pageTitleResId:I

.field public final permission:Ljava/lang/String;

.field public final switchTitleResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "packageManagers"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;-><init>(Landroid/content/Context;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;)V

    const p1, 0x7f140929

    iput p1, p0, Lcom/android/settings/spa/app/specialaccess/WifiControlAppListModel;->pageTitleResId:I

    const p1, 0x7f140928

    iput p1, p0, Lcom/android/settings/spa/app/specialaccess/WifiControlAppListModel;->switchTitleResId:I

    const p1, 0x7f140927

    iput p1, p0, Lcom/android/settings/spa/app/specialaccess/WifiControlAppListModel;->footerResId:I

    new-instance p1, Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    const/16 v0, 0x47

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/android/settingslib/spaprivileged/model/app/AppOps;-><init>(IIZI)V

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/WifiControlAppListModel;->appOps:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    const-string p1, "android.permission.CHANGE_WIFI_STATE"

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/WifiControlAppListModel;->permission:Ljava/lang/String;

    const-string p1, "android.permission.NETWORK_SETTINGS"

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/WifiControlAppListModel;->broaderPermission:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppOps()Lcom/android/settingslib/spaprivileged/model/app/AppOps;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/WifiControlAppListModel;->appOps:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    return-object p0
.end method

.method public final getBroaderPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/WifiControlAppListModel;->broaderPermission:Ljava/lang/String;

    return-object p0
.end method

.method public final getFooterResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/WifiControlAppListModel;->footerResId:I

    return p0
.end method

.method public final getPageTitleResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/WifiControlAppListModel;->pageTitleResId:I

    return p0
.end method

.method public final getPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/WifiControlAppListModel;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public final getPermissionHasAppOpFlag()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getSwitchTitleResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/WifiControlAppListModel;->switchTitleResId:I

    return p0
.end method
