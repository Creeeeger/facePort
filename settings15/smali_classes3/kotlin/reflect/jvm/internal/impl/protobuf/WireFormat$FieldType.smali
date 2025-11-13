.class public enum Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum BOOL:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum BYTES:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum DOUBLE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum FIXED32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum FIXED64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum FLOAT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum INT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum INT64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum SINT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum SINT64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum UINT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum UINT64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;


# instance fields
.field private final javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

.field private final wireType:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->INT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->INT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    new-instance v15, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const-string v12, "FIXED64"

    invoke-direct {v15, v12, v6, v5, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const/4 v12, 0x6

    const-string v13, "FIXED32"

    invoke-direct {v14, v13, v12, v11, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v4, "BOOL"

    const/4 v6, 0x7

    invoke-direct {v13, v4, v6, v12, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v13, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->BOOL:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$1;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v12, "STRING"

    const/16 v3, 0x8

    invoke-direct {v6, v12, v3, v4, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$2;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v12, "GROUP"

    const/16 v8, 0x9

    invoke-direct {v4, v12, v8, v3, v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$3;

    const-string v8, "MESSAGE"

    const/16 v12, 0xa

    move-object/from16 v19, v4

    const/4 v4, 0x2

    invoke-direct {v10, v8, v12, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$4;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->BYTE_STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v12, "BYTES"

    move-object/from16 v18, v6

    const/16 v6, 0xb

    invoke-direct {v8, v12, v6, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-object v12, v3

    const/16 v4, 0xc

    const-string v6, "UINT32"

    move-object/from16 v20, v8

    const/4 v8, 0x0

    invoke-direct {v3, v6, v4, v11, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-object/from16 v21, v13

    move-object v13, v3

    const/16 v4, 0xd

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    move-object/from16 v22, v14

    const-string v14, "ENUM"

    invoke-direct {v3, v14, v4, v6, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-object/from16 v6, v22

    move-object v14, v3

    const/16 v4, 0xe

    const-string v8, "SFIXED32"

    move-object/from16 v22, v15

    const/4 v15, 0x5

    invoke-direct {v3, v8, v4, v11, v15}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-object/from16 v8, v22

    move-object v15, v3

    const/16 v4, 0xf

    move-object/from16 v22, v12

    const-string v12, "SFIXED64"

    move-object/from16 v23, v13

    const/4 v13, 0x1

    invoke-direct {v3, v12, v4, v5, v13}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-object/from16 v16, v3

    const/16 v4, 0x10

    const-string v12, "SINT32"

    const/4 v13, 0x0

    invoke-direct {v3, v12, v4, v11, v13}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-object/from16 v17, v3

    const/16 v4, 0x11

    const-string v11, "SINT64"

    invoke-direct {v3, v11, v4, v5, v13}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    move-object v3, v7

    move-object/from16 v11, v19

    move-object v4, v9

    move-object v5, v8

    move-object/from16 v8, v18

    move-object/from16 v7, v21

    move-object/from16 v12, v20

    move-object v9, v11

    move-object v11, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    filled-new-array/range {v0 .. v17}, [Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    iput p4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->wireType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    return-object v0
.end method


# virtual methods
.method public final getJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    return-object p0
.end method

.method public final getWireType()I
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->wireType:I

    return p0
.end method

.method public isPackable()Z
    .locals 0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$1;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
