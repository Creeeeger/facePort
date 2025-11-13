.class Lcom/samsung/android/settings/security/SimPinLockSettings$1;
.super Landroid/os/Handler;
.source "SimPinLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/SimPinLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/SimPinLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/SimPinLockSettings;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings$1;->this$0:Lcom/samsung/android/settings/security/SimPinLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 94
    iget-object v1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings$1;->this$0:Lcom/samsung/android/settings/security/SimPinLockSettings;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->-$$Nest$fputmExceptionIsNull(Lcom/samsung/android/settings/security/SimPinLockSettings;Z)V

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 96
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const-wide/16 v2, 0x12c

    if-eq p1, v1, :cond_2

    const/16 v1, 0x65

    if-eq p1, v1, :cond_1

    const-string p0, "SimPinLockSettings"

    const-string p1, "Unexpected msg"

    .line 112
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    :cond_1
    new-instance p1, Lcom/samsung/android/settings/security/SimPinLockSettings$1$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/security/SimPinLockSettings$1$2;-><init>(Lcom/samsung/android/settings/security/SimPinLockSettings$1;)V

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 98
    :cond_2
    new-instance p1, Lcom/samsung/android/settings/security/SimPinLockSettings$1$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/security/SimPinLockSettings$1$1;-><init>(Lcom/samsung/android/settings/security/SimPinLockSettings$1;)V

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
