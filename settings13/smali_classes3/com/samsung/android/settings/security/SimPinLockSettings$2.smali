.class Lcom/samsung/android/settings/security/SimPinLockSettings$2;
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

    .line 120
    iput-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings$2;->this$0:Lcom/samsung/android/settings/security/SimPinLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 123
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings$2;->this$0:Lcom/samsung/android/settings/security/SimPinLockSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/security/SimPinLockSettings;->mH:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings$2;->this$0:Lcom/samsung/android/settings/security/SimPinLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->-$$Nest$mshowSoftInput(Lcom/samsung/android/settings/security/SimPinLockSettings;)V

    :goto_0
    return-void
.end method
