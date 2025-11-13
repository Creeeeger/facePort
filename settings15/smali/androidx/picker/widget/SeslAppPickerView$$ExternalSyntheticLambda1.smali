.class public final synthetic Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/picker/widget/SeslAppPickerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/SeslAppPickerView;I)V
    .locals 0

    iput p2, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;->f$0:Landroidx/picker/widget/SeslAppPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;->f$0:Landroidx/picker/widget/SeslAppPickerView;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    iget-object v1, v1, Landroidx/picker/controller/ViewDataController;->currentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/picker/model/viewdata/ViewData;

    instance-of v3, v2, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v3, :cond_0

    check-cast v2, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v2, v2, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mSelectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/picker/loader/select/SelectStateLoader;->allAppsSelectableItem:Landroidx/picker/loader/select/AllAppsSelectableItem;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/picker/loader/select/AllAppsSelectableItem;->reset(Ljava/util/List;)V

    :cond_2
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
