.class public final Landroidx/navigation/serialization/RouteBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final path:Ljava/lang/String;

.field public pathArgs:Ljava/lang/String;

.field public queryArgs:Ljava/lang/String;

.field public final serializer:Lkotlinx/serialization/KSerializer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/KSerializer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/navigation/serialization/RouteBuilder;->pathArgs:Ljava/lang/String;

    iput-object v0, p0, Landroidx/navigation/serialization/RouteBuilder;->queryArgs:Ljava/lang/String;

    iput-object p2, p0, Landroidx/navigation/serialization/RouteBuilder;->serializer:Lkotlinx/serialization/KSerializer;

    iput-object p1, p0, Landroidx/navigation/serialization/RouteBuilder;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/navigation/serialization/RouteBuilder;->pathArgs:Ljava/lang/String;

    iput-object v0, p0, Landroidx/navigation/serialization/RouteBuilder;->queryArgs:Ljava/lang/String;

    iput-object p1, p0, Landroidx/navigation/serialization/RouteBuilder;->serializer:Lkotlinx/serialization/KSerializer;

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/serialization/RouteBuilder;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/navigation/serialization/RouteBuilder;->queryArgs:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "?"

    goto :goto_0

    :cond_0
    const-string v0, "&"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/navigation/serialization/RouteBuilder;->queryArgs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/serialization/RouteBuilder;->queryArgs:Ljava/lang/String;

    return-void
.end method
