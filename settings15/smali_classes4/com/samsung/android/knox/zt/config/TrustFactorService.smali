.class public abstract Lcom/samsung/android/knox/zt/config/TrustFactorService;
.super Landroid/app/Service;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/config/TrustFactorService$BinderDeathReceiver;
    }
.end annotation


# static fields
.field public static final DETECT_DEATH_BINDER:Ljava/lang/String; = "detectDeathBinder"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mBinder:Lcom/samsung/android/knox/zt/config/ITrustFactorService;

.field public mBinderDeathReceiver:Lcom/samsung/android/knox/zt/config/TrustFactorService$BinderDeathReceiver;

.field public mListener:Lcom/samsung/android/knox/zt/config/ITrustFactorListener;

.field public mScore:J

.field public mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/knox/zt/config/TrustFactorService;

    const-string v0, "TrustFactorService"

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/zt/config/TrustFactorService$1;-><init>(Lcom/samsung/android/knox/zt/config/TrustFactorService;)V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mBinder:Lcom/samsung/android/knox/zt/config/ITrustFactorService;

    return-void
.end method


# virtual methods
.method public final getTrustScore()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mScore:J

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "detectDeathBinder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mBinderDeathReceiver:Lcom/samsung/android/knox/zt/config/TrustFactorService$BinderDeathReceiver;

    iput-object p1, v0, Lcom/samsung/android/knox/zt/config/TrustFactorService$BinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mBinder:Lcom/samsung/android/knox/zt/config/ITrustFactorService;

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorService$BinderDeathReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/zt/config/TrustFactorService$BinderDeathReceiver;-><init>(Lcom/samsung/android/knox/zt/config/TrustFactorService;)V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mBinderDeathReceiver:Lcom/samsung/android/knox/zt/config/TrustFactorService$BinderDeathReceiver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mListener:Lcom/samsung/android/knox/zt/config/ITrustFactorListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mScore:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mStarted:Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public abstract onFactorInit()V
.end method

.method public abstract onFactorStart(Ljava/util/Map;)V
.end method

.method public abstract onFactorStop()V
.end method

.method public final setTrustScore(J)Z
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mStarted:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mScore:J

    const-wide/16 v0, 0x64

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    iput-wide v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mScore:J

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    iput-wide v0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mScore:J

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/TrustFactorService;->mListener:Lcom/samsung/android/knox/zt/config/ITrustFactorListener;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/ITrustFactorListener;->onStateUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/zt/config/TrustFactorService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0
.end method
