.class public final synthetic Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iget-boolean p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController;->$r8$lambda$6tIlq229NV3rCzoVwk2sAdEAuO4(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method
