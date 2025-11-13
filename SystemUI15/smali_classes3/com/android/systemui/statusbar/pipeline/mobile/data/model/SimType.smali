.class public final enum Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

.field public static final enum AIRTEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

.field public static final enum ATT_PCN:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

.field public static final enum CMCC:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

.field public static final enum ETC:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

.field public static final enum KT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

.field public static final enum LGT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

.field public static final enum NO_SIM:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

.field public static final enum OFF:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

.field public static final enum ORANGE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

.field public static final enum RELIANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

.field public static final enum SKT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

.field public static final enum VZW:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    const-string v1, "NO_SIM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->NO_SIM:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    const-string v2, "OFF"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->OFF:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    const-string v3, "ETC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ETC:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    new-instance v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    const-string v4, "AIRTEL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->AIRTEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    const-string v5, "CMCC"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->CMCC:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    new-instance v5, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    const-string v6, "RELIANCE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->RELIANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    const-string v7, "SKT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->SKT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    new-instance v7, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    const-string v8, "KT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->KT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    new-instance v8, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    const-string v9, "LGT"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->LGT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    const-string v10, "ORANGE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ORANGE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    new-instance v10, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    const-string v11, "VZW"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->VZW:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    new-instance v11, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    const-string v12, "ATT_PCN"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ATT_PCN:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    filled-new-array/range {v0 .. v11}, [Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->$VALUES:[Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->$VALUES:[Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    return-object v0
.end method
