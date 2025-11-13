.class public interface abstract Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HistoryStepDetailsCalculator"
.end annotation


# virtual methods
.method public abstract blacklist clear()V
.end method

.method public abstract blacklist getHistoryStepDetails()Landroid/os/BatteryStats$HistoryStepDetails;
.end method
