.class public abstract Landroidx/navigation/NavDestinationBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final actions:Ljava/util/Map;

.field public final arguments:Ljava/util/Map;

.field public final deepLinks:Ljava/util/List;

.field public final id:I

.field public final navigator:Landroidx/navigation/Navigator;

.field public final route:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/Navigator;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavDestinationBuilder;->navigator:Landroidx/navigation/Navigator;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/navigation/NavDestinationBuilder;->id:I

    iput-object p2, p0, Landroidx/navigation/NavDestinationBuilder;->route:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavDestinationBuilder;->arguments:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavDestinationBuilder;->deepLinks:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavDestinationBuilder;->actions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Landroidx/navigation/NavDestination;
    .locals 6

    invoke-virtual {p0}, Landroidx/navigation/NavDestinationBuilder;->instantiateDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/navigation/NavDestination;->label:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroidx/navigation/NavDestinationBuilder;->arguments:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavArgument;

    const-string v5, "argumentName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "argument"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/navigation/NavDestinationBuilder;->deepLinks:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavDeepLink;

    invoke-virtual {v0, v3}, Landroidx/navigation/NavDestination;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/navigation/NavDestinationBuilder;->actions:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavAction;

    invoke-virtual {v0, v4, v3}, Landroidx/navigation/NavDestination;->putAction(ILandroidx/navigation/NavAction;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroidx/navigation/NavDestinationBuilder;->route:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Landroidx/navigation/NavDestination;->setRoute(Ljava/lang/String;)V

    :cond_3
    const/4 v2, -0x1

    iget p0, p0, Landroidx/navigation/NavDestinationBuilder;->id:I

    if-eq p0, v2, :cond_4

    iput p0, v0, Landroidx/navigation/NavDestination;->id:I

    iput-object v1, v0, Landroidx/navigation/NavDestination;->idName:Ljava/lang/String;

    :cond_4
    return-object v0
.end method

.method public instantiateDestination()Landroidx/navigation/NavDestination;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavDestinationBuilder;->navigator:Landroidx/navigation/Navigator;

    invoke-virtual {p0}, Landroidx/navigation/Navigator;->createDestination()Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method
