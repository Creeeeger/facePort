.class public final Landroidx/navigation/compose/DialogNavigator$Destination;
.super Landroidx/navigation/NavDestination;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/navigation/FloatingWindow;


# instance fields
.field public final content:Lkotlin/jvm/functions/Function3;

.field public final dialogProperties:Landroidx/compose/ui/window/DialogProperties;


# direct methods
.method public constructor <init>(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    iput-object p2, p0, Landroidx/navigation/compose/DialogNavigator$Destination;->dialogProperties:Landroidx/compose/ui/window/DialogProperties;

    iput-object p3, p0, Landroidx/navigation/compose/DialogNavigator$Destination;->content:Lkotlin/jvm/functions/Function3;

    return-void
.end method
