.class public enum Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum BOOL:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum BYTES:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum DOUBLE:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum ENUM:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum FIXED32:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum FIXED64:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum FLOAT:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum GROUP:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum INT32:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum INT64:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum MESSAGE:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED32:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED64:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum SINT32:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum SINT64:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum STRING:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum UINT32:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public static final enum UINT64:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;


# instance fields
.field private final javaType:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

.field private final wireType:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v1, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    move-object v0, v1

    sget-object v2, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->DOUBLE:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    const-string v3, "DOUBLE"

    const/4 v15, 0x0

    const/4 v14, 0x1

    invoke-direct {v1, v3, v15, v2, v14}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->DOUBLE:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v2, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    move-object v1, v2

    sget-object v3, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->FLOAT:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    const-string v4, "FLOAT"

    const/4 v13, 0x5

    invoke-direct {v2, v4, v14, v3, v13}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v2, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->FLOAT:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v3, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    move-object v2, v3

    sget-object v12, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->LONG:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    const-string v4, "INT64"

    const/4 v11, 0x2

    invoke-direct {v3, v4, v11, v12, v15}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v3, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->INT64:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v4, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    move-object v3, v4

    const-string v5, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v4, v5, v10, v12, v15}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v4, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->UINT64:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v5, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    move-object v4, v5

    sget-object v9, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->INT:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    const-string v6, "INT32"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v9, v15}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v5, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->INT32:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v6, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    move-object v5, v6

    const-string v7, "FIXED64"

    invoke-direct {v6, v7, v13, v12, v14}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v6, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->FIXED64:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v7, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    move-object v6, v7

    const-string v8, "FIXED32"

    const/4 v14, 0x6

    invoke-direct {v7, v8, v14, v9, v13}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v7, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->FIXED32:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v8, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    move-object v7, v8

    const/4 v14, 0x7

    sget-object v13, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->BOOLEAN:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    const-string v10, "BOOL"

    invoke-direct {v8, v10, v14, v13, v15}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v8, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->BOOL:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v10, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType$1;

    move-object v8, v10

    const/16 v13, 0x8

    sget-object v14, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->STRING:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    const-string v15, "STRING"

    invoke-direct {v10, v15, v13, v14, v11}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType$1;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v10, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->STRING:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v10, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType$2;

    move-object v15, v9

    move-object v9, v10

    sget-object v13, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    const-string v14, "GROUP"

    const/16 v11, 0x9

    move-object/from16 v21, v12

    const/4 v12, 0x3

    invoke-direct {v10, v14, v11, v13, v12}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType$2;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v10, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->GROUP:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v11, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType$3;

    move-object v10, v11

    const-string v12, "MESSAGE"

    const/16 v14, 0xa

    move-object/from16 v18, v0

    const/4 v0, 0x2

    invoke-direct {v11, v12, v14, v13, v0}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType$3;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v11, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->MESSAGE:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v12, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType$4;

    move-object v11, v12

    const/16 v13, 0xb

    sget-object v14, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->BYTE_STRING:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    move-object/from16 v20, v1

    const-string v1, "BYTES"

    invoke-direct {v12, v1, v13, v14, v0}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType$4;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v12, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->BYTES:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    move-object/from16 v1, v21

    move-object v12, v0

    const-string v13, "UINT32"

    const/16 v14, 0xc

    move-object/from16 v21, v2

    const/4 v2, 0x0

    invoke-direct {v0, v13, v14, v15, v2}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->UINT32:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const/4 v14, 0x5

    move-object v13, v0

    const/16 v14, 0xd

    move-object/from16 v19, v3

    sget-object v3, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->ENUM:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    move-object/from16 v22, v4

    const-string v4, "ENUM"

    invoke-direct {v0, v4, v14, v3, v2}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->ENUM:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const/4 v3, 0x1

    const/4 v4, 0x5

    move-object v14, v0

    const-string v2, "SFIXED32"

    const/16 v3, 0xe

    invoke-direct {v0, v2, v3, v15, v4}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->SFIXED32:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    move-object v3, v15

    const/4 v2, 0x0

    move-object v15, v0

    const-string v4, "SFIXED64"

    const/16 v2, 0xf

    move-object/from16 v23, v5

    const/4 v5, 0x1

    invoke-direct {v0, v4, v2, v1, v5}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->SFIXED64:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    move-object/from16 v16, v0

    const-string v2, "SINT32"

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-direct {v0, v2, v4, v3, v5}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->SINT32:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    new-instance v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    move-object/from16 v17, v0

    const-string v2, "SINT64"

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3, v1, v5}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->SINT64:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    filled-new-array/range {v0 .. v17}, [Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->$VALUES:[Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->javaType:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    iput p4, p0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->wireType:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;ILandroidx/datastore/preferences/protobuf/WireFormat$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/WireFormat$JavaType;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;
    .locals 1

    const-class v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->$VALUES:[Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    return-object v0
.end method


# virtual methods
.method public final getJavaType()Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->javaType:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    return-object p0
.end method

.method public final getWireType()I
    .locals 0

    iget p0, p0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->wireType:I

    return p0
.end method
