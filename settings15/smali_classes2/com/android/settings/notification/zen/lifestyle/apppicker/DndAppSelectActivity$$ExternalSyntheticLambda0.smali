.class public final synthetic Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    iget-object v2, v2, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->mSelectMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    invoke-virtual {p1, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->setStateAll(Z)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    iget-object v1, v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->mSelectMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->setStateAll(Z)V

    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsSelectListChanged:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateSelectCount()V

    return-void
.end method
