.class public abstract Lcom/samsung/android/edge/EdgeManagerInternal;
.super Ljava/lang/Object;
.source "EdgeManagerInternal.java"


# static fields
.field public static final blacklist NOTIFICATION_KEY_BUBBLE:Ljava/lang/String; = "bubble"

.field public static final blacklist NOTIFICATION_KEY_CAN_BYPASSDND:Ljava/lang/String; = "canBypassDnd"

.field public static final blacklist NOTIFICATION_KEY_IS_HEAD_UP:Ljava/lang/String; = "isHeadUp"

.field public static final blacklist NOTIFICATION_KEY_IS_INTERRUPT:Ljava/lang/String; = "isInterrupt"

.field public static final blacklist NOTIFICATION_KEY_IS_UPDATE:Ljava/lang/String; = "isUpdate"

.field public static final blacklist NOTIFICATION_KEY_SMART_POPUP:Ljava/lang/String; = "smartPopup"

.field public static final blacklist NOTIFICATION_KEY_SOUND:Ljava/lang/String; = "sound"

.field public static final blacklist NOTIFICATION_KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final blacklist NOTIFICATION_KEY_VISIBILITY:Ljava/lang/String; = "visibility"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist hideForNotification(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public abstract blacklist hideForWakeLock(Ljava/lang/String;I)V
.end method

.method public abstract blacklist hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist setSuppressed(I)V
.end method

.method public abstract blacklist showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
.end method

.method public abstract blacklist showForResumedActivity(Landroid/content/ComponentName;)V
.end method

.method public abstract blacklist showForToast(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract blacklist showForWakeLock(Ljava/lang/String;I)Z
.end method

.method public abstract blacklist showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract blacklist showForWakeUp(Ljava/lang/String;I)Z
.end method

.method public abstract blacklist showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract blacklist statusBarDisabled(II)V
.end method
