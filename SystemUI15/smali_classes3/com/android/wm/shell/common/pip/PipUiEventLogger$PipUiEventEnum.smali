.class public final enum Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_AUTO_ENTER:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_CUSTOM_CLOSE:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_DRAG_TO_REMOVE:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_ENTER:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_ENTER_CONTENT_PIP:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_HIDE_MENU:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_RESIZE:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_SHOW_MENU:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_SHOW_SETTINGS:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_STASH_LEFT:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_STASH_RIGHT:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_STASH_UNSTASHED:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_TAP_TO_REMOVE:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v1, 0x25b

    const-string v2, "PICTURE_IN_PICTURE_ENTER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_ENTER:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    new-instance v1, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v2, 0x521

    const-string v3, "PICTURE_IN_PICTURE_AUTO_ENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_AUTO_ENTER:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    new-instance v2, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v3, 0x522

    const-string v4, "PICTURE_IN_PICTURE_ENTER_CONTENT_PIP"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_ENTER_CONTENT_PIP:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    new-instance v3, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v4, 0x25c

    const-string v5, "PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    new-instance v4, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v5, 0x25d

    const-string v6, "PICTURE_IN_PICTURE_TAP_TO_REMOVE"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_TAP_TO_REMOVE:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    new-instance v5, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v6, 0x25e

    const-string v7, "PICTURE_IN_PICTURE_DRAG_TO_REMOVE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_DRAG_TO_REMOVE:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    new-instance v6, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v7, 0x25f

    const-string v8, "PICTURE_IN_PICTURE_SHOW_MENU"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_SHOW_MENU:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    new-instance v7, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v8, 0x260

    const-string v9, "PICTURE_IN_PICTURE_HIDE_MENU"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_HIDE_MENU:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    new-instance v8, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v9, 0x261

    const-string v10, "PICTURE_IN_PICTURE_CHANGE_ASPECT_RATIO"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v10, 0x262

    const-string v11, "PICTURE_IN_PICTURE_RESIZE"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_RESIZE:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    new-instance v10, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v11, 0x2c5

    const-string v12, "PICTURE_IN_PICTURE_STASH_UNSTASHED"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_UNSTASHED:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    new-instance v11, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v12, 0x2c6

    const-string v13, "PICTURE_IN_PICTURE_STASH_LEFT"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_LEFT:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    new-instance v12, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v13, 0x2c7

    const-string v14, "PICTURE_IN_PICTURE_STASH_RIGHT"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_RIGHT:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    new-instance v13, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v14, 0x3a5

    const-string v15, "PICTURE_IN_PICTURE_SHOW_SETTINGS"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_SHOW_SETTINGS:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    new-instance v14, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v12, 0x422

    const-string v15, "PICTURE_IN_PICTURE_CUSTOM_CLOSE"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_CUSTOM_CLOSE:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    filled-new-array/range {v0 .. v14}, [Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->$VALUES:[Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

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

    iput p3, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;
    .locals 1

    const-class v0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->$VALUES:[Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->mId:I

    return p0
.end method
