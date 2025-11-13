.class public final Lcom/google/protobuf/Protobuf;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/Protobuf;


# instance fields
.field public final schemaCache:Ljava/util/concurrent/ConcurrentMap;

.field public final schemaFactory:Lcom/google/protobuf/ManifestSchemaFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/Protobuf;

    invoke-direct {v0}, Lcom/google/protobuf/Protobuf;-><init>()V

    sput-object v0, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/protobuf/ManifestSchemaFactory;

    invoke-direct {v0}, Lcom/google/protobuf/ManifestSchemaFactory;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/Protobuf;->schemaFactory:Lcom/google/protobuf/ManifestSchemaFactory;

    return-void
.end method


# virtual methods
.method public final schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;
    .locals 8

    sget-object v0, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Schema;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/Protobuf;->schemaFactory:Lcom/google/protobuf/ManifestSchemaFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    const-class v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message classes must extend GeneratedMessageV3 or GeneratedMessageLite"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/google/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/google/protobuf/MessageInfoFactory;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Lcom/google/protobuf/RawMessageInfo;

    move-result-object v2

    iget v0, v2, Lcom/google/protobuf/RawMessageInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    const-string v4, "Protobuf runtime is not correctly loaded."

    if-ne v0, v3, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iget-object v1, v2, Lcom/google/protobuf/RawMessageInfo;->defaultInstance:Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    sget-object v2, Lcom/google/protobuf/ExtensionSchemas;->LITE_SCHEMA:Lcom/google/protobuf/ExtensionSchemaLite;

    new-instance v3, Lcom/google/protobuf/MessageSetSchema;

    invoke-direct {v3, v0, v2, v1}, Lcom/google/protobuf/MessageSetSchema;-><init>(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MessageLite;)V

    :goto_1
    move-object v0, v3

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lcom/google/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    sget-object v2, Lcom/google/protobuf/ExtensionSchemas;->FULL_SCHEMA:Lcom/google/protobuf/ExtensionSchemaLite;

    if-eqz v2, :cond_3

    new-instance v3, Lcom/google/protobuf/MessageSetSchema;

    invoke-direct {v3, v0, v2, v1}, Lcom/google/protobuf/MessageSetSchema;-><init>(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MessageLite;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    sget-object v3, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    const/4 v5, 0x1

    if-eqz v0, :cond_7

    iget v0, v2, Lcom/google/protobuf/RawMessageInfo;->flags:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_5

    move-object v1, v3

    :cond_5
    if-ne v1, v3, :cond_6

    sget-object v3, Lcom/google/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Lcom/google/protobuf/NewInstanceSchemaLite;

    sget-object v4, Lcom/google/protobuf/ListFieldSchema;->LITE_INSTANCE:Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaLite;

    sget-object v5, Lcom/google/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    sget-object v6, Lcom/google/protobuf/ExtensionSchemas;->LITE_SCHEMA:Lcom/google/protobuf/ExtensionSchemaLite;

    sget-object v7, Lcom/google/protobuf/MapFieldSchemas;->LITE_SCHEMA:Lcom/google/protobuf/MapFieldSchemaLite;

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/MessageSchema;->newSchema(Lcom/google/protobuf/RawMessageInfo;Lcom/google/protobuf/NewInstanceSchemaLite;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MapFieldSchemaLite;)Lcom/google/protobuf/MessageSchema;

    move-result-object v0

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/google/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Lcom/google/protobuf/NewInstanceSchemaLite;

    sget-object v4, Lcom/google/protobuf/ListFieldSchema;->LITE_INSTANCE:Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaLite;

    sget-object v5, Lcom/google/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    sget-object v7, Lcom/google/protobuf/MapFieldSchemas;->LITE_SCHEMA:Lcom/google/protobuf/MapFieldSchemaLite;

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/MessageSchema;->newSchema(Lcom/google/protobuf/RawMessageInfo;Lcom/google/protobuf/NewInstanceSchemaLite;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MapFieldSchemaLite;)Lcom/google/protobuf/MessageSchema;

    move-result-object v0

    goto :goto_2

    :cond_7
    iget v0, v2, Lcom/google/protobuf/RawMessageInfo;->flags:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_8

    move-object v1, v3

    :cond_8
    if-ne v1, v3, :cond_a

    sget-object v3, Lcom/google/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Lcom/google/protobuf/NewInstanceSchemaLite;

    sget-object v0, Lcom/google/protobuf/ListFieldSchema;->FULL_INSTANCE:Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;

    sget-object v5, Lcom/google/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    sget-object v6, Lcom/google/protobuf/ExtensionSchemas;->FULL_SCHEMA:Lcom/google/protobuf/ExtensionSchemaLite;

    if-eqz v6, :cond_9

    sget-object v7, Lcom/google/protobuf/MapFieldSchemas;->FULL_SCHEMA:Lcom/google/protobuf/MapFieldSchemaLite;

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/MessageSchema;->newSchema(Lcom/google/protobuf/RawMessageInfo;Lcom/google/protobuf/NewInstanceSchemaLite;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MapFieldSchemaLite;)Lcom/google/protobuf/MessageSchema;

    move-result-object v0

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    sget-object v3, Lcom/google/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Lcom/google/protobuf/NewInstanceSchemaLite;

    sget-object v4, Lcom/google/protobuf/ListFieldSchema;->FULL_INSTANCE:Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;

    sget-object v5, Lcom/google/protobuf/SchemaUtil;->PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    sget-object v7, Lcom/google/protobuf/MapFieldSchemas;->FULL_SCHEMA:Lcom/google/protobuf/MapFieldSchemaLite;

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/MessageSchema;->newSchema(Lcom/google/protobuf/RawMessageInfo;Lcom/google/protobuf/NewInstanceSchemaLite;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MapFieldSchemaLite;)Lcom/google/protobuf/MessageSchema;

    move-result-object v0

    :goto_2
    iget-object p0, p0, Lcom/google/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Schema;

    if-eqz p0, :cond_b

    move-object v0, p0

    :cond_b
    return-object v0

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "messageType"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
