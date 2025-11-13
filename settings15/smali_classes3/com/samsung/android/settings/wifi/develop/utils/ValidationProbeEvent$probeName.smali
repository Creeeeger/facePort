.class final enum Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

.field public static final enum PROBE_DNS:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

.field public static final enum PROBE_HTTP:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

.field public static final enum PROBE_HTTPS:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

.field public static final enum UNKNOWN:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    const-string v1, "PROBE_DNS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->PROBE_DNS:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    const-string v2, "PROBE_HTTP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->PROBE_HTTP:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    const-string v3, "PROBE_HTTPS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->PROBE_HTTPS:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    new-instance v3, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    const-string v4, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->UNKNOWN:Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    return-object v0
.end method
