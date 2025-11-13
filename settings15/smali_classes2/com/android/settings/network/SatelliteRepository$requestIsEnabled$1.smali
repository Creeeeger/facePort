.class public final Lcom/android/settings/network/SatelliteRepository$requestIsEnabled$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic $executor:Ljava/util/concurrent/Executor;

.field public final synthetic $satelliteManager:Landroid/telephony/satellite/SatelliteManager;


# direct methods
.method public constructor <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/SatelliteRepository$requestIsEnabled$1;->$satelliteManager:Landroid/telephony/satellite/SatelliteManager;

    iput-object p2, p0, Lcom/android/settings/network/SatelliteRepository$requestIsEnabled$1;->$executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/SatelliteRepository$requestIsEnabled$1;->$satelliteManager:Landroid/telephony/satellite/SatelliteManager;

    iget-object p0, p0, Lcom/android/settings/network/SatelliteRepository$requestIsEnabled$1;->$executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/settings/network/SatelliteRepository$requestIsEnabled$1$1;

    invoke-direct {v1, p1}, Lcom/android/settings/network/SatelliteRepository$requestIsEnabled$1$1;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-virtual {v0, p0, v1}, Landroid/telephony/satellite/SatelliteManager;->requestIsEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    const-string p0, "requestIsEnabled"

    return-object p0
.end method
