.class public final Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final EMPTY_REGISTRY_LITE:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

.field public static volatile emptyRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;


# instance fields
.field public final extensionsByNumber:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;-><init>(Z)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    if-ne p1, v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method public static getEmptyRegistry()Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .locals 5

    sget-object v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->emptyRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_3

    const-class v1, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->emptyRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_2

    const-string v0, "getEmptyRegistry"

    sget-object v2, Landroidx/datastore/preferences/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    :catch_0
    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_2
    sget-object v3, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    :goto_1
    sput-object v3, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->emptyRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    move-object v0, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit v1

    goto :goto_4

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :goto_4
    return-object v0
.end method
