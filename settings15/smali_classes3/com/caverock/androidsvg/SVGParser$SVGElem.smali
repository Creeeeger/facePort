.class final enum Lcom/caverock/androidsvg/SVGParser$SVGElem;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/caverock/androidsvg/SVGParser$SVGElem;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final enum SWITCH:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final enum UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final cache:Ljava/util/Map;

.field public static final enum desc:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public static final enum title:Lcom/caverock/androidsvg/SVGParser$SVGElem;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    new-instance v0, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string/jumbo v1, "svg"

    const/4 v15, 0x0

    invoke-direct {v0, v1, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v2, "a"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v3, "circle"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v4, "clipPath"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v5, "defs"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v6, "desc"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/caverock/androidsvg/SVGParser$SVGElem;->desc:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v6, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v7, "ellipse"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v8, "g"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v9, "image"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v10, "line"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v11, "linearGradient"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v12, "marker"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v13, "mask"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v14, "path"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v15, "pattern"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v13, "polygon"

    move-object/from16 v18, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v13, "polyline"

    move-object/from16 v19, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v13, "radialGradient"

    move-object/from16 v20, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string/jumbo v13, "rect"

    move-object/from16 v21, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string/jumbo v13, "solidColor"

    move-object/from16 v22, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string/jumbo v13, "stop"

    move-object/from16 v23, v15

    const/16 v15, 0x14

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string/jumbo v13, "style"

    move-object/from16 v24, v14

    const/16 v14, 0x15

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v13, "SWITCH"

    move-object/from16 v25, v15

    const/16 v15, 0x16

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/caverock/androidsvg/SVGParser$SVGElem;->SWITCH:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v15, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string/jumbo v13, "symbol"

    move-object/from16 v26, v14

    const/16 v14, 0x17

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string/jumbo v13, "text"

    move-object/from16 v27, v15

    const/16 v15, 0x18

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string/jumbo v13, "textPath"

    move-object/from16 v28, v14

    const/16 v14, 0x19

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string/jumbo v13, "title"

    move-object/from16 v29, v15

    const/16 v15, 0x1a

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/caverock/androidsvg/SVGParser$SVGElem;->title:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v15, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string/jumbo v13, "tref"

    move-object/from16 v30, v14

    const/16 v14, 0x1b

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string/jumbo v13, "tspan"

    move-object/from16 v31, v15

    const/16 v15, 0x1c

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string/jumbo v13, "use"

    move-object/from16 v32, v14

    const/16 v14, 0x1d

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string/jumbo v13, "view"

    move-object/from16 v33, v15

    const/16 v15, 0x1e

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    const-string v13, "UNSUPPORTED"

    move-object/from16 v34, v14

    const/16 v14, 0x1f

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/caverock/androidsvg/SVGParser$SVGElem;->UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    move-object/from16 v13, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v34

    move-object/from16 v14, v18

    move-object/from16 v34, v15

    move-object/from16 v18, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    const/16 v33, 0x0

    move-object/from16 v15, v19

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v30

    move-object/from16 v29, v31

    move-object/from16 v30, v32

    move-object/from16 v31, v34

    filled-new-array/range {v0 .. v31}, [Lcom/caverock/androidsvg/SVGParser$SVGElem;

    move-result-object v0

    sput-object v0, Lcom/caverock/androidsvg/SVGParser$SVGElem;->$VALUES:[Lcom/caverock/androidsvg/SVGParser$SVGElem;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser$SVGElem;->cache:Ljava/util/Map;

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->values()[Lcom/caverock/androidsvg/SVGParser$SVGElem;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v33

    :goto_0
    if-ge v15, v1, :cond_2

    aget-object v2, v0, v15

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->SWITCH:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v2, v3, :cond_0

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->cache:Ljava/util/Map;

    const-string/jumbo v4, "switch"

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v2, v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGElem;->cache:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGElem;
    .locals 1

    const-class v0, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    return-object p0
.end method

.method public static values()[Lcom/caverock/androidsvg/SVGParser$SVGElem;
    .locals 1

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$SVGElem;->$VALUES:[Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v0}, [Lcom/caverock/androidsvg/SVGParser$SVGElem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/SVGParser$SVGElem;

    return-object v0
.end method
