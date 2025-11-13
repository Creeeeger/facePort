.class public final synthetic Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    check-cast v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-virtual {v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->updateButtonList()V

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataNotified:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {v2}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMData;->copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->reverseSlotIfNeed(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;->onDataChanged(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataNotified:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMData;->copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    :cond_4
    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "MultiSIMController"

    const-string/jumbo v1, "updateCurrentDefaultSlot list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDefaultIdUpdateList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDefaultIdUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    goto :goto_2

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
