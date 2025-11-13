.class public final Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    iget v1, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->batteryCapacity:F

    const v2, 0x3e23d70a    # 0.16f

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-boolean v4, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->suppressed:Z

    const-class v5, Lcom/android/systemui/stylus/StylusUsiPowerUI;

    if-nez v4, :cond_1

    iget-object v0, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->inputManager:Landroid/hardware/input/InputManager;

    sget-object v4, Lcom/android/systemui/stylus/StylusUsiPowerUI$hasConnectedBluetoothStylus$1;->INSTANCE:Lcom/android/systemui/stylus/StylusUsiPowerUI$hasConnectedBluetoothStylus$1;

    invoke-static {v0, v4}, Lcom/android/systemui/shared/hardware/InputManagerKt;->hasInputDevice(Landroid/hardware/input/InputManager;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const v4, 0x7f080a8c

    iput v4, v1, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v6, "StylusUsiPowerUI.dismiss"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v6, 0x4000000

    invoke-static {v1, v2, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object v1, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v7, "StylusUsiPowerUI.click"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v1, v2, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->batteryCapacity:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v6, 0x7f1312d7

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    const v4, 0x7f1312d8

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iput v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    iput-boolean v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget v1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/stylus/StylusUiEvent;->STYLUS_LOW_BATTERY_NOTIFICATION_SHOWN:Lcom/android/systemui/stylus/StylusUiEvent;

    invoke-virtual {p0, v1}, Lcom/android/systemui/stylus/StylusUsiPowerUI;->logUiEvent(Lcom/android/systemui/stylus/StylusUiEvent;)V

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    sget v1, Lcom/android/systemui/stylus/StylusUsiPowerUI;->USI_NOTIFICATION_ID:I

    invoke-virtual {p0, v1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    iget-boolean v3, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->suppressed:Z

    if-nez v3, :cond_2

    if-nez v1, :cond_3

    :cond_2
    sget v3, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->instanceId:Lcom/android/internal/logging/InstanceId;

    sget v4, Lcom/android/systemui/stylus/StylusUsiPowerUI;->USI_NOTIFICATION_ID:I

    iget-object v0, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget-object v0, v0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_3
    if-nez v1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    iput-boolean v2, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->suppressed:Z

    :cond_4
    return-void
.end method
