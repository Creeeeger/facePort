.class public Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;
.super Ljava/lang/Object;
.source "FOTAForceUpdateStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/SoftwareUpdateStrategy;


# instance fields
.field private final blacklist mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final blacklist mSystemController:Lcom/samsung/android/globalactions/util/SystemController;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SystemController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p2, p0, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    return-void
.end method


# virtual methods
.method public blacklist onUpdate()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_ATT_FOTA_CLIENT_PACKAGE_ENABLED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FOTA_AVAILABLE_FOR_GLOBALACTIONS:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist update()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SystemController;->startATTForceUpdate()V

    return-void
.end method
