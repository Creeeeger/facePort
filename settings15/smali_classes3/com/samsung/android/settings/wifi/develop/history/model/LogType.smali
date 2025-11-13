.class public final enum Lcom/samsung/android/settings/wifi/develop/history/model/LogType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/wifi/develop/history/model/LogType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum ASSOC_REJECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum CONNECTED:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum CONNECTING:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum DISCONNECTED:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum L2_CONNECT_FAIL:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum NONE:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum ROAM:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum TRY_TO_CONNECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

.field public static final enum WIFI_ON_OFF:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;


# instance fields
.field private final priority:I

.field private final type:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3a0NsJOnUrA3KUKbPAioKPIahHQ(Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/history/model/LogType;)Z
    .locals 0

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->type:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const/16 v1, 0x12c

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v2, v1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->NONE:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v2, "DISCONNECTED"

    const/4 v3, 0x1

    const-string/jumbo v4, "rid=1"

    const/16 v5, 0x64

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->DISCONNECTED:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v3, "CONNECTED"

    const/4 v4, 0x2

    const-string/jumbo v5, "rid=2"

    const/16 v6, 0x65

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->CONNECTED:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    new-instance v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v4, "ROAM"

    const/4 v5, 0x3

    const-string/jumbo v6, "rid=3"

    const/16 v7, 0x66

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->ROAM:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    new-instance v4, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v5, "TRY_TO_CONNECT"

    const/4 v6, 0x4

    const-string/jumbo v7, "rid=11"

    const/16 v8, 0x67

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->TRY_TO_CONNECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    new-instance v5, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v6, "L2_CONNECT_FAIL"

    const/4 v7, 0x5

    const-string/jumbo v8, "rid=13"

    const/16 v9, 0x68

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->L2_CONNECT_FAIL:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    new-instance v6, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v7, "ASSOC_REJECT"

    const/4 v8, 0x6

    const-string/jumbo v9, "rid=14"

    const/16 v10, 0x69

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->ASSOC_REJECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    new-instance v7, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v8, "DHCP"

    const/4 v9, 0x7

    const-string/jumbo v10, "rid=300"

    const/16 v11, 0x6a

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v8, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v9, "WIFI_ON_OFF"

    const/16 v10, 0x8

    const-string/jumbo v11, "rid=201"

    const/16 v12, 0x6b

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->WIFI_ON_OFF:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    new-instance v9, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const/16 v10, 0xc8

    const-string v11, "CONNECTING"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v11, v10}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->CONNECTING:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    new-instance v10, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v11, "ROAM_SCAN_TRIGGER"

    const/16 v12, 0xa

    const-string v13, "SCAN_START"

    const/16 v14, 0xc9

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v11, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v12, "ROAM_SCAN_RESULT"

    const/16 v13, 0xb

    const-string v14, "RESULT"

    const/16 v15, 0xca

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v12, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const/16 v13, 0xcb

    const-string v14, "DEAUTH"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v14, v13}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v13, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const/16 v14, 0xcc

    const-string v15, "DISASSOC"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v15, v14}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v14, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const-string v12, "BEACON_LOSS"

    const/16 v15, 0xe

    move-object/from16 v17, v13

    const-string v13, "DISCONN"

    move-object/from16 v18, v11

    const/16 v11, 0xcd

    invoke-direct {v14, v12, v15, v13, v11}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v11, v18

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    filled-new-array/range {v0 .. v14}, [Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->type:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->priority:I

    return-void
.end method

.method public static getLogType(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/LogType;
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->values()[Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/history/model/LogType$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->NONE:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/LogType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/wifi/develop/history/model/LogType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->$VALUES:[Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    return-object v0
.end method
