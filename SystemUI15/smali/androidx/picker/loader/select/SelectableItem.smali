.class public Landroidx/picker/loader/select/SelectableItem;
.super Landroidx/picker/features/observable/ObservableProperty;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/picker/features/observable/ObservableProperty<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/features/observable/MutableState;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/picker/features/observable/ObservableProperty;-><init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/picker/loader/select/SelectableItem;-><init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final isSelected()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/picker/features/observable/ObservableProperty;->getState()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final registerAfterChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    new-instance v0, Landroidx/picker/loader/select/SelectableItem$registerAfterChangeUpdateListener$1;

    invoke-direct {v0, p1}, Landroidx/picker/loader/select/SelectableItem$registerAfterChangeUpdateListener$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroidx/picker/features/observable/ObservableProperty;->registerAfterChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p0

    return-object p0
.end method

.method public final registerBeforeChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    new-instance v0, Landroidx/picker/loader/select/SelectableItem$registerBeforeChangeUpdateListener$1;

    invoke-direct {v0, p1}, Landroidx/picker/loader/select/SelectableItem$registerBeforeChangeUpdateListener$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroidx/picker/features/observable/ObservableProperty;->registerBeforeChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p0

    return-object p0
.end method
