.class public final enum Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
.super Ljava/lang/Enum;
.source "SecurityDashboardConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field public static final enum ARROW:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field public static final enum CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field public static final enum NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field public static final enum OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field public static final enum SCANNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field public static final enum SECURITY_CAN_BE_BETTER:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field public static final enum WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 55
    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v1, "SCANNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->SCANNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 56
    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v3, "OK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 57
    new-instance v3, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v5, "WARNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 58
    new-instance v5, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v7, "CRITICAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 59
    new-instance v7, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v9, "ARROW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->ARROW:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 60
    new-instance v9, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v11, "SECURITY_CAN_BE_BETTER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->SECURITY_CAN_BE_BETTER:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 61
    new-instance v11, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v13, "NONE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 54
    sput-object v13, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->$VALUES:[Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 1

    .line 54
    const-class v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 1

    .line 54
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->$VALUES:[Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object v0
.end method
