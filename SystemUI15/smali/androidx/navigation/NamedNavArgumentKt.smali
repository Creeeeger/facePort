.class public abstract Landroidx/navigation/NamedNavArgumentKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final navArgument(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Landroidx/navigation/NamedNavArgument;
    .locals 8

    new-instance v0, Landroidx/navigation/NamedNavArgument;

    new-instance v1, Landroidx/navigation/NavArgumentBuilder;

    invoke-direct {v1}, Landroidx/navigation/NavArgumentBuilder;-><init>()V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v1, Landroidx/navigation/NavArgumentBuilder;->builder:Landroidx/navigation/NavArgument$Builder;

    iget-object v1, p0, Landroidx/navigation/NavArgument$Builder;->type:Landroidx/navigation/NavType;

    if-nez v1, :cond_0

    sget-object v1, Landroidx/navigation/NavType;->Companion:Landroidx/navigation/NavType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType$Companion$StringType$1;

    :cond_0
    move-object v3, v1

    new-instance v1, Landroidx/navigation/NavArgument;

    iget-boolean v4, p0, Landroidx/navigation/NavArgument$Builder;->isNullable:Z

    iget-boolean v7, p0, Landroidx/navigation/NavArgument$Builder;->unknownDefaultValuePresent:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroidx/navigation/NavArgument;-><init>(Landroidx/navigation/NavType;ZLjava/lang/Object;ZZ)V

    invoke-direct {v0, p1, v1}, Landroidx/navigation/NamedNavArgument;-><init>(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    return-object v0
.end method
