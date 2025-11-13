.class public final Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$1$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic $backStackEntry$inlined:Landroidx/navigation/NavBackStackEntry;

.field public final synthetic $dialogNavigator$inlined:Landroidx/navigation/compose/DialogNavigator;

.field public final synthetic $dialogsToDispose$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateList;


# direct methods
.method public constructor <init>(Landroidx/navigation/compose/DialogNavigator;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/snapshots/SnapshotStateList;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$1$1$invoke$$inlined$onDispose$1;->$dialogNavigator$inlined:Landroidx/navigation/compose/DialogNavigator;

    iput-object p2, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$1$1$invoke$$inlined$onDispose$1;->$backStackEntry$inlined:Landroidx/navigation/NavBackStackEntry;

    iput-object p3, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$1$1$invoke$$inlined$onDispose$1;->$dialogsToDispose$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$1$1$invoke$$inlined$onDispose$1;->$dialogNavigator$inlined:Landroidx/navigation/compose/DialogNavigator;

    invoke-virtual {v0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v0

    iget-object v1, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$1$1$invoke$$inlined$onDispose$1;->$backStackEntry$inlined:Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    iget-object p0, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$1$1$invoke$$inlined$onDispose$1;->$dialogsToDispose$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
