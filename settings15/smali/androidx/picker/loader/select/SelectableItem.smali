.class public Landroidx/picker/loader/select/SelectableItem;
.super Landroidx/picker/features/observable/ObservableProperty;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/picker/features/observable/ObservableProperty<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0017\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B+\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0016\u0008\u0002\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0008J!\u0010\u000b\u001a\u00020\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0006H\u0000\u00a2\u0006\u0002\u0008\u000eJ!\u0010\u000f\u001a\u00020\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u0010R\u0011\u0010\t\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/picker/loader/select/SelectableItem;",
        "Landroidx/picker/features/observable/ObservableProperty;",
        "",
        "mutableState",
        "Landroidx/picker/features/observable/MutableState;",
        "onUpdated",
        "Lkotlin/Function1;",
        "",
        "(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;)V",
        "isSelected",
        "()Z",
        "registerAfterChangeUpdateListener",
        "Lkotlinx/coroutines/DisposableHandle;",
        "onValueUpdateListener",
        "registerAfterChangeUpdateListener$picker_app_release",
        "registerBeforeChangeUpdateListener",
        "registerBeforeChangeUpdateListener$picker_app_release",
        "picker-app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/features/observable/MutableState;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "mutableState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string v0, "onValueUpdateListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string v0, "onValueUpdateListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/picker/loader/select/SelectableItem$registerBeforeChangeUpdateListener$1;

    invoke-direct {v0, p1}, Landroidx/picker/loader/select/SelectableItem$registerBeforeChangeUpdateListener$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroidx/picker/features/observable/ObservableProperty;->registerBeforeChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p0

    return-object p0
.end method
