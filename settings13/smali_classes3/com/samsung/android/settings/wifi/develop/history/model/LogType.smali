.class public final enum Lcom/samsung/android/settings/wifi/develop/history/model/LogType;
.super Ljava/lang/Enum;
.source "LogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/wifi/develop/history/model/LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum ASSOC_REJECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum BEACON_LOSS:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum CONNECTED:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum CONNECTING:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum DEAUTH:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum DHCP:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum DISASSOC:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum DISCONNECTED:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum L2_CONNECT_FAIL:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum NONE:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum ROAM:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum ROAM_SCAN_RESULT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum ROAM_SCAN_TRIGGER:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum TRY_TO_CONNECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum WIFI_ON_OFF:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;


# instance fields
.field private final priority:I

.field private final type:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$VfY-SgrF_6i-ce_elcBp4r3eZ_8(Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/history/model/LogType;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->lambda$getLogType$0(Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/history/model/LogType;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 6
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->NONE:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 8
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v3, "DISCONNECTED"

    const/4 v4, 0x1

    const-string v5, "rid=1"

    const/16 v6, 0x64

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->DISCONNECTED:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 9
    new-instance v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v5, "CONNECTED"

    const/4 v6, 0x2

    const-string v7, "rid=2"

    const/16 v8, 0x65

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->CONNECTED:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 10
    new-instance v5, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v7, "ROAM"

    const/4 v8, 0x3

    const-string v9, "rid=3"

    const/16 v10, 0x66

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->ROAM:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 11
    new-instance v7, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v9, "TRY_TO_CONNECT"

    const/4 v10, 0x4

    const-string v11, "rid=11"

    const/16 v12, 0x67

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->TRY_TO_CONNECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 12
    new-instance v9, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v11, "L2_CONNECT_FAIL"

    const/4 v12, 0x5

    const-string v13, "rid=13"

    const/16 v14, 0x68

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->L2_CONNECT_FAIL:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 13
    new-instance v11, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v13, "ASSOC_REJECT"

    const/4 v14, 0x6

    const-string v15, "rid=14"

    const/16 v12, 0x69

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->ASSOC_REJECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 14
    new-instance v12, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v13, "DHCP"

    const/4 v15, 0x7

    const-string v14, "rid=300"

    const/16 v10, 0x6a

    invoke-direct {v12, v13, v15, v14, v10}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->DHCP:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 15
    new-instance v10, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v13, "WIFI_ON_OFF"

    const/16 v14, 0x8

    const-string v15, "rid=201"

    const/16 v8, 0x6b

    invoke-direct {v10, v13, v14, v15, v8}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->WIFI_ON_OFF:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 17
    new-instance v8, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v13, "CONNECTING"

    const/16 v15, 0x9

    const/16 v14, 0xc8

    invoke-direct {v8, v13, v15, v13, v14}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->CONNECTING:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 18
    new-instance v13, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v14, "ROAM_SCAN_TRIGGER"

    const/16 v15, 0xa

    const-string v6, "SCAN_START"

    const/16 v4, 0xc9

    invoke-direct {v13, v14, v15, v6, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->ROAM_SCAN_TRIGGER:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 19
    new-instance v4, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v6, "ROAM_SCAN_RESULT"

    const/16 v14, 0xb

    const-string v15, "RESULT"

    const/16 v2, 0xca

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->ROAM_SCAN_RESULT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 20
    new-instance v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v6, "DEAUTH"

    const/16 v15, 0xc

    const/16 v14, 0xcb

    invoke-direct {v2, v6, v15, v6, v14}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->DEAUTH:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 21
    new-instance v6, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v14, "DISASSOC"

    const/16 v15, 0xd

    move-object/from16 v16, v2

    const/16 v2, 0xcc

    invoke-direct {v6, v14, v15, v14, v2}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->DISASSOC:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 22
    new-instance v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v14, "BEACON_LOSS"

    const/16 v15, 0xe

    move-object/from16 v17, v6

    const-string v6, "DISCONN"

    move-object/from16 v18, v4

    const/16 v4, 0xcd

    invoke-direct {v2, v14, v15, v6, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->BEACON_LOSS:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const/16 v4, 0xf

    new-array v4, v4, [Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v12, v4, v0

    const/16 v0, 0x8

    aput-object v10, v4, v0

    const/16 v0, 0x9

    aput-object v8, v4, v0

    const/16 v0, 0xa

    aput-object v13, v4, v0

    const/16 v0, 0xb

    aput-object v18, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    aput-object v2, v4, v15

    .line 5
    sput-object v4, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->type:Ljava/lang/String;

    .line 26
    iput p4, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->priority:I

    return-void
.end method

.method public static getLogType(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/LogType;
    .locals 2

    .line 33
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->values()[Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/history/model/LogType$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->NONE:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    return-object p0
.end method

.method private static synthetic lambda$getLogType$0(Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/history/model/LogType;)Z
    .locals 0

    .line 34
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->type:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/LogType;
    .locals 1

    .line 5
    const-class v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/wifi/develop/history/model/LogType;
    .locals 1

    .line 5
    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    return-object v0
.end method
