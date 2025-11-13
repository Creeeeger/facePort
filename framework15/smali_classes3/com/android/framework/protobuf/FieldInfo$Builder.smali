.class public final Lcom/android/framework/protobuf/FieldInfo$Builder;
.super Ljava/lang/Object;
.source "FieldInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/FieldInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist cachedSizeField:Ljava/lang/reflect/Field;

.field private blacklist enforceUtf8:Z

.field private blacklist enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

.field private blacklist field:Ljava/lang/reflect/Field;

.field private blacklist fieldNumber:I

.field private blacklist mapDefaultEntry:Ljava/lang/Object;

.field private blacklist oneof:Lcom/android/framework/protobuf/OneofInfo;

.field private blacklist oneofStoredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist presenceField:Ljava/lang/reflect/Field;

.field private blacklist presenceMask:I

.field private blacklist required:Z

.field private blacklist type:Lcom/android/framework/protobuf/FieldType;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/FieldInfo$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/framework/protobuf/FieldInfo;
    .locals 8

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->oneof:Lcom/android/framework/protobuf/OneofInfo;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->type:Lcom/android/framework/protobuf/FieldType;

    iget-object v3, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->oneof:Lcom/android/framework/protobuf/OneofInfo;

    iget-object v4, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->oneofStoredType:Ljava/lang/Class;

    iget-boolean v5, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    iget-object v6, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldInfo;->forOneofMemberField(ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;ZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->mapDefaultEntry:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->mapDefaultEntry:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    invoke-static {v0, v1, v2, v3}, Lcom/android/framework/protobuf/FieldInfo;->forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->required:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v3, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->type:Lcom/android/framework/protobuf/FieldType;

    iget-object v4, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    iget v5, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->presenceMask:I

    iget-boolean v6, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    iget-object v7, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    invoke-static/range {v1 .. v7}, Lcom/android/framework/protobuf/FieldInfo;->forProto2RequiredField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v3, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->type:Lcom/android/framework/protobuf/FieldType;

    iget-object v4, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    iget v5, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->presenceMask:I

    iget-boolean v6, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    iget-object v7, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    invoke-static/range {v1 .. v7}, Lcom/android/framework/protobuf/FieldInfo;->forProto2OptionalField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->cachedSizeField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->type:Lcom/android/framework/protobuf/FieldType;

    iget-object v3, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    invoke-static {v0, v1, v2, v3}, Lcom/android/framework/protobuf/FieldInfo;->forFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->type:Lcom/android/framework/protobuf/FieldType;

    iget-object v3, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    iget-object v4, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->cachedSizeField:Ljava/lang/reflect/Field;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/framework/protobuf/FieldInfo;->forPackedFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/android/framework/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->cachedSizeField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->type:Lcom/android/framework/protobuf/FieldType;

    iget-boolean v3, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/framework/protobuf/FieldInfo;->forField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Z)Lcom/android/framework/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->type:Lcom/android/framework/protobuf/FieldType;

    iget-object v3, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->cachedSizeField:Ljava/lang/reflect/Field;

    invoke-static {v0, v1, v2, v3}, Lcom/android/framework/protobuf/FieldInfo;->forPackedField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/android/framework/protobuf/FieldInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist withCachedSizeField(Ljava/lang/reflect/Field;)Lcom/android/framework/protobuf/FieldInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->cachedSizeField:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public blacklist withEnforceUtf8(Z)Lcom/android/framework/protobuf/FieldInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    return-object p0
.end method

.method public blacklist withEnumVerifier(Lcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    return-object p0
.end method

.method public blacklist withField(Ljava/lang/reflect/Field;)Lcom/android/framework/protobuf/FieldInfo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->oneof:Lcom/android/framework/protobuf/OneofInfo;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set field when building a oneof."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist withFieldNumber(I)Lcom/android/framework/protobuf/FieldInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->fieldNumber:I

    return-object p0
.end method

.method public blacklist withMapDefaultEntry(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->mapDefaultEntry:Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist withOneof(Lcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;)Lcom/android/framework/protobuf/FieldInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/framework/protobuf/FieldInfo$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->oneof:Lcom/android/framework/protobuf/OneofInfo;

    iput-object p2, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->oneofStoredType:Ljava/lang/Class;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set oneof when field or presenceField have been provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist withPresence(Ljava/lang/reflect/Field;I)Lcom/android/framework/protobuf/FieldInfo$Builder;
    .locals 1

    const-string/jumbo v0, "presenceField"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    iput p2, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->presenceMask:I

    return-object p0
.end method

.method public blacklist withRequired(Z)Lcom/android/framework/protobuf/FieldInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->required:Z

    return-object p0
.end method

.method public blacklist withType(Lcom/android/framework/protobuf/FieldType;)Lcom/android/framework/protobuf/FieldInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldInfo$Builder;->type:Lcom/android/framework/protobuf/FieldType;

    return-object p0
.end method
