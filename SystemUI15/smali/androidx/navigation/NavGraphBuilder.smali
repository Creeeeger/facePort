.class public final Landroidx/navigation/NavGraphBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final destinations:Ljava/util/List;

.field public final provider:Landroidx/navigation/NavigatorProvider;

.field public final startDestinationClass:Lkotlin/reflect/KClass;

.field public final startDestinationId:I

.field public final startDestinationObject:Ljava/lang/Object;

.field public final startDestinationRoute:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavigatorProvider;II)V
    .locals 1

    const-class v0, Landroidx/navigation/NavGraphNavigator;

    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/List;

    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    iput p3, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationId:I

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavigatorProvider;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KClass;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType;",
            ">;)V"
        }
    .end annotation

    const-class v0, Landroidx/navigation/NavGraphNavigator;

    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Lkotlin/reflect/KClass;Ljava/util/Map;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/List;

    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    iput-object p2, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Landroidx/navigation/NavGraphNavigator;

    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Ljava/lang/String;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/List;

    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    iput-object p2, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationRoute:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavigatorProvider;",
            "Lkotlin/reflect/KClass;",
            "Lkotlin/reflect/KClass;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType;",
            ">;)V"
        }
    .end annotation

    const-class v0, Landroidx/navigation/NavGraphNavigator;

    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Lkotlin/reflect/KClass;Ljava/util/Map;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/List;

    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    iput-object p2, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationClass:Lkotlin/reflect/KClass;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/navigation/NavGraph;
    .locals 8

    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavGraph;

    iget-object v1, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v2, Landroidx/navigation/NavDestination;->id:I

    iget-object v5, v2, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    if-nez v4, :cond_2

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    iget-object v6, v0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    const-string v7, "Destination "

    if-eqz v6, :cond_4

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cannot have the same route as graph "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    iget v5, v0, Landroidx/navigation/NavDestination;->id:I

    if-eq v4, v5, :cond_8

    iget-object v5, v0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v5, v4}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavDestination;

    if-ne v4, v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object v5, v2, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    if-nez v5, :cond_7

    if-eqz v4, :cond_6

    iput-object v3, v4, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    :cond_6
    iput-object v0, v2, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    iget-object v3, v0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    iget v4, v2, Landroidx/navigation/NavDestination;->id:I

    invoke-virtual {v3, v4, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Destination already has a parent set. Call NavGraph.remove() to remove the previous parent."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cannot have the same id as graph "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v1, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationObject:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationClass:Lkotlin/reflect/KClass;

    iget-object v4, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationRoute:Ljava/lang/String;

    iget v5, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationId:I

    if-nez v5, :cond_b

    if-nez v4, :cond_b

    if-nez v2, :cond_b

    if-nez v1, :cond_b

    iget-object p0, p0, Landroidx/navigation/NavDestinationBuilder;->route:Ljava/lang/String;

    if-eqz p0, :cond_a

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You must set a start destination route"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You must set a start destination id"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v0, v4}, Landroidx/navigation/NavGraph;->setStartDestinationRoute(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    if-eqz v2, :cond_d

    invoke-static {v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    sget-object v1, Landroidx/navigation/NavGraphBuilder$build$1$1;->INSTANCE:Landroidx/navigation/NavGraphBuilder$build$1$1;

    invoke-virtual {v0, p0, v1}, Landroidx/navigation/NavGraph;->setStartDestination(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/functions/Function1;)V

    goto :goto_3

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    new-instance v2, Landroidx/navigation/NavGraph$setStartDestination$2;

    invoke-direct {v2, v1}, Landroidx/navigation/NavGraph$setStartDestination$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Landroidx/navigation/NavGraph;->setStartDestination(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/functions/Function1;)V

    goto :goto_3

    :cond_e
    iget p0, v0, Landroidx/navigation/NavDestination;->id:I

    if-eq v5, p0, :cond_10

    iget-object p0, v0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    if-eqz p0, :cond_f

    invoke-virtual {v0, v3}, Landroidx/navigation/NavGraph;->setStartDestinationRoute(Ljava/lang/String;)V

    :cond_f
    iput v5, v0, Landroidx/navigation/NavGraph;->startDestId:I

    iput-object v3, v0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    :goto_3
    return-object v0

    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Start destination "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cannot use the same id as the graph "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
