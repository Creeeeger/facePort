.class public final Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/satellite/SatelliteModemStateCallback;


# instance fields
.field public final synthetic $completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic $satelliteManager:Landroid/telephony/satellite/SatelliteManager;

.field public final synthetic this$0:Lcom/android/settings/network/SatelliteRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/SatelliteRepository;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroid/telephony/satellite/SatelliteManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2$callback$1;->this$0:Lcom/android/settings/network/SatelliteRepository;

    iput-object p2, p0, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2$callback$1;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p3, p0, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2$callback$1;->$satelliteManager:Landroid/telephony/satellite/SatelliteManager;

    return-void
.end method


# virtual methods
.method public final onSatelliteModemStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2$callback$1;->this$0:Lcom/android/settings/network/SatelliteRepository;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Satellite modem state changed: state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isSessionStarted="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SatelliteRepository"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2$callback$1;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2$callback$1;->$satelliteManager:Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {p1, p0}, Landroid/telephony/satellite/SatelliteManager;->unregisterForModemStateChanged(Landroid/telephony/satellite/SatelliteModemStateCallback;)V

    return-void
.end method
