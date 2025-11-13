.class public final synthetic Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController;->$r8$lambda$fijHqH1021tjuBaPUyU7WEnGoPU(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method
