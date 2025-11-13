.class public final synthetic Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher;

    iput-object p2, p0, Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher$$ExternalSyntheticLambda0;->f$2:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher;

    iget-object v1, p0, Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher$$ExternalSyntheticLambda0;->f$2:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "context cannot be null"

    if-eqz p0, :cond_0

    iget-object v3, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    move-object v4, v0

    check-cast v4, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "user cannot be null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, v4, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1, p0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    move-object p0, v0

    check-cast p0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/settings/Settings$DeviceAdminSettingsActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    check-cast v0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;

    iget-object p0, v0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
