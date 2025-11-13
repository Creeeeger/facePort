.class public final synthetic Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

.field public final synthetic f$3:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;ZLcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;

    iput-boolean p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    iput-object p4, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;->f$3:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;

    iget-boolean p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;->f$3:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p2, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    iget-object p1, v0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1, p0, v1}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    new-instance p1, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->refreshUi()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController;->deleteRules(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController;->setAccess(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    :goto_0
    return-void
.end method
