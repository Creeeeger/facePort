.class public final Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic $executor:Ljava/util/concurrent/Executor;

.field public final synthetic $satelliteManager:Landroid/telephony/satellite/SatelliteManager;

.field public final synthetic this$0:Lcom/android/settings/network/SatelliteRepository;


# direct methods
.method public constructor <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Lcom/android/settings/network/SatelliteRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2;->$satelliteManager:Landroid/telephony/satellite/SatelliteManager;

    iput-object p2, p0, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2;->$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2;->this$0:Lcom/android/settings/network/SatelliteRepository;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2$callback$1;

    iget-object v1, p0, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2;->$satelliteManager:Landroid/telephony/satellite/SatelliteManager;

    iget-object v2, p0, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2;->this$0:Lcom/android/settings/network/SatelliteRepository;

    invoke-direct {v0, v2, p1, v1}, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2$callback$1;-><init>(Lcom/android/settings/network/SatelliteRepository;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroid/telephony/satellite/SatelliteManager;)V

    iget-object p0, p0, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2;->$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, p0, v0}, Landroid/telephony/satellite/SatelliteManager;->registerForModemStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteModemStateCallback;)I

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, "Failed to register for satellite modem state change: "

    const-string v1, "SatelliteRepository"

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V

    :cond_0
    const-string p0, "requestIsSessionStarted"

    return-object p0
.end method
