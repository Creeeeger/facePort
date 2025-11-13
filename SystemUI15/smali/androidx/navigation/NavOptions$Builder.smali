.class public final Landroidx/navigation/NavOptions$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public enterAnim:I

.field public exitAnim:I

.field public popEnterAnim:I

.field public popExitAnim:I

.field public popUpToId:I

.field public popUpToInclusive:Z

.field public popUpToRoute:Ljava/lang/String;

.field public popUpToSaveState:Z

.field public restoreState:Z

.field public singleTop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->popUpToId:I

    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->exitAnim:I

    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->popEnterAnim:I

    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->popExitAnim:I

    return-void
.end method


# virtual methods
.method public final build()Landroidx/navigation/NavOptions;
    .locals 21

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/navigation/NavOptions$Builder;->popUpToRoute:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v10, Landroidx/navigation/NavOptions;

    iget-boolean v1, v0, Landroidx/navigation/NavOptions$Builder;->singleTop:Z

    iget-boolean v2, v0, Landroidx/navigation/NavOptions$Builder;->restoreState:Z

    iget-boolean v4, v0, Landroidx/navigation/NavOptions$Builder;->popUpToInclusive:Z

    iget-boolean v5, v0, Landroidx/navigation/NavOptions$Builder;->popUpToSaveState:Z

    iget v6, v0, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    iget v7, v0, Landroidx/navigation/NavOptions$Builder;->exitAnim:I

    iget v8, v0, Landroidx/navigation/NavOptions$Builder;->popEnterAnim:I

    iget v9, v0, Landroidx/navigation/NavOptions$Builder;->popExitAnim:I

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroidx/navigation/NavOptions;-><init>(ZZLjava/lang/String;ZZIIII)V

    goto :goto_0

    :cond_0
    new-instance v10, Landroidx/navigation/NavOptions;

    iget-boolean v12, v0, Landroidx/navigation/NavOptions$Builder;->singleTop:Z

    iget-boolean v13, v0, Landroidx/navigation/NavOptions$Builder;->restoreState:Z

    iget v14, v0, Landroidx/navigation/NavOptions$Builder;->popUpToId:I

    iget-boolean v15, v0, Landroidx/navigation/NavOptions$Builder;->popUpToInclusive:Z

    iget-boolean v1, v0, Landroidx/navigation/NavOptions$Builder;->popUpToSaveState:Z

    iget v2, v0, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    iget v3, v0, Landroidx/navigation/NavOptions$Builder;->exitAnim:I

    iget v4, v0, Landroidx/navigation/NavOptions$Builder;->popEnterAnim:I

    iget v0, v0, Landroidx/navigation/NavOptions$Builder;->popExitAnim:I

    move-object v11, v10

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v0

    invoke-direct/range {v11 .. v20}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    :goto_0
    return-object v10
.end method
