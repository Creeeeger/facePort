.class public final enum Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field public static final enum CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field public static final enum NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field public static final enum OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field public static final enum SCANNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field public static final enum WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v2, "SCANNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->SCANNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    new-instance v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v3, "OK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    new-instance v3, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v4, "WARNING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    new-instance v4, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v5, "CRITICAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->$VALUES:[Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->$VALUES:[Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object v0
.end method
