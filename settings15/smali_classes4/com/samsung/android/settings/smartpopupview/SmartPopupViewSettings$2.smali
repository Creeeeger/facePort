.class public final Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/AppPickerState$OnStateChangeListener;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$2;->this$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$2;->this$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/picker/widget/SeslAppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$2;->this$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/picker/widget/SeslAppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V

    :cond_0
    return-void
.end method

.method public onStateAllChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroidx/picker/model/AppInfo;Z)V
    .locals 2

    iget-object p1, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$2;->this$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    const-string v0, "SmartPopupViewSettings"

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p2, "[SmartPopupViewSettings] package on: "

    invoke-static {p2, p1, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "[SmartPopupViewSettings] package off: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "floating_noti_package_list"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, p2, p0, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
