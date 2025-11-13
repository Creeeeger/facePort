.class public final enum Lcom/android/systemui/globalactions/util/SystemUIConditions;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/util/SystemUIConditions;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CLEAR_CAMERA_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_FUNCTION_KEY_SETTING_HIDE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_MINI_OPEN_COVER:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_CLEAR_COVER_CLOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v2, "IS_WHITE_THEME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v3, "IS_SETTINGS_CHANGES_ALLOWED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v4, "IS_POWER_OFF_ALLOWED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v4, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v5, "IS_SAFE_MODE_ALLOWED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v5, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v6, "IS_ENABLE_USE_OF_PACKET_DATA"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v7, "IS_DO_PROVISIONING_MODE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v7, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v8, "IS_BIXBY_PACKAGE_ENABLED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v9, "PWD_CHANGE_ENFORCED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/globalactions/util/SystemUIConditions;->PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v9, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v10, "IS_CLEAR_SIDE_VIEW_COVER_CLOSED"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v10, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v11, "IS_CLEAR_CAMERA_VIEW_COVER_CLOSED"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_CAMERA_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v11, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v12, "IS_MINI_SVIEW_COVER_CLOSED"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v12, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v13, "IS_MINI_OPEN_COVER"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_OPEN_COVER:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v13, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v14, "IS_CELLULAR_DATA_ALLOWED"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v14, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v15, "IS_COM_CONTAINER_MODE"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v13, "GET_PROKIOSK_STATE"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v14, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v13, "GET_POWER_DIALOG_CUSTOM_ITEMS_STATE"

    move-object/from16 v18, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v15, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v13, "IS_ALLOWED_SHOW_ACTIONS"

    move-object/from16 v19, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v14, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v13, "IS_KIOSK_MODE"

    move-object/from16 v20, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    new-instance v15, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v13, "IS_FUNCTION_KEY_SETTING_HIDE"

    move-object/from16 v21, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_FUNCTION_KEY_SETTING_HIDE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    move-object/from16 v13, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v21

    move-object/from16 v14, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    filled-new-array/range {v0 .. v19}, [Lcom/android/systemui/globalactions/util/SystemUIConditions;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->$VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/util/SystemUIConditions;
    .locals 1

    const-class v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/globalactions/util/SystemUIConditions;
    .locals 1

    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->$VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/util/SystemUIConditions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/util/SystemUIConditions;

    return-object v0
.end method
