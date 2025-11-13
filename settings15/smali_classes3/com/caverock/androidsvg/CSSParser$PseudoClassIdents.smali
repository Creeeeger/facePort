.class final enum Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final enum UNSUPPORTED:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final cache:Ljava/util/Map;

.field public static final enum nth_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final enum nth_last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final enum nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string/jumbo v1, "target"

    const/4 v15, 0x0

    invoke-direct {v0, v1, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string/jumbo v2, "root"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v3, "nth_child"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v4, "nth_last_child"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v5, "nth_of_type"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v5, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v6, "nth_last_of_type"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v6, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v7, "first_child"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v8, "last_child"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v9, "first_of_type"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v10, "last_of_type"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v11, "only_child"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v12, "only_of_type"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v13, "empty"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v14, "not"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v15, "lang"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v13, "link"

    move-object/from16 v18, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string/jumbo v13, "visited"

    move-object/from16 v19, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v13, "hover"

    move-object/from16 v20, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v13, "active"

    move-object/from16 v21, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v13, "focus"

    move-object/from16 v22, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v13, "enabled"

    move-object/from16 v23, v15

    const/16 v15, 0x14

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v13, "disabled"

    move-object/from16 v24, v14

    const/16 v14, 0x15

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v13, "checked"

    move-object/from16 v25, v15

    const/16 v15, 0x16

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v13, "indeterminate"

    move-object/from16 v26, v14

    const/16 v14, 0x17

    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    const-string v13, "UNSUPPORTED"

    move-object/from16 v27, v15

    const/16 v15, 0x18

    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->UNSUPPORTED:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    move-object/from16 v13, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v14

    move-object/from16 v14, v18

    move-object/from16 v18, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    const/16 v25, 0x0

    move-object/from16 v15, v19

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v27

    move-object/from16 v24, v26

    filled-new-array/range {v0 .. v24}, [Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    move-result-object v0

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->$VALUES:[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->cache:Ljava/util/Map;

    invoke-static {}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->values()[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v25

    :goto_0
    if-ge v15, v1, :cond_1

    aget-object v2, v0, v15

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->UNSUPPORTED:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v2, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5f

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->cache:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;
    .locals 1

    const-class v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    return-object p0
.end method

.method public static values()[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;
    .locals 1

    sget-object v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->$VALUES:[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    invoke-virtual {v0}, [Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    return-object v0
.end method
