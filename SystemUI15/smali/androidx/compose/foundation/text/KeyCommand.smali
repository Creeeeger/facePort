.class public final enum Landroidx/compose/foundation/text/KeyCommand;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/foundation/text/KeyCommand;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum CHARACTER_PALETTE:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum COPY:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum CUT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_FROM_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_NEXT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_PREV_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_TO_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DESELECT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DOWN:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum HOME:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LINE_END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LINE_START:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum PASTE:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum REDO:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_HOME:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum TAB:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum UNDO:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum UP:Landroidx/compose/foundation/text/KeyCommand;


# instance fields
.field private final editsText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 51

    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    const-string v1, "LEFT_CHAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v1, Landroidx/compose/foundation/text/KeyCommand;

    const-string v3, "RIGHT_CHAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v3, Landroidx/compose/foundation/text/KeyCommand;

    const-string v5, "RIGHT_WORD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v5, Landroidx/compose/foundation/text/KeyCommand;

    const-string v6, "LEFT_WORD"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Landroidx/compose/foundation/text/KeyCommand;->LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v6, Landroidx/compose/foundation/text/KeyCommand;

    const-string v7, "NEXT_PARAGRAPH"

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Landroidx/compose/foundation/text/KeyCommand;->NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v7, Landroidx/compose/foundation/text/KeyCommand;

    const-string v8, "PREV_PARAGRAPH"

    const/4 v9, 0x5

    invoke-direct {v7, v8, v9, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Landroidx/compose/foundation/text/KeyCommand;->PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v8, Landroidx/compose/foundation/text/KeyCommand;

    const-string v9, "LINE_START"

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Landroidx/compose/foundation/text/KeyCommand;->LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v9, Landroidx/compose/foundation/text/KeyCommand;

    const-string v10, "LINE_END"

    const/4 v11, 0x7

    invoke-direct {v9, v10, v11, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Landroidx/compose/foundation/text/KeyCommand;->LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v10, Landroidx/compose/foundation/text/KeyCommand;

    const-string v11, "LINE_LEFT"

    const/16 v12, 0x8

    invoke-direct {v10, v11, v12, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Landroidx/compose/foundation/text/KeyCommand;->LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v11, Landroidx/compose/foundation/text/KeyCommand;

    const-string v12, "LINE_RIGHT"

    const/16 v13, 0x9

    invoke-direct {v11, v12, v13, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Landroidx/compose/foundation/text/KeyCommand;->LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v12, Landroidx/compose/foundation/text/KeyCommand;

    const-string v13, "UP"

    const/16 v14, 0xa

    invoke-direct {v12, v13, v14, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Landroidx/compose/foundation/text/KeyCommand;->UP:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v13, Landroidx/compose/foundation/text/KeyCommand;

    const-string v14, "DOWN"

    const/16 v15, 0xb

    invoke-direct {v13, v14, v15, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Landroidx/compose/foundation/text/KeyCommand;->DOWN:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v14, Landroidx/compose/foundation/text/KeyCommand;

    const-string v15, "PAGE_UP"

    const/16 v4, 0xc

    invoke-direct {v14, v15, v4, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Landroidx/compose/foundation/text/KeyCommand;->PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v4, "PAGE_DOWN"

    move-object/from16 v17, v14

    const/16 v14, 0xd

    invoke-direct {v15, v4, v14, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v14, Landroidx/compose/foundation/text/KeyCommand;

    const-string v4, "HOME"

    move-object/from16 v18, v15

    const/16 v15, 0xe

    invoke-direct {v14, v4, v15, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Landroidx/compose/foundation/text/KeyCommand;->HOME:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v4, "END"

    move-object/from16 v19, v14

    const/16 v14, 0xf

    invoke-direct {v15, v4, v14, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->END:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v14, Landroidx/compose/foundation/text/KeyCommand;

    const-string v4, "COPY"

    move-object/from16 v20, v15

    const/16 v15, 0x10

    invoke-direct {v14, v4, v15, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v4, "PASTE"

    const/16 v2, 0x11

    move-object/from16 v22, v14

    const/4 v14, 0x1

    invoke-direct {v15, v4, v2, v14}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v4, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "CUT"

    move-object/from16 v23, v15

    const/16 v15, 0x12

    invoke-direct {v4, v2, v15, v14}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "DELETE_PREV_CHAR"

    move-object/from16 v24, v4

    const/16 v4, 0x13

    invoke-direct {v15, v2, v4, v14}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v4, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "DELETE_NEXT_CHAR"

    move-object/from16 v25, v15

    const/16 v15, 0x14

    invoke-direct {v4, v2, v15, v14}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "DELETE_PREV_WORD"

    move-object/from16 v26, v4

    const/16 v4, 0x15

    invoke-direct {v15, v2, v4, v14}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_WORD:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v4, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "DELETE_NEXT_WORD"

    move-object/from16 v27, v15

    const/16 v15, 0x16

    invoke-direct {v4, v2, v15, v14}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "DELETE_FROM_LINE_START"

    move-object/from16 v28, v4

    const/16 v4, 0x17

    invoke-direct {v15, v2, v4, v14}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->DELETE_FROM_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v4, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "DELETE_TO_LINE_END"

    move-object/from16 v29, v15

    const/16 v15, 0x18

    invoke-direct {v4, v2, v15, v14}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Landroidx/compose/foundation/text/KeyCommand;->DELETE_TO_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_ALL"

    const/16 v14, 0x19

    move-object/from16 v30, v4

    const/4 v4, 0x0

    invoke-direct {v15, v2, v14, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v14, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_LEFT_CHAR"

    move-object/from16 v21, v15

    const/16 v15, 0x1a

    invoke-direct {v14, v2, v15, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_RIGHT_CHAR"

    move-object/from16 v31, v14

    const/16 v14, 0x1b

    invoke-direct {v15, v2, v14, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v14, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_UP"

    move-object/from16 v32, v15

    const/16 v15, 0x1c

    invoke-direct {v14, v2, v15, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Landroidx/compose/foundation/text/KeyCommand;->SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_DOWN"

    move-object/from16 v33, v14

    const/16 v14, 0x1d

    invoke-direct {v15, v2, v14, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v14, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_PAGE_UP"

    move-object/from16 v34, v15

    const/16 v15, 0x1e

    invoke-direct {v14, v2, v15, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_PAGE_DOWN"

    move-object/from16 v35, v14

    const/16 v14, 0x1f

    invoke-direct {v15, v2, v14, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v14, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_HOME"

    move-object/from16 v36, v15

    const/16 v15, 0x20

    invoke-direct {v14, v2, v15, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Landroidx/compose/foundation/text/KeyCommand;->SELECT_HOME:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_END"

    move-object/from16 v37, v14

    const/16 v14, 0x21

    invoke-direct {v15, v2, v14, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->SELECT_END:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v14, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_LEFT_WORD"

    move-object/from16 v38, v15

    const/16 v15, 0x22

    invoke-direct {v14, v2, v15, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_RIGHT_WORD"

    move-object/from16 v39, v14

    const/16 v14, 0x23

    invoke-direct {v15, v2, v14, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v14, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_NEXT_PARAGRAPH"

    move-object/from16 v40, v15

    const/16 v15, 0x24

    invoke-direct {v14, v2, v15, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Landroidx/compose/foundation/text/KeyCommand;->SELECT_NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_PREV_PARAGRAPH"

    move-object/from16 v41, v14

    const/16 v14, 0x25

    invoke-direct {v15, v2, v14, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v14, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_LINE_START"

    move-object/from16 v42, v15

    const/16 v15, 0x26

    invoke-direct {v14, v2, v15, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_LINE_END"

    move-object/from16 v43, v14

    const/16 v14, 0x27

    invoke-direct {v15, v2, v14, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v14, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_LINE_LEFT"

    move-object/from16 v44, v15

    const/16 v15, 0x28

    invoke-direct {v14, v2, v15, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "SELECT_LINE_RIGHT"

    move-object/from16 v45, v14

    const/16 v14, 0x29

    invoke-direct {v15, v2, v14, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v14, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "DESELECT"

    move-object/from16 v46, v15

    const/16 v15, 0x2a

    invoke-direct {v14, v2, v15, v4}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Landroidx/compose/foundation/text/KeyCommand;->DESELECT:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "NEW_LINE"

    const/16 v4, 0x2b

    move-object/from16 v47, v14

    const/4 v14, 0x1

    invoke-direct {v15, v2, v4, v14}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v4, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "TAB"

    move-object/from16 v16, v15

    const/16 v15, 0x2c

    invoke-direct {v4, v2, v15, v14}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Landroidx/compose/foundation/text/KeyCommand;->TAB:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "UNDO"

    move-object/from16 v48, v4

    const/16 v4, 0x2d

    invoke-direct {v15, v2, v4, v14}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->UNDO:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v4, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "REDO"

    move-object/from16 v49, v15

    const/16 v15, 0x2e

    invoke-direct {v4, v2, v15, v14}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    const-string v2, "CHARACTER_PALETTE"

    move-object/from16 v50, v4

    const/16 v4, 0x2f

    invoke-direct {v15, v2, v4, v14}, Landroidx/compose/foundation/text/KeyCommand;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->CHARACTER_PALETTE:Landroidx/compose/foundation/text/KeyCommand;

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v17, v22

    move-object/from16 v14, v19

    move-object/from16 v18, v23

    move-object/from16 v19, v25

    move-object/from16 v23, v29

    move-object/from16 v29, v34

    move-object/from16 v34, v38

    move-object/from16 v38, v42

    move-object/from16 v42, v46

    move-object/from16 v46, v49

    move-object/from16 v49, v15

    move-object/from16 v25, v21

    move-object/from16 v21, v27

    move-object/from16 v27, v32

    move-object/from16 v32, v36

    move-object/from16 v36, v40

    move-object/from16 v40, v44

    move-object/from16 v44, v16

    move-object/from16 v15, v20

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v24

    move-object/from16 v20, v26

    move-object/from16 v22, v28

    move-object/from16 v24, v30

    move-object/from16 v26, v31

    move-object/from16 v28, v33

    move-object/from16 v30, v35

    move-object/from16 v31, v32

    move-object/from16 v32, v37

    move-object/from16 v33, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v36

    move-object/from16 v36, v41

    move-object/from16 v37, v38

    move-object/from16 v38, v43

    move-object/from16 v39, v40

    move-object/from16 v40, v45

    move-object/from16 v41, v42

    move-object/from16 v42, v47

    move-object/from16 v43, v44

    move-object/from16 v44, v48

    move-object/from16 v45, v46

    move-object/from16 v46, v50

    move-object/from16 v47, v49

    filled-new-array/range {v0 .. v47}, [Landroidx/compose/foundation/text/KeyCommand;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->$VALUES:[Landroidx/compose/foundation/text/KeyCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Landroidx/compose/foundation/text/KeyCommand;->editsText:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/foundation/text/KeyCommand;
    .locals 1

    const-class v0, Landroidx/compose/foundation/text/KeyCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/KeyCommand;

    return-object p0
.end method

.method public static values()[Landroidx/compose/foundation/text/KeyCommand;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->$VALUES:[Landroidx/compose/foundation/text/KeyCommand;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/foundation/text/KeyCommand;

    return-object v0
.end method


# virtual methods
.method public final getEditsText()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/text/KeyCommand;->editsText:Z

    return p0
.end method
