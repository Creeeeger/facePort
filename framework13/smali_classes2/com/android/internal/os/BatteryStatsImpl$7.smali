.class Lcom/android/internal/os/BatteryStatsImpl$7;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeSubScreenLevelsLocked(II)V
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

    .line 14993
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$7;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$7;->val$oldState:I

    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$7;->val$newState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 14995
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$7;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryPermil()I

    move-result v0

    .line 14996
    .local v0, "currentBatteryPermil":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$7;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$7;->val$oldState:I

    invoke-static {v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$mupdateOldDischargeSubScreenLevelPermilLocked(Lcom/android/internal/os/BatteryStatsImpl;II)V

    .line 14997
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$7;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$7;->val$newState:I

    invoke-static {v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$mupdateNewDischargeSubScreenLevelPermilLocked(Lcom/android/internal/os/BatteryStatsImpl;II)V

    .line 14998
    return-void
.end method
