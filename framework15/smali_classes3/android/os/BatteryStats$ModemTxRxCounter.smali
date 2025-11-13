.class public abstract Landroid/os/BatteryStats$ModemTxRxCounter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ModemTxRxCounter"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getRxByteCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract blacklist getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract blacklist getTxByteCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract blacklist getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;
.end method
