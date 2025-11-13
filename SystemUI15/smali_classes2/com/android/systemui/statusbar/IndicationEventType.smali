.class public final enum Lcom/android/systemui/statusbar/IndicationEventType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/IndicationEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum ADAPTIVE_AUTH:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BIOMETRICS_STOP:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum OWNER_INFO:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum TRUST_AGENT_ERROR:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum TRUST_AGENT_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum USB_RESTRICTION:Lcom/android/systemui/statusbar/IndicationEventType;


# instance fields
.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v1, "EMPTY_LOW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

    new-instance v1, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v4, "LEGACY_DEFAULT"

    const/16 v5, 0x14

    invoke-direct {v1, v4, v3, v5}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v4, "BATTERY_RESTING"

    const/4 v6, 0x2

    invoke-direct {v3, v4, v6, v5}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    new-instance v4, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v5, "RESTING"

    const/4 v6, 0x3

    const/16 v7, 0x19

    invoke-direct {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v6, "UNLOCK_GUIDE"

    const/4 v8, 0x4

    invoke-direct {v5, v6, v8, v7}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    new-instance v6, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v7, 0x1e

    const-string v8, "OWNER_INFO"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/statusbar/IndicationEventType;->OWNER_INFO:Lcom/android/systemui/statusbar/IndicationEventType;

    new-instance v7, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v8, 0x28

    const-string v9, "BATTERY"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    new-instance v8, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v9, 0x2a

    const-string v10, "USB_RESTRICTION"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/statusbar/IndicationEventType;->USB_RESTRICTION:Lcom/android/systemui/statusbar/IndicationEventType;

    new-instance v9, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v10, 0x2b

    const-string v11, "TRUST_AGENT_HELP"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v10}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    new-instance v10, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v11, 0x2d

    const-string v12, "EMPTY_HIGH"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v11}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    new-instance v11, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v12, "LEGACY_TRANSIENT"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    new-instance v12, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v2, 0x32

    const-string v13, "NOTI_GUIDE"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v2, "BIOMETRICS_HELP"

    const/16 v14, 0xc

    const/16 v15, 0x3c

    invoke-direct {v13, v2, v14, v15}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    new-instance v14, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v2, "BIOMETRICS_STOP"

    move-object/from16 v16, v13

    const/16 v13, 0xd

    invoke-direct {v14, v2, v13, v15}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_STOP:Lcom/android/systemui/statusbar/IndicationEventType;

    new-instance v15, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v2, 0x46

    const-string v13, "TRUST_AGENT_ERROR"

    move-object/from16 v17, v14

    const/16 v14, 0xe

    invoke-direct {v15, v13, v14, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_ERROR:Lcom/android/systemui/statusbar/IndicationEventType;

    new-instance v14, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v2, 0x55

    const-string v13, "BIOMETRICS_COOLDOWN"

    move-object/from16 v18, v15

    const/16 v15, 0xf

    invoke-direct {v14, v13, v15, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    new-instance v15, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v2, 0x5a

    const-string v13, "PPP_COOLDOWN"

    move-object/from16 v19, v14

    const/16 v14, 0x10

    invoke-direct {v15, v13, v14, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    new-instance v14, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v2, 0x5b

    const-string v13, "ADAPTIVE_AUTH"

    move-object/from16 v20, v15

    const/16 v15, 0x11

    invoke-direct {v14, v13, v15, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/statusbar/IndicationEventType;->ADAPTIVE_AUTH:Lcom/android/systemui/statusbar/IndicationEventType;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v17, v14

    move-object/from16 v15, v19

    move-object/from16 v14, v18

    move-object/from16 v16, v20

    filled-new-array/range {v0 .. v17}, [Lcom/android/systemui/statusbar/IndicationEventType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->$VALUES:[Lcom/android/systemui/statusbar/IndicationEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/statusbar/IndicationEventType;->mPriority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/IndicationEventType;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/IndicationEventType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/IndicationEventType;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->$VALUES:[Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/IndicationEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/IndicationEventType;

    return-object v0
.end method


# virtual methods
.method public final getPriority()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/IndicationEventType;->mPriority:I

    return p0
.end method
