.class public Landroid/telephony/satellite/stub/SatelliteImplBase;
.super Landroid/telephony/satellite/stub/SatelliteService;
.source "SatelliteImplBase.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SatelliteImplBase"


# instance fields
.field private final blacklist mBinder:Landroid/os/IBinder;

.field protected final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/satellite/stub/SatelliteService;-><init>()V

    new-instance v0, Landroid/telephony/satellite/stub/SatelliteImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/stub/SatelliteImplBase$1;-><init>(Landroid/telephony/satellite/stub/SatelliteImplBase;)V

    iput-object v0, p0, Landroid/telephony/satellite/stub/SatelliteImplBase;->mBinder:Landroid/os/IBinder;

    iput-object p1, p0, Landroid/telephony/satellite/stub/SatelliteImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public blacklist abortSendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/telephony/IIntegerConsumer;)V
    .locals 0

    return-void
.end method

.method public final blacklist getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteImplBase;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist pollPendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist requestIsSatelliteEnabled(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist requestIsSatelliteEnabledForCarrier(ILandroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist requestIsSatelliteSupported(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist requestSatelliteCapabilities(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist requestSatelliteEnabled(Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/telephony/IIntegerConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist requestSatelliteListeningEnabled(ZILandroid/telephony/IIntegerConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist requestSatelliteModemState(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist requestSignalStrength(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist requestTimeForNextSatelliteVisibility(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist setSatelliteEnabledForCarrier(IZLandroid/telephony/IIntegerConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V
    .locals 0

    return-void
.end method

.method public blacklist setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/IIntegerConsumer;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public blacklist startSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist startSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist stopSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist stopSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist updateSatelliteSubscription(Ljava/lang/String;Landroid/telephony/IIntegerConsumer;)V
    .locals 0

    return-void
.end method

.method public blacklist updateSystemSelectionChannels(Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/stub/SystemSelectionSpecifier;",
            ">;",
            "Landroid/telephony/IIntegerConsumer;",
            ")V"
        }
    .end annotation

    return-void
.end method
