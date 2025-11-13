.class public final Lkotlinx/serialization/modules/SerialModuleImpl;
.super Lkotlinx/serialization/modules/SerializersModule;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final class2ContextualFactory:Ljava/util/Map;

.field public final polyBase2DefaultSerializerProvider:Ljava/util/Map;

.field public final polyBase2Serializers:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass;",
            "+",
            "Lkotlinx/serialization/modules/ContextualProvider;",
            ">;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass;",
            "+",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass;",
            "+",
            "Lkotlinx/serialization/KSerializer;",
            ">;>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass;",
            "+",
            "Lkotlin/jvm/functions/Function1;",
            ">;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/serialization/KSerializer;",
            ">;>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass;",
            "+",
            "Lkotlin/jvm/functions/Function1;",
            ">;)V"
        }
    .end annotation

    const/4 p4, 0x0

    invoke-direct {p0, p4}, Lkotlinx/serialization/modules/SerializersModule;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->class2ContextualFactory:Ljava/util/Map;

    iput-object p2, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2Serializers:Ljava/util/Map;

    iput-object p3, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2DefaultSerializerProvider:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getContextual(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->class2ContextualFactory:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/modules/ContextualProvider;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/modules/ContextualProvider;->invoke()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    instance-of p2, p0, Lkotlinx/serialization/KSerializer;

    if-eqz p2, :cond_1

    move-object p1, p0

    :cond_1
    return-object p1
.end method
