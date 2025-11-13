.class public final Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    iget p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    iput-object p1, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->mSelectMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->mSelectMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateSelectCount()V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_5

    iget-object p1, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p0, p1, :cond_6

    iget-object p1, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsSelectListChanged:Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    sget p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->$r8$clinit:I

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateSelectCount()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
