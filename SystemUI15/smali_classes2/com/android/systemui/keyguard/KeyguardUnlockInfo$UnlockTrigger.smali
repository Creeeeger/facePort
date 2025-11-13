.class public final enum Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_BIO_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_BIO_WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_CARRIER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_COVER_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_EDIT_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_EXTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_FACE_WIDGET:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_FMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_FOLD_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_GUTS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_INTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_KEYBOARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_KNOX_GUARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_PENDING_INTENT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_PLUGIN_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_QUICK_TILE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_REMOTE_INPUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_RMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_SHELL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_SPEN_DETACHED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_SWIPE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v1, "TRIGGER_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v2, "TRIGGER_EXTERNAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_EXTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v3, "TRIGGER_INTERNAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_INTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v4, "TRIGGER_BIO_UNLOCK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v5, "TRIGGER_BIO_WAKE_AND_UNLOCK"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v6, "TRIGGER_SWIPE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SWIPE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v6, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v7, "TRIGGER_SHELL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHELL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v7, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v8, "TRIGGER_NOTIFICATION"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v8, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v9, "TRIGGER_AOD_NOTIFICATION"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v10, "TRIGGER_QUICK_TILE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_QUICK_TILE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v10, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v11, "TRIGGER_SHORTCUT"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v11, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v12, "TRIGGER_FACE_WIDGET"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FACE_WIDGET:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v12, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v13, "TRIGGER_KEYBOARD"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_KEYBOARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v13, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v14, "TRIGGER_PENDING_INTENT"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_PENDING_INTENT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v15, "TRIGGER_PLUGIN_LOCK"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_PLUGIN_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v15, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v13, "TRIGGER_FOLD_OPENED"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FOLD_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v13, "TRIGGER_COVER_OPENED"

    move-object/from16 v18, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_COVER_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v15, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v13, "TRIGGER_FMM"

    move-object/from16 v19, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v13, "TRIGGER_RMM"

    move-object/from16 v20, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_RMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v15, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v13, "TRIGGER_CARRIER"

    move-object/from16 v21, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_CARRIER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v13, "TRIGGER_KNOX_GUARD"

    move-object/from16 v22, v15

    const/16 v15, 0x14

    invoke-direct {v14, v13, v15}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_KNOX_GUARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v15, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v13, "TRIGGER_PENDING_WAKE_UP_ACTION"

    move-object/from16 v23, v14

    const/16 v14, 0x15

    invoke-direct {v15, v13, v14}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v13, "TRIGGER_GUTS"

    move-object/from16 v24, v15

    const/16 v15, 0x16

    invoke-direct {v14, v13, v15}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_GUTS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v15, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v13, "TRIGGER_REMOTE_INPUT"

    move-object/from16 v25, v14

    const/16 v14, 0x17

    invoke-direct {v15, v13, v14}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_REMOTE_INPUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v13, "TRIGGER_SPEN_DETACHED"

    move-object/from16 v26, v15

    const/16 v15, 0x18

    invoke-direct {v14, v13, v15}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SPEN_DETACHED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    new-instance v15, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v13, "TRIGGER_EDIT_MODE"

    move-object/from16 v27, v14

    const/16 v14, 0x19

    invoke-direct {v15, v13, v14}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_EDIT_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    move-object/from16 v13, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v14, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    filled-new-array/range {v0 .. v25}, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->$VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
    .locals 1

    const-class v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->$VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    return-object v0
.end method
