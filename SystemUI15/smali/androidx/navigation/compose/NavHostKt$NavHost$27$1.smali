.class final Landroidx/navigation/compose/NavHostKt$NavHost$27$1;
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
.field final synthetic $composeNavigator:Landroidx/navigation/compose/ComposeNavigator;

.field final synthetic $visibleEntries$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            "Landroidx/navigation/compose/ComposeNavigator;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$27$1;->$visibleEntries$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$27$1;->$composeNavigator:Landroidx/navigation/compose/ComposeNavigator;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$27$1;->$visibleEntries$delegate:Landroidx/compose/runtime/State;

    iget-object p0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$27$1;->$composeNavigator:Landroidx/navigation/compose/ComposeNavigator;

    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$27$1$invoke$$inlined$onDispose$1;

    invoke-direct {v0, p1, p0}, Landroidx/navigation/compose/NavHostKt$NavHost$27$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;)V

    return-object v0
.end method
