.class final Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "updated",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $appInfoData:Landroidx/picker/model/viewdata/AppInfoViewData;

.field final synthetic $appInfoDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/picker/model/viewdata/AppInfoViewData;",
            "Landroidx/picker/loader/select/SelectableItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $selectableItem:Landroidx/picker/loader/select/SelectableItem;

.field final synthetic this$0:Landroidx/picker/controller/strategy/task/LimitedSelectableTask;


# direct methods
.method public constructor <init>(Landroidx/picker/controller/strategy/task/LimitedSelectableTask;Landroidx/picker/model/viewdata/AppInfoViewData;Landroidx/picker/loader/select/SelectableItem;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->this$0:Landroidx/picker/controller/strategy/task/LimitedSelectableTask;

    iput-object p2, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$appInfoData:Landroidx/picker/model/viewdata/AppInfoViewData;

    iput-object p3, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$selectableItem:Landroidx/picker/loader/select/SelectableItem;

    iput-object p4, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$appInfoDataList:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v1, "selectedSet"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->this$0:Landroidx/picker/controller/strategy/task/LimitedSelectableTask;

    iget-object v0, v0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->selectedSet:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$appInfoData:Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v3, v3, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v3}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v0, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->this$0:Landroidx/picker/controller/strategy/task/LimitedSelectableTask;

    iget-object v0, v0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->selectedSet:Ljava/util/HashSet;

    if-eqz v0, :cond_8

    iget-object v3, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$appInfoData:Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v3, v3, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v3}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$selectableItem:Landroidx/picker/loader/select/SelectableItem;

    invoke-virtual {v0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setValueSilence$picker_app_release(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$appInfoDataList:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->this$0:Landroidx/picker/controller/strategy/task/LimitedSelectableTask;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/picker/model/viewdata/AppInfoViewData;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/loader/select/SelectableItem;

    iget-object v4, v3, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v4}, Landroidx/picker/model/AppInfoData;->getDimmed()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v4}, Landroidx/picker/model/AppInfoData;->getSelected()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_3
    iget-object v4, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->selectedSet:Ljava/util/HashSet;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    iget v5, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->limited:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v4, v5, :cond_4

    move v4, v7

    goto :goto_2

    :cond_4
    move v4, v6

    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroidx/picker/loader/select/SelectableItem;->isSelected()Z

    move-result v0

    if-nez v0, :cond_5

    move v6, v7

    :cond_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v3, v3, Landroidx/picker/model/viewdata/AppInfoViewData;->dimmedItem:Landroidx/picker/features/observable/UpdateObservableProperty;

    invoke-virtual {v3, v0}, Landroidx/picker/features/observable/ObservableProperty;->setValueSilence$picker_app_release(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method
