.class public abstract Landroidx/navigation/NavOptionsBuilderKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;
    .locals 3

    new-instance v0, Landroidx/navigation/NavOptionsBuilder;

    invoke-direct {v0}, Landroidx/navigation/NavOptionsBuilder;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, v0, Landroidx/navigation/NavOptionsBuilder;->launchSingleTop:Z

    iget-object v1, v0, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    iput-boolean p0, v1, Landroidx/navigation/NavOptions$Builder;->singleTop:Z

    iget-boolean p0, v0, Landroidx/navigation/NavOptionsBuilder;->restoreState:Z

    iput-boolean p0, v1, Landroidx/navigation/NavOptions$Builder;->restoreState:Z

    iget p0, v0, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    iget-boolean v2, v0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    iget-boolean v0, v0, Landroidx/navigation/NavOptionsBuilder;->saveState:Z

    iput p0, v1, Landroidx/navigation/NavOptions$Builder;->popUpToId:I

    const/4 p0, 0x0

    iput-object p0, v1, Landroidx/navigation/NavOptions$Builder;->popUpToRoute:Ljava/lang/String;

    iput-boolean v2, v1, Landroidx/navigation/NavOptions$Builder;->popUpToInclusive:Z

    iput-boolean v0, v1, Landroidx/navigation/NavOptions$Builder;->popUpToSaveState:Z

    invoke-virtual {v1}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    move-result-object p0

    return-object p0
.end method
