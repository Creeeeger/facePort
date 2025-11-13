.class public final Lcom/google/protobuf/FieldInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final cachedSizeField:Ljava/lang/reflect/Field;

.field public final enforceUtf8:Z

.field public final enumVerifier:Lcom/google/protobuf/Internal$EnumVerifier;

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldNumber:I

.field public final mapDefaultEntry:Ljava/lang/Object;

.field public final messageClass:Ljava/lang/Class;

.field public final oneof:Lcom/google/protobuf/OneofInfo;

.field public final oneofStoredType:Ljava/lang/Class;

.field public final presenceField:Ljava/lang/reflect/Field;

.field public final presenceMask:I

.field public final required:Z

.field public final type:Lcom/google/protobuf/FieldType;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/google/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "IZZ",
            "Lcom/google/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/Internal$EnumVerifier;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/google/protobuf/FieldInfo;->type:Lcom/google/protobuf/FieldType;

    iput-object p4, p0, Lcom/google/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    iput p2, p0, Lcom/google/protobuf/FieldInfo;->fieldNumber:I

    iput-object p5, p0, Lcom/google/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    iput p6, p0, Lcom/google/protobuf/FieldInfo;->presenceMask:I

    iput-boolean p7, p0, Lcom/google/protobuf/FieldInfo;->required:Z

    iput-boolean p8, p0, Lcom/google/protobuf/FieldInfo;->enforceUtf8:Z

    iput-object p9, p0, Lcom/google/protobuf/FieldInfo;->oneof:Lcom/google/protobuf/OneofInfo;

    iput-object p10, p0, Lcom/google/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    iput-object p11, p0, Lcom/google/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    iput-object p12, p0, Lcom/google/protobuf/FieldInfo;->enumVerifier:Lcom/google/protobuf/Internal$EnumVerifier;

    iput-object p13, p0, Lcom/google/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/FieldInfo;

    iget p0, p0, Lcom/google/protobuf/FieldInfo;->fieldNumber:I

    iget p1, p1, Lcom/google/protobuf/FieldInfo;->fieldNumber:I

    sub-int/2addr p0, p1

    return p0
.end method
