.class final Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $cb:Landroid/telephony/satellite/SatelliteModemStateCallback;

.field final synthetic $registered:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $sm:Landroid/telephony/satellite/SatelliteManager;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/telephony/satellite/SatelliteManager;Landroid/telephony/satellite/SatelliteModemStateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$1;->$registered:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$1;->$sm:Landroid/telephony/satellite/SatelliteManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$1;->$cb:Landroid/telephony/satellite/SatelliteModemStateCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$1;->$registered:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$1;->$sm:Landroid/telephony/satellite/SatelliteManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$1;->$cb:Landroid/telephony/satellite/SatelliteModemStateCallback;

    invoke-virtual {v0, p0}, Landroid/telephony/satellite/SatelliteManager;->unregisterForModemStateChanged(Landroid/telephony/satellite/SatelliteModemStateCallback;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
