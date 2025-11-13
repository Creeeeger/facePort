.class public final enum Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_BUGREPORT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_BUGREPORT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_CLOSE_BACK:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_CLOSE_TAP_OUTSIDE:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_EMERGENCY_DIALER_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_LOCKDOWN_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_OPEN_QS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_POWER_MENU_CLOSE:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_POWER_MENU_OPEN:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_REBOOT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_REBOOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_SCREENSHOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_SHUTDOWN_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_SHUTDOWN_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_SYSTEM_UPDATE_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v1, 0x151

    const-string v2, "GA_POWER_MENU_OPEN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_POWER_MENU_OPEN:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v2, 0x1d7

    const-string v3, "GA_POWER_MENU_CLOSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_POWER_MENU_CLOSE:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v3, 0x158

    const-string v4, "GA_BUGREPORT_PRESS"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_BUGREPORT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v4, 0x159

    const-string v5, "GA_BUGREPORT_LONG_PRESS"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_BUGREPORT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    new-instance v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v5, 0x15a

    const-string v6, "GA_EMERGENCY_DIALER_PRESS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_EMERGENCY_DIALER_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    new-instance v5, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v6, 0x15b

    const-string v7, "GA_SCREENSHOT_PRESS"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_SCREENSHOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v7, 0x15c

    const-string v8, "GA_SCREENSHOT_LONG_PRESS"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v8, 0x322

    const-string v9, "GA_SHUTDOWN_PRESS"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_SHUTDOWN_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    new-instance v8, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v9, 0x323

    const-string v10, "GA_SHUTDOWN_LONG_PRESS"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_SHUTDOWN_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    new-instance v9, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v10, 0x15d

    const-string v11, "GA_REBOOT_PRESS"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_REBOOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    new-instance v10, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v11, 0x324

    const-string v12, "GA_REBOOT_LONG_PRESS"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_REBOOT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    new-instance v11, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v12, 0x162

    const-string v13, "GA_LOCKDOWN_PRESS"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_LOCKDOWN_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    new-instance v12, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v13, 0x325

    const-string v14, "GA_OPEN_QS"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v14, 0x326

    const-string v15, "GA_OPEN_POWER_VOLUP"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v12, 0x327

    const-string v15, "GA_OPEN_LONG_PRESS_POWER"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v12, 0x328

    const-string v13, "GA_CLOSE_LONG_PRESS_POWER"

    move-object/from16 v18, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v12, 0x329

    const-string v13, "GA_CLOSE_BACK"

    move-object/from16 v19, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_CLOSE_BACK:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    new-instance v15, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v12, 0x32a

    const-string v13, "GA_CLOSE_TAP_OUTSIDE"

    move-object/from16 v20, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_CLOSE_TAP_OUTSIDE:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    new-instance v14, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v12, 0x32b

    const-string v13, "GA_CLOSE_POWER_VOLUP"

    move-object/from16 v21, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    const/16 v12, 0x6b4

    const-string v13, "GA_SYSTEM_UPDATE_PRESS"

    move-object/from16 v22, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_SYSTEM_UPDATE_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v16, v20

    move-object/from16 v20, v22

    move-object/from16 v14, v18

    move-object/from16 v17, v21

    move-object/from16 v21, v15

    move-object/from16 v15, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    filled-new-array/range {v0 .. v19}, [Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->$VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

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

    iput p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->$VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->mId:I

    return p0
.end method
