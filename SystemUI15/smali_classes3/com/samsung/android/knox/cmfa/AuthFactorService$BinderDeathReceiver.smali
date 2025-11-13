.class Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mReceiver:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/cmfa/AuthFactorService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/cmfa/AuthFactorService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;-><init>(Lcom/samsung/android/knox/cmfa/AuthFactorService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

    const-string v1, "Binder Death Detected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

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

    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    return-void
.end method
