.class public abstract Landroidx/datastore/preferences/protobuf/ListFieldSchema;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FULL_INSTANCE:Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaFull;

.field public static final LITE_INSTANCE:Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaFull;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaFull;-><init>(Landroidx/datastore/preferences/protobuf/ListFieldSchema$1;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->FULL_INSTANCE:Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaFull;

    new-instance v0, Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;-><init>(Landroidx/datastore/preferences/protobuf/ListFieldSchema$1;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->LITE_INSTANCE:Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/ListFieldSchema$1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract makeImmutableListAt(Ljava/lang/Object;J)V
.end method

.method public abstract mergeListsAt(JLjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
.end method
