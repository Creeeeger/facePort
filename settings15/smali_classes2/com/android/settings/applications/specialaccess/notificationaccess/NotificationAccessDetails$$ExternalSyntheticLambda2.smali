.class public final synthetic Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda2;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda2;->f$1:Landroid/content/ComponentName;

    iget-object v1, v0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
