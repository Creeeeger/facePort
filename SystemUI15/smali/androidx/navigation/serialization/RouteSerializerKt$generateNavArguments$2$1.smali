.class final Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $this_generateNavArguments:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation
.end field

.field final synthetic $typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "+",
            "Landroidx/navigation/NavType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$this_generateNavArguments:Lkotlinx/serialization/KSerializer;

    iput p2, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$index:I

    iput-object p3, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$name:Ljava/lang/String;

    iput-object p4, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$typeMap:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/navigation/NavArgumentBuilder;

    iget-object v0, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$this_generateNavArguments:Lkotlinx/serialization/KSerializer;

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    iget v1, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$index:I

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v1

    iget-object v2, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$name:Ljava/lang/String;

    iget-object v3, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$typeMap:Ljava/util/Map;

    invoke-static {v0, v2, v3}, Landroidx/navigation/serialization/RouteSerializerKt;->computeNavType(Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/lang/String;Ljava/util/Map;)Landroidx/navigation/NavType;

    move-result-object v0

    iget-object p1, p1, Landroidx/navigation/NavArgumentBuilder;->builder:Landroidx/navigation/NavArgument$Builder;

    iput-object v0, p1, Landroidx/navigation/NavArgument$Builder;->type:Landroidx/navigation/NavType;

    iput-boolean v1, p1, Landroidx/navigation/NavArgument$Builder;->isNullable:Z

    iget-object v0, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$this_generateNavArguments:Lkotlinx/serialization/KSerializer;

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    iget p0, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$index:I

    invoke-interface {v0, p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isElementOptional(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/navigation/NavArgument$Builder;->unknownDefaultValuePresent:Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
