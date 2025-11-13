.class public final synthetic Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/picker/widget/SeslAppPickerView;

.field public final synthetic f$1:Landroidx/picker/model/viewdata/ViewData;

.field public final synthetic f$2:Landroidx/picker/adapter/viewholder/PickerViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/SeslAppPickerView;Landroidx/picker/model/viewdata/AppInfoViewData;Landroidx/picker/adapter/viewholder/PickerViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/widget/SeslAppPickerView;

    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;->f$1:Landroidx/picker/model/viewdata/ViewData;

    iput-object p3, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;->f$2:Landroidx/picker/adapter/viewholder/PickerViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/widget/SeslAppPickerView;

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;->f$1:Landroidx/picker/model/viewdata/ViewData;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;->f$2:Landroidx/picker/adapter/viewholder/PickerViewHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v1, v1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslAppPickerView;->getAppData(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/AppData;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v0, Landroidx/picker/widget/SeslAppPickerView;->mOnClickEventListener:Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;->onClick(Landroid/view/View;Landroidx/picker/model/AppInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    instance-of p1, p0, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    check-cast p0, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;->composableItemViewHolderList:Ljava/util/List;

    const-class p1, Landroidx/picker/features/composable/ActionableComposableViewHolder;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroidx/picker/features/composable/ActionableComposableViewHolder;

    invoke-virtual {v2}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->getDoAction()Landroidx/core/util/Supplier;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    check-cast p1, Landroidx/picker/features/composable/ActionableComposableViewHolder;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, v0, Landroidx/picker/widget/SeslAppPickerView;->mOnClickEventListener:Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;

    if-nez p0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_1
    return-void
.end method
