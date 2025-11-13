.class public final enum Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;
.super Ljava/lang/Enum;
.source "SecurityDashboardConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

.field public static final enum CARD_ALLOW_PHONE_TO_BE_FOUND:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

.field public static final enum CARD_DP_MALWARE_DETECTED:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

.field public static final enum CARD_DP_SCAN_YOUR_PHONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

.field public static final enum CARD_GOOGLE_ACCOUNT_SIGN_IN:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

.field public static final enum CARD_GPP_MALWARE_DETECTED:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

.field public static final enum CARD_GPSU_UPDATE_AVAILABLE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

.field public static final enum CARD_SAMSUNG_ACCOUNT_CHECK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

.field public static final enum CARD_SAMSUNG_ACCOUNT_SIGN_IN:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

.field public static final enum CARD_SECURITY_UPDATE_AVAILABLE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

.field public static final enum CARD_SECURITY_UPDATE_DURATION_ELAPSED:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

.field public static final enum CARD_SET_SCREEN_LOCK_TYPE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

.field public static final enum CARD_TURN_ON_DP:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

.field public static final enum CARD_TURN_ON_GPP:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 64
    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    const-string v1, "CARD_DP_MALWARE_DETECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_DP_MALWARE_DETECTED:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 65
    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    const-string v3, "CARD_GPP_MALWARE_DETECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_GPP_MALWARE_DETECTED:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 66
    new-instance v3, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    const-string v5, "CARD_TURN_ON_GPP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_TURN_ON_GPP:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 67
    new-instance v5, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    const-string v7, "CARD_TURN_ON_DP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_TURN_ON_DP:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 68
    new-instance v7, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    const-string v9, "CARD_DP_SCAN_YOUR_PHONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_DP_SCAN_YOUR_PHONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 69
    new-instance v9, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    const-string v11, "CARD_SECURITY_UPDATE_AVAILABLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SECURITY_UPDATE_AVAILABLE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 70
    new-instance v11, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    const-string v13, "CARD_SECURITY_UPDATE_DURATION_ELAPSED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SECURITY_UPDATE_DURATION_ELAPSED:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 71
    new-instance v13, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    const-string v15, "CARD_GPSU_UPDATE_AVAILABLE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_GPSU_UPDATE_AVAILABLE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 73
    new-instance v15, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    const-string v14, "CARD_SAMSUNG_ACCOUNT_SIGN_IN"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SAMSUNG_ACCOUNT_SIGN_IN:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 74
    new-instance v14, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    const-string v12, "CARD_SAMSUNG_ACCOUNT_CHECK"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SAMSUNG_ACCOUNT_CHECK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 75
    new-instance v12, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    const-string v10, "CARD_GOOGLE_ACCOUNT_SIGN_IN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_GOOGLE_ACCOUNT_SIGN_IN:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 76
    new-instance v10, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    const-string v8, "CARD_SET_SCREEN_LOCK_TYPE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SET_SCREEN_LOCK_TYPE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 77
    new-instance v8, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    const-string v6, "CARD_ALLOW_PHONE_TO_BE_FOUND"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_ALLOW_PHONE_TO_BE_FOUND:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 63
    sput-object v6, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->$VALUES:[Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;
    .locals 1

    .line 63
    const-class v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;
    .locals 1

    .line 63
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->$VALUES:[Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    return-object v0
.end method
