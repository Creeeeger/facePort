.class final Landroidx/navigation/compose/NavHostKt$NavHost$10;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $builder:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $contentAlignment:Landroidx/compose/ui/Alignment;

.field final synthetic $enterTransition:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $exitTransition:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $navController:Landroidx/navigation/NavHostController;

.field final synthetic $popEnterTransition:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $popExitTransition:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $route:Ljava/lang/String;

.field final synthetic $sizeTransform:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $startDestination:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "III)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$navController:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$startDestination:Ljava/lang/String;

    iput-object p3, p0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$contentAlignment:Landroidx/compose/ui/Alignment;

    iput-object p5, p0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$route:Ljava/lang/String;

    iput-object p6, p0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$enterTransition:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$exitTransition:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$popEnterTransition:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$popExitTransition:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$sizeTransform:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$builder:Lkotlin/jvm/functions/Function1;

    iput p12, p0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$$changed:I

    iput p13, p0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$$changed1:I

    iput p14, p0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget-object v1, v0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$navController:Landroidx/navigation/NavHostController;

    iget-object v2, v0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$startDestination:Ljava/lang/String;

    iget-object v3, v0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v4, v0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$contentAlignment:Landroidx/compose/ui/Alignment;

    iget-object v5, v0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$route:Ljava/lang/String;

    iget-object v6, v0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$enterTransition:Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$exitTransition:Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$popEnterTransition:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$popExitTransition:Lkotlin/jvm/functions/Function1;

    iget-object v10, v0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$sizeTransform:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$builder:Lkotlin/jvm/functions/Function1;

    iget v13, v0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$$changed:I

    or-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    iget v14, v0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$$changed1:I

    invoke-static {v14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    iget v15, v0, Landroidx/navigation/compose/NavHostKt$NavHost$10;->$$default:I

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    move v12, v13

    move v13, v14

    move v14, v15

    invoke-static/range {v0 .. v14}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
