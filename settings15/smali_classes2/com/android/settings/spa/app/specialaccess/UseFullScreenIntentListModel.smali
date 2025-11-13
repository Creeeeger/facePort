.class public final Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentListModel;
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
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;-><init>(Landroid/content/Context;)V

    const p1, 0x7f141048

    iput p1, p0, Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentListModel;->pageTitleResId:I

    const p1, 0x7f141c16

    iput p1, p0, Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentListModel;->switchTitleResId:I

    const p1, 0x7f140ff7

    iput p1, p0, Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentListModel;->footerResId:I

    new-instance p1, Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x85

    const/4 v3, 0x2

    invoke-direct {p1, v2, v0, v1, v3}, Lcom/android/settingslib/spaprivileged/model/app/AppOps;-><init>(IIZI)V

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentListModel;->appOps:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    const-string p1, "android.permission.USE_FULL_SCREEN_INTENT"

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentListModel;->permission:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppOps()Lcom/android/settingslib/spaprivileged/model/app/AppOps;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentListModel;->appOps:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    return-object p0
.end method

.method public final getFooterResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentListModel;->footerResId:I

    return p0
.end method

.method public final getPageTitleResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentListModel;->pageTitleResId:I

    return p0
.end method

.method public final getPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentListModel;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public final getSwitchTitleResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentListModel;->switchTitleResId:I

    return p0
.end method
