.class public final Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;
.super Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appOps:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

.field public final footerResId:I

.field public final pageTitleResId:I

.field public final permission:Ljava/lang/String;

.field public final roleManager:Landroid/app/role/RoleManager;

.field public final switchTitleResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;-><init>(Landroid/content/Context;)V

    const v0, 0x7f14177c

    iput v0, p0, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;->pageTitleResId:I

    const v0, 0x7f1402f2

    iput v0, p0, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;->switchTitleResId:I

    const v0, 0x7f1402f3

    iput v0, p0, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;->footerResId:I

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8b

    const/4 v4, 0x2

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/settingslib/spaprivileged/model/app/AppOps;-><init>(IIZI)V

    iput-object v0, p0, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;->appOps:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    const-string v0, "android.permission.MEDIA_ROUTING_CONTROL"

    iput-object v0, p0, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;->permission:Ljava/lang/String;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;->roleManager:Landroid/app/role/RoleManager;

    return-void
.end method


# virtual methods
.method public final getAppOps()Lcom/android/settingslib/spaprivileged/model/app/AppOps;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;->appOps:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    return-object p0
.end method

.method public final getFooterResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;->footerResId:I

    return p0
.end method

.method public final getPageTitleResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;->pageTitleResId:I

    return p0
.end method

.method public final getPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public final getSwitchTitleResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;->switchTitleResId:I

    return p0
.end method

.method public final bridge synthetic isChangeable(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)Z
    .locals 0

    check-cast p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;->isChangeable(Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;)Z

    move-result p0

    return p0
.end method

.method public final isChangeable(Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;)Z
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/media/flags/Flags;->enablePrivilegedRoutingForMediaRoutingControl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->isChangeable(Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;->roleManager:Landroid/app/role/RoleManager;

    if-eqz p0, :cond_0

    const-string v0, "android.app.role.COMPANION_DEVICE_WATCH"

    invoke-virtual {p0, v0}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;->app:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final bridge synthetic setAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Z)V
    .locals 0

    check-cast p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppsListModel;->setAllowed(Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;Z)V

    return-void
.end method

.method public final setAllowed(Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;Z)V
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->setAllowed(Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;Z)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->context:Landroid/content/Context;

    const/16 v0, 0x810

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
