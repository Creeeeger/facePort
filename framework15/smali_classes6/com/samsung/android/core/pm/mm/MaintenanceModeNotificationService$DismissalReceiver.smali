.class public Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService$DismissalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MaintenanceModeNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DismissalReceiver"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "MaintenanceMode"

    const-string v1, "Notification has been dismissed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    const/16 v0, 0x4d

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;->-$$Nest$smcreateNotificationChannel(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;->-$$Nest$smregisterNotification(Landroid/content/Context;)V

    return-void
.end method
