.class public final enum Lcom/android/systemui/communal/shared/log/CommunalUiEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/communal/shared/log/CommunalUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

.field public static final enum COMMUNAL_HUB_EDIT_MODE_GONE:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

.field public static final enum COMMUNAL_HUB_EDIT_MODE_SHOWN:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

.field public static final enum COMMUNAL_HUB_GONE:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

.field public static final enum COMMUNAL_HUB_REORDER_WIDGET_CANCEL:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

.field public static final enum COMMUNAL_HUB_REORDER_WIDGET_FINISH:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

.field public static final enum COMMUNAL_HUB_REORDER_WIDGET_START:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

.field public static final enum COMMUNAL_HUB_SHOWN:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

.field public static final enum COMMUNAL_HUB_SWIPE_TO_ENTER_CANCEL:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

.field public static final enum COMMUNAL_HUB_SWIPE_TO_ENTER_FINISH:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

.field public static final enum COMMUNAL_HUB_SWIPE_TO_ENTER_START:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

.field public static final enum COMMUNAL_HUB_SWIPE_TO_EXIT_CANCEL:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

.field public static final enum COMMUNAL_HUB_SWIPE_TO_EXIT_FINISH:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

.field public static final enum COMMUNAL_HUB_SWIPE_TO_EXIT_START:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

.field public static final enum COMMUNAL_HUB_WIDGET_PICKER_SHOWN:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v1, 0x61e

    const-string v2, "COMMUNAL_HUB_SHOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_SHOWN:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    new-instance v1, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v2, 0x629

    const-string v3, "COMMUNAL_HUB_GONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_GONE:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    new-instance v2, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v3, 0x62a

    const-string v4, "COMMUNAL_HUB_TIMEOUT"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v4, 0x62b

    const-string v5, "COMMUNAL_HUB_LOADED"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v5, 0x62c

    const-string v6, "COMMUNAL_HUB_SWIPE_TO_ENTER_START"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_SWIPE_TO_ENTER_START:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    new-instance v5, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v6, 0x62d

    const-string v7, "COMMUNAL_HUB_SWIPE_TO_ENTER_FINISH"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_SWIPE_TO_ENTER_FINISH:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    new-instance v6, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v7, 0x62e

    const-string v8, "COMMUNAL_HUB_SWIPE_TO_ENTER_CANCEL"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_SWIPE_TO_ENTER_CANCEL:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    new-instance v7, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v8, 0x62f

    const-string v9, "COMMUNAL_HUB_SWIPE_TO_EXIT_START"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_SWIPE_TO_EXIT_START:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    new-instance v8, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v9, 0x630

    const-string v10, "COMMUNAL_HUB_SWIPE_TO_EXIT_FINISH"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_SWIPE_TO_EXIT_FINISH:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    new-instance v9, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v10, 0x631

    const-string v11, "COMMUNAL_HUB_SWIPE_TO_EXIT_CANCEL"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_SWIPE_TO_EXIT_CANCEL:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    new-instance v10, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v11, 0x632

    const-string v12, "COMMUNAL_HUB_REORDER_WIDGET_START"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_REORDER_WIDGET_START:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    new-instance v11, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v12, 0x633

    const-string v13, "COMMUNAL_HUB_REORDER_WIDGET_FINISH"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_REORDER_WIDGET_FINISH:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    new-instance v12, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v13, 0x634

    const-string v14, "COMMUNAL_HUB_REORDER_WIDGET_CANCEL"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_REORDER_WIDGET_CANCEL:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    new-instance v13, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v14, 0x621

    const-string v15, "COMMUNAL_HUB_EDIT_MODE_SHOWN"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_EDIT_MODE_SHOWN:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    new-instance v14, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v12, 0x635

    const-string v15, "COMMUNAL_HUB_EDIT_MODE_GONE"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_EDIT_MODE_GONE:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    new-instance v15, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v12, 0x636

    const-string v13, "COMMUNAL_HUB_WIDGET_PICKER_SHOWN"

    move-object/from16 v18, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_WIDGET_PICKER_SHOWN:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    new-instance v14, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v12, 0x637

    const-string v13, "COMMUNAL_HUB_WIDGET_PICKER_GONE"

    move-object/from16 v19, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v12, 0x625

    const-string v13, "COMMUNAL_HUB_SWIPE_UP_TO_BOUNCER"

    move-object/from16 v20, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    const/16 v12, 0x626

    const-string v13, "COMMUNAL_HUB_SWIPE_DOWN_TO_SHADE"

    move-object/from16 v21, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;-><init>(Ljava/lang/String;II)V

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v16, v20

    move-object/from16 v20, v14

    move-object/from16 v14, v18

    move-object/from16 v17, v21

    move-object/from16 v15, v19

    move-object/from16 v18, v20

    filled-new-array/range {v0 .. v18}, [Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->$VALUES:[Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

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

    iput p3, p0, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/communal/shared/log/CommunalUiEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/communal/shared/log/CommunalUiEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->$VALUES:[Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->id:I

    return p0
.end method
