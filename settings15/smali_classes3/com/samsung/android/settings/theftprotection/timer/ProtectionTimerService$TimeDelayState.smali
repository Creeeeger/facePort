.class public final enum Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

.field public static final enum GRACE_PERIOD:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

.field public static final enum NONE:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

.field public static final enum SECURITY_DELAY:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;->NONE:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    new-instance v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    const-string v2, "SECURITY_DELAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;->SECURITY_DELAY:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    new-instance v2, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    const-string v3, "GRACE_PERIOD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;->GRACE_PERIOD:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;->$VALUES:[Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;->$VALUES:[Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    return-object v0
.end method
