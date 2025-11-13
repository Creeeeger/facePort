.class public abstract Lcom/google/protobuf/ListFieldSchema;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FULL_INSTANCE:Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;

.field public static final LITE_INSTANCE:Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/ListFieldSchema;->FULL_INSTANCE:Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;

    new-instance v0, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaLite;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/ListFieldSchema;->LITE_INSTANCE:Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaLite;

    return-void
.end method


# virtual methods
.method public abstract makeImmutableListAt(JLjava/lang/Object;)V
.end method

.method public abstract mergeListsAt(JLjava/lang/Object;Ljava/lang/Object;)V
.end method
