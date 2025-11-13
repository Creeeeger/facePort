.class final Lkotlinx/serialization/internal/EnumSerializer$descriptor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $serialName:Ljava/lang/String;

.field final synthetic this$0:Lkotlinx/serialization/internal/EnumSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/EnumSerializer;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/internal/EnumSerializer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/internal/EnumSerializer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/internal/EnumSerializer$descriptor$2;->this$0:Lkotlinx/serialization/internal/EnumSerializer;

    iput-object p2, p0, Lkotlinx/serialization/internal/EnumSerializer$descriptor$2;->$serialName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lkotlinx/serialization/internal/EnumSerializer$descriptor$2;->this$0:Lkotlinx/serialization/internal/EnumSerializer;

    iget-object v1, v0, Lkotlinx/serialization/internal/EnumSerializer;->overriddenDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    if-nez v1, :cond_2

    iget-object p0, p0, Lkotlinx/serialization/internal/EnumSerializer$descriptor$2;->$serialName:Ljava/lang/String;

    new-instance v1, Lkotlinx/serialization/internal/EnumDescriptor;

    iget-object v0, v0, Lkotlinx/serialization/internal/EnumSerializer;->values:[Ljava/lang/Enum;

    array-length v2, v0

    invoke-direct {v1, p0, v2}, Lkotlinx/serialization/internal/EnumDescriptor;-><init>(Ljava/lang/String;I)V

    array-length p0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->added:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->added:I

    iget-object v6, v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    aput-object v4, v6, v5

    iget-object v4, v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsOptionality:[Z

    aput-boolean v2, v4, v5

    iget-object v4, v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->propertiesAnnotations:[Ljava/util/List;

    const/4 v7, 0x0

    aput-object v7, v4, v5

    iget v4, v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v5, v4, :cond_1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    array-length v5, v6

    move v7, v2

    :goto_1
    if-ge v7, v5, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v6, v7

    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    iput-object v4, v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->indices:Ljava/util/Map;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
