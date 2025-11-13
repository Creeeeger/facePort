.class public final Lcom/android/settingslib/enterprise/SupervisedDeviceActionDisabledByAdminController;
.super Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mRestriction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;-><init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)V

    iput-object p2, p0, Lcom/android/settingslib/enterprise/SupervisedDeviceActionDisabledByAdminController;->mRestriction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAdminSupportContentString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mStringProvider:Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f140d11

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAdminSupportTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mStringProvider:Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f140d14

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPositiveButtonListener(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/DialogInterface$OnClickListener;
    .locals 4

    iget-object v0, p2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_SUPERVISOR_RESTRICTED_SETTING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "policy"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "user_restrictions"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settingslib/enterprise/SupervisedDeviceActionDisabledByAdminController;->mRestriction:Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    iget-object p2, p2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v1

    :cond_1
    new-instance p2, Lcom/android/settingslib/enterprise/SupervisedDeviceActionDisabledByAdminController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, p0}, Lcom/android/settingslib/enterprise/SupervisedDeviceActionDisabledByAdminController$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object p2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final setupLearnMoreButton(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
