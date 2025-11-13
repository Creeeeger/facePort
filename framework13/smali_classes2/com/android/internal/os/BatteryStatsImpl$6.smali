.class Lcom/android/internal/os/BatteryStatsImpl$6;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic blacklist val$newState:I

.field final synthetic blacklist val$oldState:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 14980
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->val$oldState:I

    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->val$newState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 14982
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryPermil()I

    move-result v0

    .line 14983
    .local v0, "currentBatteryPermil":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryCCInfo()I

    move-result v1

    .line 14984
    .local v1, "currentBatteryCoulombCounter":I
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->val$oldState:I

    invoke-static {v2, v3, v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$mupdateOldDischargeScreenLevelPermilLocked(Lcom/android/internal/os/BatteryStatsImpl;II)V

    .line 14985
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->val$newState:I

    invoke-static {v2, v3, v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$mupdateNewDischargeScreenLevelPermilLocked(Lcom/android/internal/os/BatteryStatsImpl;II)V

    .line 14986
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->val$oldState:I

    invoke-static {v2, v3, v1}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$mupdateOldDischargeScreenLevelCoulombCounterLocked(Lcom/android/internal/os/BatteryStatsImpl;II)V

    .line 14987
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->val$newState:I

    invoke-static {v2, v3, v1}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$mupdateNewDischargeScreenLevelCoulombCounterLocked(Lcom/android/internal/os/BatteryStatsImpl;II)V

    .line 14988
    return-void
.end method
