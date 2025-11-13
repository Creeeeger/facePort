.class public final enum Landroidx/datastore/preferences/protobuf/FieldType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum GROUP:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum GROUP_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum MAP:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum MESSAGE:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum MESSAGE_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;


# instance fields
.field private final collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final id:I

.field private final javaType:Landroidx/datastore/preferences/protobuf/JavaType;

.field private final primitiveScalar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 68

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object v6, v0

    sget-object v29, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v47, Landroidx/datastore/preferences/protobuf/JavaType;->DOUBLE:Landroidx/datastore/preferences/protobuf/JavaType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v1, "DOUBLE"

    move-object/from16 v4, v29

    move-object/from16 v5, v47

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v8, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object v7, v8

    sget-object v48, Landroidx/datastore/preferences/protobuf/JavaType;->FLOAT:Landroidx/datastore/preferences/protobuf/JavaType;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-string v9, "FLOAT"

    move-object/from16 v12, v29

    move-object/from16 v13, v48

    invoke-direct/range {v8 .. v13}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v9, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object v8, v9

    sget-object v55, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const/4 v11, 0x2

    const/4 v12, 0x2

    const-string v10, "INT64"

    move-object/from16 v13, v29

    move-object/from16 v14, v55

    invoke-direct/range {v9 .. v14}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v10, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object v9, v10

    const/4 v13, 0x3

    const-string v11, "UINT64"

    const/4 v12, 0x3

    move-object/from16 v14, v29

    move-object/from16 v15, v55

    invoke-direct/range {v10 .. v15}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v11, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object v10, v11

    sget-object v54, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const/4 v13, 0x4

    const/4 v14, 0x4

    const-string v12, "INT32"

    move-object/from16 v15, v29

    move-object/from16 v16, v54

    invoke-direct/range {v11 .. v16}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v12, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object v11, v12

    const/4 v15, 0x5

    const-string v13, "FIXED64"

    const/4 v14, 0x5

    move-object/from16 v16, v29

    move-object/from16 v17, v55

    invoke-direct/range {v12 .. v17}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v13, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object v12, v13

    const/16 v16, 0x6

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    move-object/from16 v17, v29

    move-object/from16 v18, v54

    invoke-direct/range {v13 .. v18}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v14, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object v13, v14

    sget-object v49, Landroidx/datastore/preferences/protobuf/JavaType;->BOOLEAN:Landroidx/datastore/preferences/protobuf/JavaType;

    const/16 v16, 0x7

    const/16 v17, 0x7

    const-string v15, "BOOL"

    move-object/from16 v18, v29

    move-object/from16 v19, v49

    invoke-direct/range {v14 .. v19}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v15, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object v14, v15

    sget-object v36, Landroidx/datastore/preferences/protobuf/JavaType;->STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    const/16 v17, 0x8

    const/16 v18, 0x8

    const-string v16, "STRING"

    move-object/from16 v19, v29

    move-object/from16 v20, v36

    invoke-direct/range {v15 .. v20}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object v15, v0

    sget-object v61, Landroidx/datastore/preferences/protobuf/JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/JavaType;

    const/16 v18, 0x9

    const/16 v19, 0x9

    const-string v17, "MESSAGE"

    move-object/from16 v16, v0

    move-object/from16 v20, v29

    move-object/from16 v21, v61

    invoke-direct/range {v16 .. v21}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->MESSAGE:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v17, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v16, v17

    sget-object v43, Landroidx/datastore/preferences/protobuf/JavaType;->BYTE_STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    const/16 v19, 0xa

    const/16 v20, 0xa

    const-string v18, "BYTES"

    move-object/from16 v21, v29

    move-object/from16 v22, v43

    invoke-direct/range {v17 .. v22}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v18, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v17, v18

    const/16 v21, 0xb

    const-string v19, "UINT32"

    const/16 v20, 0xb

    move-object/from16 v22, v29

    move-object/from16 v23, v54

    invoke-direct/range {v18 .. v23}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v18, v19

    sget-object v51, Landroidx/datastore/preferences/protobuf/JavaType;->ENUM:Landroidx/datastore/preferences/protobuf/JavaType;

    const/16 v21, 0xc

    const/16 v22, 0xc

    const-string v20, "ENUM"

    move-object/from16 v23, v29

    move-object/from16 v24, v51

    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v20, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v19, v20

    const/16 v23, 0xd

    const-string v21, "SFIXED32"

    const/16 v22, 0xd

    move-object/from16 v24, v29

    move-object/from16 v25, v54

    invoke-direct/range {v20 .. v25}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v21, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v20, v21

    const/16 v24, 0xe

    const-string v22, "SFIXED64"

    const/16 v23, 0xe

    move-object/from16 v25, v29

    move-object/from16 v26, v55

    invoke-direct/range {v21 .. v26}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v22, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v21, v22

    const/16 v25, 0xf

    const-string v23, "SINT32"

    const/16 v24, 0xf

    move-object/from16 v26, v29

    move-object/from16 v27, v54

    invoke-direct/range {v22 .. v27}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v23, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v22, v23

    const/16 v26, 0x10

    const-string v24, "SINT64"

    const/16 v25, 0x10

    move-object/from16 v27, v29

    move-object/from16 v28, v55

    invoke-direct/range {v23 .. v28}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v23, v0

    const/16 v27, 0x11

    const-string v25, "GROUP"

    const/16 v26, 0x11

    move-object/from16 v24, v0

    move-object/from16 v28, v29

    move-object/from16 v29, v61

    invoke-direct/range {v24 .. v29}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->GROUP:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v30, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v24, v30

    sget-object v60, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    const/16 v32, 0x12

    const/16 v33, 0x12

    const-string v31, "DOUBLE_LIST"

    move-object/from16 v34, v60

    move-object/from16 v35, v47

    invoke-direct/range {v30 .. v35}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v25, v0

    const/16 v3, 0x13

    const-string v1, "FLOAT_LIST"

    const/16 v2, 0x13

    move-object/from16 v4, v60

    move-object/from16 v5, v48

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v26, v0

    const/16 v3, 0x14

    const-string v1, "INT64_LIST"

    const/16 v2, 0x14

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v27, v0

    const/16 v3, 0x15

    const-string v1, "UINT64_LIST"

    const/16 v2, 0x15

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v28, v0

    const/16 v3, 0x16

    const-string v1, "INT32_LIST"

    const/16 v2, 0x16

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v29, v0

    const/16 v3, 0x17

    const-string v1, "FIXED64_LIST"

    const/16 v2, 0x17

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v30, v0

    const/16 v3, 0x18

    const-string v1, "FIXED32_LIST"

    const/16 v2, 0x18

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v31, v0

    const/16 v3, 0x19

    const-string v1, "BOOL_LIST"

    const/16 v2, 0x19

    move-object/from16 v5, v49

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v32, v0

    const/16 v3, 0x1a

    const-string v1, "STRING_LIST"

    const/16 v2, 0x1a

    move-object/from16 v5, v36

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v33, v0

    const/16 v40, 0x1b

    const-string v38, "MESSAGE_LIST"

    const/16 v39, 0x1b

    move-object/from16 v37, v0

    move-object/from16 v41, v60

    move-object/from16 v42, v61

    invoke-direct/range {v37 .. v42}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->MESSAGE_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v34, v0

    const/16 v3, 0x1c

    const-string v1, "BYTES_LIST"

    const/16 v2, 0x1c

    move-object/from16 v5, v43

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v35, v0

    const/16 v3, 0x1d

    const-string v1, "UINT32_LIST"

    const/16 v2, 0x1d

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v36, v0

    const/16 v3, 0x1e

    const-string v1, "ENUM_LIST"

    const/16 v2, 0x1e

    move-object/from16 v5, v51

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v37, v0

    const/16 v3, 0x1f

    const-string v1, "SFIXED32_LIST"

    const/16 v2, 0x1f

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v38, v0

    const/16 v3, 0x20

    const-string v1, "SFIXED64_LIST"

    const/16 v2, 0x20

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v39, v0

    const/16 v3, 0x21

    const-string v1, "SINT32_LIST"

    const/16 v2, 0x21

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v40, v0

    const/16 v3, 0x22

    const-string v1, "SINT64_LIST"

    const/16 v2, 0x22

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v41, v0

    sget-object v56, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    const/16 v44, 0x23

    const/16 v45, 0x23

    const-string v43, "DOUBLE_LIST_PACKED"

    move-object/from16 v42, v0

    move-object/from16 v46, v56

    invoke-direct/range {v42 .. v47}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v42, v0

    const/16 v3, 0x24

    const-string v1, "FLOAT_LIST_PACKED"

    const/16 v2, 0x24

    move-object/from16 v4, v56

    move-object/from16 v5, v48

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v43, v0

    const/16 v3, 0x25

    const-string v1, "INT64_LIST_PACKED"

    const/16 v2, 0x25

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v44, v0

    const/16 v3, 0x26

    const-string v1, "UINT64_LIST_PACKED"

    const/16 v2, 0x26

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v45, v0

    const/16 v3, 0x27

    const-string v1, "INT32_LIST_PACKED"

    const/16 v2, 0x27

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v46, v0

    const/16 v3, 0x28

    const-string v1, "FIXED64_LIST_PACKED"

    const/16 v2, 0x28

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v47, v0

    const/16 v3, 0x29

    const-string v1, "FIXED32_LIST_PACKED"

    const/16 v2, 0x29

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v48, v0

    const/16 v3, 0x2a

    const-string v1, "BOOL_LIST_PACKED"

    const/16 v2, 0x2a

    move-object/from16 v5, v49

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v49, v0

    const/16 v3, 0x2b

    const-string v1, "UINT32_LIST_PACKED"

    const/16 v2, 0x2b

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v50, v0

    const/16 v3, 0x2c

    const-string v1, "ENUM_LIST_PACKED"

    const/16 v2, 0x2c

    move-object/from16 v5, v51

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v51, v0

    const/16 v3, 0x2d

    const-string v1, "SFIXED32_LIST_PACKED"

    const/16 v2, 0x2d

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v52, v0

    const/16 v3, 0x2e

    const-string v1, "SFIXED64_LIST_PACKED"

    const/16 v2, 0x2e

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v53, v0

    const/16 v3, 0x2f

    const-string v1, "SINT32_LIST_PACKED"

    const/16 v2, 0x2f

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    new-instance v57, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v54, v57

    const/16 v3, 0x30

    const-string v1, "SINT64_LIST_PACKED"

    const/16 v2, 0x30

    move-object/from16 v0, v57

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v57, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v55, v0

    const/16 v59, 0x31

    const-string v57, "GROUP_LIST"

    const/16 v58, 0x31

    move-object/from16 v56, v0

    invoke-direct/range {v56 .. v61}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->GROUP_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v56, v0

    sget-object v66, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->MAP:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v67, Landroidx/datastore/preferences/protobuf/JavaType;->VOID:Landroidx/datastore/preferences/protobuf/JavaType;

    const/16 v64, 0x32

    const/16 v65, 0x32

    const-string v63, "MAP"

    move-object/from16 v62, v0

    invoke-direct/range {v62 .. v67}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->MAP:Landroidx/datastore/preferences/protobuf/FieldType;

    filled-new-array/range {v6 .. v56}, [Landroidx/datastore/preferences/protobuf/FieldType;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->$VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/reflect/Type;

    invoke-static {}, Landroidx/datastore/preferences/protobuf/FieldType;->values()[Landroidx/datastore/preferences/protobuf/FieldType;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Landroidx/datastore/preferences/protobuf/FieldType;

    sput-object v2, Landroidx/datastore/preferences/protobuf/FieldType;->VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Landroidx/datastore/preferences/protobuf/FieldType;->VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    iget v5, v3, Landroidx/datastore/preferences/protobuf/FieldType;->id:I

    aput-object v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/datastore/preferences/protobuf/FieldType$Collection;",
            "Landroidx/datastore/preferences/protobuf/JavaType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/datastore/preferences/protobuf/FieldType;->id:I

    iput-object p4, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/FieldType;->javaType:Landroidx/datastore/preferences/protobuf/JavaType;

    sget-object p1, Landroidx/datastore/preferences/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->elementType:Ljava/lang/Class;

    :goto_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    if-ne p4, p1, :cond_2

    sget-object p1, Landroidx/datastore/preferences/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p1, p1, p4

    if-eq p1, p3, :cond_2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Landroidx/datastore/preferences/protobuf/FieldType;->primitiveScalar:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/FieldType;
    .locals 1

    const-class v0, Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/FieldType;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/FieldType;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->$VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/FieldType;

    return-object v0
.end method


# virtual methods
.method public final id()I
    .locals 0

    iget p0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->id:I

    return p0
.end method

.method public final isList()Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->isList()Z

    move-result p0

    return p0
.end method

.method public final isMap()Z
    .locals 1

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->MAP:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
