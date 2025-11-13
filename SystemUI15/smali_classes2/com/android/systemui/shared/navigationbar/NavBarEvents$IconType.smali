.class public final enum Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v1, "TYPE_BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v2, "TYPE_BACK_LAND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v3, "TYPE_BACK_ALT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v4, "TYPE_BACK_ALT_LAND"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v5, "TYPE_HOME"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v6, "TYPE_RECENT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v7, "TYPE_DOCKED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v8, "TYPE_IME"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v9, "TYPE_MENU"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v10, "TYPE_SHOW_PIN"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v11, "TYPE_HIDE_PIN"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v12, "TYPE_A11Y"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v13, "TYPE_BACK_CAR"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v14, "TYPE_BACK_LAND_CAR"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v15, "TYPE_BACK_ALT_CAR"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v13, "TYPE_BACK_ALT_LAND_CAR"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v13, "TYPE_HOME_CAR"

    move-object/from16 v18, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v13, "TYPE_GESTURE_HINT"

    move-object/from16 v19, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v13, "TYPE_GESTURE_HINT_VI"

    move-object/from16 v20, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v13, "TYPE_GESTURE_HANDLE_HINT"

    move-object/from16 v21, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    const-string v13, "TYPE_SECONDARY_HOME_HANDLE"

    move-object/from16 v22, v15

    const/16 v15, 0x14

    invoke-direct {v14, v13, v15}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    move-object/from16 v13, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v22

    move-object/from16 v15, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    filled-new-array/range {v0 .. v20}, [Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;->$VALUES:[Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;
    .locals 1

    const-class v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;->$VALUES:[Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    return-object v0
.end method
