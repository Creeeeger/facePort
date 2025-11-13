.class public Lcom/samsung/android/globalactions/features/ReserveBatteryModeStrategy;
.super Ljava/lang/Object;
.source "ReserveBatteryModeStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;


# instance fields
.field private final blacklist mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/features/ReserveBatteryModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    return-void
.end method


# virtual methods
.method public blacklist onCreateEmergencyAction()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/ReserveBatteryModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_RBM_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
