.class Landroid/telephony/satellite/stub/SatelliteGatewayService$1;
.super Landroid/telephony/satellite/stub/ISatelliteGateway$Stub;
.source "SatelliteGatewayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/stub/SatelliteGatewayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/satellite/stub/SatelliteGatewayService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/stub/SatelliteGatewayService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/satellite/stub/SatelliteGatewayService$1;->this$0:Landroid/telephony/satellite/stub/SatelliteGatewayService;

    invoke-direct {p0}, Landroid/telephony/satellite/stub/ISatelliteGateway$Stub;-><init>()V

    return-void
.end method
