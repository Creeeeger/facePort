.class public final synthetic Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

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

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    iget-boolean p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController;->$r8$lambda$8D8mcTp0VFY5rHYgOX3JeKdU6mY(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method
