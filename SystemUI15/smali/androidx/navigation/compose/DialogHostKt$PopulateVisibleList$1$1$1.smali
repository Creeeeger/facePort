.class final Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$1$1$1;
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
.field final synthetic $entry:Landroidx/navigation/NavBackStackEntry;

.field final synthetic $isInspecting:Z

.field final synthetic $this_PopulateVisibleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavBackStackEntry;",
            "Z",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$1$1$1;->$entry:Landroidx/navigation/NavBackStackEntry;

    iput-boolean p2, p0, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$1$1$1;->$isInspecting:Z

    iput-object p3, p0, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$1$1$1;->$this_PopulateVisibleList:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-boolean p1, p0, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$1$1$1;->$isInspecting:Z

    iget-object v0, p0, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$1$1$1;->$this_PopulateVisibleList:Ljava/util/List;

    iget-object v1, p0, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$1$1$1;->$entry:Landroidx/navigation/NavBackStackEntry;

    new-instance v2, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$1$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, v0}, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$1$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavBackStackEntry;ZLjava/util/List;)V

    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->_lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p0, p0, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$1$1$1;->$entry:Landroidx/navigation/NavBackStackEntry;

    new-instance p1, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$1$1$1$invoke$$inlined$onDispose$1;

    invoke-direct {p1, p0, v2}, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$1$1$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/navigation/NavBackStackEntry;Landroidx/lifecycle/LifecycleEventObserver;)V

    return-object p1
.end method
