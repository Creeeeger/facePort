.class Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderDeathReceiver"
.end annotation


# instance fields
.field public mReceiver:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->TAG:Ljava/lang/String;

    const-string v1, "Binder Death Detected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

.method public final handleBinderDeath()V
    .locals 0

    return-void
.end method

.method public final setReceiver(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    return-void
.end method
