.class Lcom/samsung/android/settings/security/SimPinLockSettings$1$2;
.super Ljava/lang/Object;
.source "SimPinLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/security/SimPinLockSettings$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/security/SimPinLockSettings$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/SimPinLockSettings$1;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/samsung/android/settings/security/SimPinLockSettings$1$2;->this$1:Lcom/samsung/android/settings/security/SimPinLockSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 107
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings$1$2;->this$1:Lcom/samsung/android/settings/security/SimPinLockSettings$1;

    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPinLockSettings$1;->this$0:Lcom/samsung/android/settings/security/SimPinLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->-$$Nest$fgetmExceptionIsNull(Lcom/samsung/android/settings/security/SimPinLockSettings;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/security/SimPinLockSettings;->-$$Nest$miccPinChanged(Lcom/samsung/android/settings/security/SimPinLockSettings;Z)V

    return-void
.end method
