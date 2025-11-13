.class public final enum Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum CLASS_ONLY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum CONSTRUCTOR:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum FIELD:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum FILE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum FUNCTION:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum LOCAL_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum LOCAL_VARIABLE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum OBJECT:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum PROPERTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum STANDALONE_OBJECT:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum TYPE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum TYPE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final enum VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

.field public static final map:Ljava/util/HashMap;


# instance fields
.field private final description:Ljava/lang/String;

.field private final isDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 48

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v1, "CLASS"

    const/4 v15, 0x0

    const-string v2, "class"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v15, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v4, "ANNOTATION_CLASS"

    const-string v5, "annotation class"

    invoke-direct {v1, v4, v3, v5, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const/4 v5, 0x2

    const-string/jumbo v6, "type parameter"

    const-string v7, "TYPE_PARAMETER"

    invoke-direct {v4, v7, v5, v6, v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->TYPE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v6, "PROPERTY"

    const/4 v7, 0x3

    const-string v8, "property"

    invoke-direct {v5, v6, v7, v8, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v7, "FIELD"

    const/4 v8, 0x4

    const-string v9, "field"

    invoke-direct {v6, v7, v8, v9, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->FIELD:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v8, "LOCAL_VARIABLE"

    const/4 v9, 0x5

    const-string v10, "local variable"

    invoke-direct {v7, v8, v9, v10, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->LOCAL_VARIABLE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v9, "VALUE_PARAMETER"

    const/4 v10, 0x6

    const-string/jumbo v11, "value parameter"

    invoke-direct {v8, v9, v10, v11, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v10, "CONSTRUCTOR"

    const/4 v11, 0x7

    const-string v12, "constructor"

    invoke-direct {v9, v10, v11, v12, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->CONSTRUCTOR:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v11, "FUNCTION"

    const/16 v12, 0x8

    const-string v13, "function"

    invoke-direct {v10, v11, v12, v13, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v10, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v12, "PROPERTY_GETTER"

    const/16 v13, 0x9

    const-string v14, "getter"

    invoke-direct {v11, v12, v13, v14, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v13, "PROPERTY_SETTER"

    const/16 v14, 0xa

    const-string/jumbo v15, "setter"

    invoke-direct {v12, v13, v14, v15, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v12, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string/jumbo v14, "type usage"

    const-string v15, "TYPE"

    const/16 v3, 0xb

    move-object/from16 v18, v12

    const/4 v12, 0x0

    invoke-direct {v13, v15, v3, v14, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->TYPE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v3, "expression"

    const-string v15, "EXPRESSION"

    move-object/from16 v19, v13

    const/16 v13, 0xc

    invoke-direct {v14, v15, v13, v3, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v3, "file"

    const-string v15, "FILE"

    move-object/from16 v20, v14

    const/16 v14, 0xd

    invoke-direct {v13, v15, v14, v3, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->FILE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string/jumbo v3, "typealias"

    const-string v15, "TYPEALIAS"

    move-object/from16 v21, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v3, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v15, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string/jumbo v3, "type projection"

    const-string v13, "TYPE_PROJECTION"

    move-object/from16 v22, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v3, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string/jumbo v3, "star projection"

    const-string v13, "STAR_PROJECTION"

    move-object/from16 v23, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15, v3, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v15, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v3, "property constructor parameter"

    const-string v13, "PROPERTY_PARAMETER"

    move-object/from16 v24, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14, v3, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const/16 v3, 0x12

    const-string v13, "CLASS_ONLY"

    invoke-direct {v14, v13, v3, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->CLASS_ONLY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "object"

    const-string v3, "OBJECT"

    move-object/from16 v25, v14

    const/16 v14, 0x13

    invoke-direct {v13, v3, v14, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->OBJECT:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string/jumbo v2, "standalone object"

    const-string v3, "STANDALONE_OBJECT"

    move-object/from16 v26, v13

    const/16 v13, 0x14

    invoke-direct {v14, v3, v13, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->STANDALONE_OBJECT:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "companion object"

    const-string v3, "COMPANION_OBJECT"

    move-object/from16 v27, v14

    const/16 v14, 0x15

    invoke-direct {v13, v3, v14, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "interface"

    const-string v3, "INTERFACE"

    move-object/from16 v28, v13

    const/16 v13, 0x16

    invoke-direct {v14, v3, v13, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "enum class"

    const-string v3, "ENUM_CLASS"

    move-object/from16 v29, v14

    const/16 v14, 0x17

    invoke-direct {v13, v3, v14, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "enum entry"

    const-string v3, "ENUM_ENTRY"

    move-object/from16 v30, v13

    const/16 v13, 0x18

    invoke-direct {v14, v3, v13, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "local class"

    const-string v3, "LOCAL_CLASS"

    move-object/from16 v31, v14

    const/16 v14, 0x19

    invoke-direct {v13, v3, v14, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->LOCAL_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "local function"

    const-string v3, "LOCAL_FUNCTION"

    move-object/from16 v32, v13

    const/16 v13, 0x1a

    invoke-direct {v14, v3, v13, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "member function"

    const-string v3, "MEMBER_FUNCTION"

    move-object/from16 v33, v14

    const/16 v14, 0x1b

    invoke-direct {v13, v3, v14, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string/jumbo v2, "top level function"

    const-string v3, "TOP_LEVEL_FUNCTION"

    move-object/from16 v34, v13

    const/16 v13, 0x1c

    invoke-direct {v14, v3, v13, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "member property"

    const-string v3, "MEMBER_PROPERTY"

    move-object/from16 v35, v14

    const/16 v14, 0x1d

    invoke-direct {v13, v3, v14, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "member property with backing field"

    const-string v3, "MEMBER_PROPERTY_WITH_BACKING_FIELD"

    move-object/from16 v36, v13

    const/16 v13, 0x1e

    invoke-direct {v14, v3, v13, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "member property with delegate"

    const-string v3, "MEMBER_PROPERTY_WITH_DELEGATE"

    move-object/from16 v37, v14

    const/16 v14, 0x1f

    invoke-direct {v13, v3, v14, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "member property without backing field or delegate"

    const-string v3, "MEMBER_PROPERTY_WITHOUT_FIELD_OR_DELEGATE"

    move-object/from16 v38, v13

    const/16 v13, 0x20

    invoke-direct {v14, v3, v13, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string/jumbo v2, "top level property"

    const-string v3, "TOP_LEVEL_PROPERTY"

    move-object/from16 v39, v14

    const/16 v14, 0x21

    invoke-direct {v13, v3, v14, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string/jumbo v2, "top level property with backing field"

    const-string v3, "TOP_LEVEL_PROPERTY_WITH_BACKING_FIELD"

    move-object/from16 v40, v13

    const/16 v13, 0x22

    invoke-direct {v14, v3, v13, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string/jumbo v2, "top level property with delegate"

    const-string v3, "TOP_LEVEL_PROPERTY_WITH_DELEGATE"

    move-object/from16 v41, v14

    const/16 v14, 0x23

    invoke-direct {v13, v3, v14, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string/jumbo v2, "top level property without backing field or delegate"

    const-string v3, "TOP_LEVEL_PROPERTY_WITHOUT_FIELD_OR_DELEGATE"

    move-object/from16 v42, v13

    const/16 v13, 0x24

    invoke-direct {v14, v3, v13, v2, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "BACKING_FIELD"

    const/16 v3, 0x25

    const-string v12, "backing field"

    move-object/from16 v43, v14

    const/4 v14, 0x1

    invoke-direct {v13, v2, v3, v12, v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "initializer"

    const-string v3, "INITIALIZER"

    const/16 v12, 0x26

    move-object/from16 v17, v15

    const/4 v15, 0x0

    invoke-direct {v14, v3, v12, v2, v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "destructuring declaration"

    const-string v3, "DESTRUCTURING_DECLARATION"

    move-object/from16 v16, v13

    const/16 v13, 0x27

    invoke-direct {v12, v3, v13, v2, v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "lambda expression"

    const-string v3, "LAMBDA_EXPRESSION"

    move-object/from16 v44, v12

    const/16 v12, 0x28

    invoke-direct {v13, v3, v12, v2, v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "anonymous function"

    const-string v3, "ANONYMOUS_FUNCTION"

    move-object/from16 v45, v13

    const/16 v13, 0x29

    invoke-direct {v12, v3, v13, v2, v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    const-string v2, "object literal"

    const-string v3, "OBJECT_LITERAL"

    move-object/from16 v46, v12

    const/16 v12, 0x2a

    invoke-direct {v13, v3, v12, v2, v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v47, v13

    move-object/from16 v19, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v36

    move-object/from16 v36, v38

    move-object/from16 v38, v40

    move-object/from16 v40, v42

    move-object/from16 v42, v16

    move-object/from16 v13, v21

    move-object/from16 v16, v24

    move-object/from16 v18, v25

    move-object/from16 v20, v27

    move-object/from16 v24, v29

    move-object/from16 v25, v31

    move-object/from16 v27, v33

    move-object/from16 v29, v35

    move-object/from16 v31, v37

    move-object/from16 v33, v39

    move-object/from16 v35, v41

    move-object/from16 v37, v43

    move-object/from16 v39, v14

    move-object/from16 v14, v22

    move/from16 v43, v15

    move-object/from16 v15, v23

    move-object/from16 v21, v26

    move-object/from16 v22, v24

    move-object/from16 v23, v28

    move-object/from16 v24, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v27

    move-object/from16 v27, v32

    move-object/from16 v28, v29

    move-object/from16 v29, v34

    move-object/from16 v30, v31

    move-object/from16 v31, v36

    move-object/from16 v32, v33

    move-object/from16 v33, v38

    move-object/from16 v34, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v37

    move-object/from16 v37, v42

    move-object/from16 v38, v39

    move-object/from16 v39, v44

    move-object/from16 v40, v45

    move-object/from16 v41, v46

    move-object/from16 v42, v47

    filled-new-array/range {v0 .. v42}, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->map:Ljava/util/HashMap;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->values()[Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v43

    :goto_0
    if-ge v15, v1, :cond_0

    aget-object v2, v0, v15

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->values()[Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    move/from16 v15, v43

    :goto_1
    if-ge v15, v2, :cond_2

    aget-object v3, v0, v15

    iget-boolean v4, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->isDefault:Z

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->values()[Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    filled-new-array {v0, v1}, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->LOCAL_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    filled-new-array {v0, v1}, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->CLASS_ONLY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    filled-new-array {v0, v1}, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->OBJECT:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    filled-new-array {v0, v2, v1}, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->STANDALONE_OBJECT:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    filled-new-array {v0, v2, v1}, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    filled-new-array {v0, v1}, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    filled-new-array {v0, v1}, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->FIELD:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    filled-new-array {v0, v1, v2}, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->FILE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;->CONSTRUCTOR_PARAMETER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;->FIELD:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;->FILE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;->PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;->RECEIVER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v0, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;->SETTER_PARAMETER:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v0, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;->PROPERTY_DELEGATE_FIELD:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v7 .. v15}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->description:Ljava/lang/String;

    iput-boolean p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->isDefault:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    return-object v0
.end method
