.class public abstract Landroid/os/BatteryStats$ModemActivityCounter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ModemActivityCounter"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract blacklist getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;
.end method

.method public abstract blacklist getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;
.end method

.method public abstract blacklist getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;
.end method
