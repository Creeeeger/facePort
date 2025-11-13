.class public abstract Landroid/telephony/satellite/stub/SatelliteGatewayService;
.super Landroid/app/Service;
.source "SatelliteGatewayService.java"


# static fields
.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.satellite.SatelliteGatewayService"

.field private static final blacklist TAG:Ljava/lang/String; = "SatelliteGatewayService"


# instance fields
.field private final blacklist mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/telephony/satellite/stub/SatelliteGatewayService$1;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/stub/SatelliteGatewayService$1;-><init>(Landroid/telephony/satellite/stub/SatelliteGatewayService;)V

    iput-object v0, p0, Landroid/telephony/satellite/stub/SatelliteGatewayService;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final blacklist getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteGatewayService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.telephony.satellite.SatelliteGatewayService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SatelliteGatewayService"

    const-string v1, "SatelliteGatewayService bound"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteGatewayService;->mBinder:Landroid/os/IBinder;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
