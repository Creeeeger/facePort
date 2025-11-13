.class public abstract Landroid/os/BatteryStats$Uid$Sensor;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Sensor"
.end annotation


# static fields
.field public static final greylist GPS:I = -0x2710

.field public static final blacklist actualGPS:I = -0x2711


# direct methods
.method public constructor greylist-max-p <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist getHandle()I
.end method

.method public abstract greylist-max-o getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist getSensorTime()Landroid/os/BatteryStats$Timer;
.end method
