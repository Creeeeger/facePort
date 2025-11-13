.class final Landroidx/picker/controller/strategy/task/SingleSelectableTask$execute$disposableHandleList$1$disposableAfter$1;
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
.field final synthetic $current:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/picker/loader/select/SelectableItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectableItem:Landroidx/picker/loader/select/SelectableItem;

.field final synthetic $selectableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/picker/loader/select/SelectableItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/picker/loader/select/SelectableItem;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/picker/loader/select/SelectableItem;",
            ">;",
            "Landroidx/picker/loader/select/SelectableItem;",
            "Ljava/util/List<",
            "+",
            "Landroidx/picker/loader/select/SelectableItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/picker/controller/strategy/task/SingleSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$current:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Landroidx/picker/controller/strategy/task/SingleSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$selectableItem:Landroidx/picker/loader/select/SelectableItem;

    iput-object p3, p0, Landroidx/picker/controller/strategy/task/SingleSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$selectableList:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Landroidx/picker/controller/strategy/task/SingleSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$current:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Landroidx/picker/controller/strategy/task/SingleSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$selectableItem:Landroidx/picker/loader/select/SelectableItem;

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/picker/controller/strategy/task/SingleSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$selectableList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/picker/loader/select/SelectableItem;

    iget-object v4, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/loader/select/SelectableItem;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroidx/picker/controller/strategy/task/SingleSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$current:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/loader/select/SelectableItem;

    if-eqz p0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setValueSilence$picker_app_release(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
