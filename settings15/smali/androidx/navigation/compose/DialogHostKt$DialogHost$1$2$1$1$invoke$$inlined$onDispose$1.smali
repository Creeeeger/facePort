.class public final Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$1$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic $backStackEntry$inlined:Landroidx/navigation/NavBackStackEntry;

.field public final synthetic $dialogNavigator$inlined:Landroidx/navigation/compose/DialogNavigator;

.field public final synthetic $dialogsToDispose$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateList;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/compose/DialogNavigator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$1$1$invoke$$inlined$onDispose$1;->$dialogNavigator$inlined:Landroidx/navigation/compose/DialogNavigator;

    iput-object p2, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$1$1$invoke$$inlined$onDispose$1;->$backStackEntry$inlined:Landroidx/navigation/NavBackStackEntry;

    iput-object p1, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$1$1$invoke$$inlined$onDispose$1;->$dialogsToDispose$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateList;

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
