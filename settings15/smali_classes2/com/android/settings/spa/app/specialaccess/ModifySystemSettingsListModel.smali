.class public final Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsListModel;
.super Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appOps:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

.field public final footerResId:I

.field public final pageTitleResId:I

.field public final permission:Ljava/lang/String;

.field public final switchTitleResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1437ef

    iput p1, p0, Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsListModel;->pageTitleResId:I

    const p1, 0x7f141c19

    iput p1, p0, Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsListModel;->switchTitleResId:I

    const p1, 0x7f1437ed

    iput p1, p0, Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsListModel;->footerResId:I

    new-instance p1, Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    const/16 v0, 0x17

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p1, v0, v1, v1, v2}, Lcom/android/settingslib/spaprivileged/model/app/AppOps;-><init>(IIZI)V

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsListModel;->appOps:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    const-string p1, "android.permission.WRITE_SETTINGS"

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsListModel;->permission:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppOps()Lcom/android/settingslib/spaprivileged/model/app/AppOps;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsListModel;->appOps:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    return-object p0
.end method

.method public final getFooterResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsListModel;->footerResId:I

    return p0
.end method

.method public final getPageTitleResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsListModel;->pageTitleResId:I

    return p0
.end method

.method public final getPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsListModel;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public final getSwitchTitleResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsListModel;->switchTitleResId:I

    return p0
.end method

.method public final bridge synthetic setAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Z)V
    .locals 0

    check-cast p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsListModel;->setAllowed(Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;Z)V

    return-void
.end method

.method public final setAllowed(Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;Z)V
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->setAllowed(Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;Z)V

    if-eqz p2, :cond_0

    const/16 p1, 0x306

    goto :goto_0

    :cond_0
    const/16 p1, 0x307

    :goto_0
    sget-object p2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->context:Landroid/content/Context;

    const-string v0, ""

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
