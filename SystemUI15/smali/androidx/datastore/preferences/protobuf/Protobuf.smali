.class public final Landroidx/datastore/preferences/protobuf/Protobuf;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;


# instance fields
.field public final schemaCache:Ljava/util/concurrent/ConcurrentMap;

.field public final schemaFactory:Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/Protobuf;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Protobuf;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/Protobuf;->INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;-><init>()V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFactory:Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;

    return-void
.end method


# virtual methods
.method public final schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;
    .locals 8

    const-string v0, "messageType"

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Schema;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFactory:Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    const-class v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

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
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->messageInfoFactory:Landroidx/datastore/preferences/protobuf/MessageInfoFactory;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/MessageInfo;

    move-result-object v2

    invoke-interface {v2}, Landroidx/datastore/preferences/protobuf/MessageInfo;->isMessageSetWireFormat()Z

    move-result v0

    const-string v3, "Protobuf runtime is not correctly loaded."

    if-eqz v0, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/datastore/preferences/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    sget-object v1, Landroidx/datastore/preferences/protobuf/ExtensionSchemas;->LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    invoke-interface {v2}, Landroidx/datastore/preferences/protobuf/MessageInfo;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->newSchema(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageSetSchema;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Landroidx/datastore/preferences/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    sget-object v1, Landroidx/datastore/preferences/protobuf/ExtensionSchemas;->FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    if-eqz v1, :cond_3

    invoke-interface {v2}, Landroidx/datastore/preferences/protobuf/MessageInfo;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSetSchema;->newSchema(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageSetSchema;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Landroidx/datastore/preferences/protobuf/MessageInfo;->getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO2:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    if-ne v0, v1, :cond_5

    sget-object v3, Landroidx/datastore/preferences/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/NewInstanceSchemaLite;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->LITE_INSTANCE:Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;

    sget-object v5, Landroidx/datastore/preferences/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    sget-object v6, Landroidx/datastore/preferences/protobuf/ExtensionSchemas;->LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    sget-object v7, Landroidx/datastore/preferences/protobuf/MapFieldSchemas;->LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->newSchema(Landroidx/datastore/preferences/protobuf/MessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;

    move-result-object v0

    goto :goto_1

    :cond_5
    sget-object v3, Landroidx/datastore/preferences/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/NewInstanceSchemaLite;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->LITE_INSTANCE:Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;

    sget-object v5, Landroidx/datastore/preferences/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    sget-object v7, Landroidx/datastore/preferences/protobuf/MapFieldSchemas;->LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->newSchema(Landroidx/datastore/preferences/protobuf/MessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-interface {v2}, Landroidx/datastore/preferences/protobuf/MessageInfo;->getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO2:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    if-ne v0, v1, :cond_8

    sget-object v0, Landroidx/datastore/preferences/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->FULL_INSTANCE:Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaFull;

    sget-object v5, Landroidx/datastore/preferences/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    sget-object v6, Landroidx/datastore/preferences/protobuf/ExtensionSchemas;->FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    if-eqz v6, :cond_7

    sget-object v7, Landroidx/datastore/preferences/protobuf/MapFieldSchemas;->FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->newSchema(Landroidx/datastore/preferences/protobuf/MessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;

    move-result-object v0

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    sget-object v3, Landroidx/datastore/preferences/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->FULL_INSTANCE:Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaFull;

    sget-object v5, Landroidx/datastore/preferences/protobuf/SchemaUtil;->PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    sget-object v7, Landroidx/datastore/preferences/protobuf/MapFieldSchemas;->FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->newSchema(Landroidx/datastore/preferences/protobuf/MessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;

    move-result-object v0

    :goto_1
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Schema;

    if-eqz p0, :cond_9

    move-object v0, p0

    :cond_9
    return-object v0
.end method
