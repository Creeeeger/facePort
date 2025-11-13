.class final enum Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

.field public static final enum SIM_NOT_ACTIVE:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    const-string v2, "SIM_NOT_ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;->SIM_NOT_ACTIVE:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    filled-new-array {v0, v1}, [Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;->$VALUES:[Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;
    .locals 1

    const-class v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;
    .locals 1

    sget-object v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;->$VALUES:[Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    invoke-virtual {v0}, [Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    return-object v0
.end method
