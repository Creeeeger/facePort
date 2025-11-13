.class public final enum Lcom/android/systemui/doze/DozeMachine$State;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/doze/DozeMachine$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_DISPLAY_STATE_ON:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_SUSPEND_TRIGGERS:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum FINISH:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v1, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v2, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v2, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v3, "DOZE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v3, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v4, "DOZE_SUSPEND_TRIGGERS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_SUSPEND_TRIGGERS:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v4, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v5, "DOZE_AOD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v5, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v6, "DOZE_REQUEST_PULSE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v6, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v7, "DOZE_PULSING"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v7, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v8, "DOZE_PULSING_BRIGHT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v8, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v9, "DOZE_PULSE_DONE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v9, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v10, "FINISH"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v10, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v11, "DOZE_AOD_PAUSED"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v11, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v12, "DOZE_AOD_PAUSING"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v12, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v13, "DOZE_AOD_DOCKED"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v13, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v14, "DOZE_MOD"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v14, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v15, "DOZE_TRANSITION_ENDED"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    new-instance v15, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v13, "DOZE_DISPLAY_STATE_ON"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_DISPLAY_STATE_ON:Lcom/android/systemui/doze/DozeMachine$State;

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->$VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/doze/DozeMachine$State;
    .locals 1

    const-class v0, Lcom/android/systemui/doze/DozeMachine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/doze/DozeMachine$State;
    .locals 1

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->$VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0}, [Lcom/android/systemui/doze/DozeMachine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/doze/DozeMachine$State;

    return-object v0
.end method
