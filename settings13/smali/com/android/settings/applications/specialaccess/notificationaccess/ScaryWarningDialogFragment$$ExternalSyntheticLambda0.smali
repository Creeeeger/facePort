.class public final synthetic Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

.field public final synthetic f$3:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;ZLcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;

    iput-boolean p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    iput-object p4, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;->f$3:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;

    iget-boolean v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;->f$3:Landroid/content/ComponentName;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;->$r8$lambda$Ol87jnOIJaBfpYnQa5vXDpPbSYQ(Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;ZLcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V

    return-void
.end method
