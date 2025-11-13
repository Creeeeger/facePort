.class public Landroid/hardware/SensorEvent;
.super Ljava/lang/Object;
.source "SensorEvent.java"


# instance fields
.field public whitelist accuracy:I

.field public whitelist firstEventAfterDiscontinuity:Z

.field public whitelist sensor:Landroid/hardware/Sensor;

.field public whitelist timestamp:J

.field public final whitelist values:[F


# direct methods
.method constructor greylist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [F

    iput-object v0, p0, Landroid/hardware/SensorEvent;->values:[F

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/Sensor;IJ[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iput p2, p0, Landroid/hardware/SensorEvent;->accuracy:I

    iput-wide p3, p0, Landroid/hardware/SensorEvent;->timestamp:J

    iput-object p5, p0, Landroid/hardware/SensorEvent;->values:[F

    return-void
.end method
