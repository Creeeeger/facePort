.class public abstract Landroidx/navigation/NavOptionsBuilderKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "optionsBuilder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/navigation/NavOptionsBuilder;

    invoke-direct {v1}, Landroidx/navigation/NavOptionsBuilder;-><init>()V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Landroidx/navigation/NavOptionsBuilder;->launchSingleTop:Z

    iget-object v2, v1, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    iput-boolean v0, v2, Landroidx/navigation/NavOptions$Builder;->singleTop:Z

    iget-boolean v0, v1, Landroidx/navigation/NavOptionsBuilder;->restoreState:Z

    iput-boolean v0, v2, Landroidx/navigation/NavOptions$Builder;->restoreState:Z

    iget v0, v1, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    iget-boolean v3, v1, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    iget-boolean v1, v1, Landroidx/navigation/NavOptionsBuilder;->saveState:Z

    iput v0, v2, Landroidx/navigation/NavOptions$Builder;->popUpToId:I

    const/4 v0, 0x0

    iput-object v0, v2, Landroidx/navigation/NavOptions$Builder;->popUpToRoute:Ljava/lang/String;

    iput-boolean v3, v2, Landroidx/navigation/NavOptions$Builder;->popUpToInclusive:Z

    iput-boolean v1, v2, Landroidx/navigation/NavOptions$Builder;->popUpToSaveState:Z

    iget-object v0, v2, Landroidx/navigation/NavOptions$Builder;->popUpToRoute:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/navigation/NavOptions;

    iget-boolean v4, v2, Landroidx/navigation/NavOptions$Builder;->singleTop:Z

    iget-boolean v5, v2, Landroidx/navigation/NavOptions$Builder;->restoreState:Z

    iget-boolean v7, v2, Landroidx/navigation/NavOptions$Builder;->popUpToInclusive:Z

    iget-boolean v8, v2, Landroidx/navigation/NavOptions$Builder;->popUpToSaveState:Z

    iget v9, v2, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    iget v10, v2, Landroidx/navigation/NavOptions$Builder;->exitAnim:I

    iget v11, v2, Landroidx/navigation/NavOptions$Builder;->popEnterAnim:I

    iget v12, v2, Landroidx/navigation/NavOptions$Builder;->popExitAnim:I

    sget v2, Landroidx/navigation/NavDestination;->$r8$clinit:I

    invoke-static {v0}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    iput-object v0, v1, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/navigation/NavOptions;

    iget-boolean v14, v2, Landroidx/navigation/NavOptions$Builder;->singleTop:Z

    iget-boolean v15, v2, Landroidx/navigation/NavOptions$Builder;->restoreState:Z

    iget v0, v2, Landroidx/navigation/NavOptions$Builder;->popUpToId:I

    iget-boolean v3, v2, Landroidx/navigation/NavOptions$Builder;->popUpToInclusive:Z

    iget-boolean v4, v2, Landroidx/navigation/NavOptions$Builder;->popUpToSaveState:Z

    iget v5, v2, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    iget v6, v2, Landroidx/navigation/NavOptions$Builder;->exitAnim:I

    iget v7, v2, Landroidx/navigation/NavOptions$Builder;->popEnterAnim:I

    iget v2, v2, Landroidx/navigation/NavOptions$Builder;->popExitAnim:I

    move-object v13, v1

    move/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v2

    invoke-direct/range {v13 .. v22}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    :goto_0
    return-object v1
.end method
