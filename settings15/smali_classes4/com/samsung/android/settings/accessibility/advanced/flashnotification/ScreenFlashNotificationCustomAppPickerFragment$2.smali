.class public final Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/AppPickerState$OnStateChangeListener;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "Text changed "

    const-string v1, "ScreenFlashNotificationCustomAppPickerFragment"

    invoke-static {v0, p1, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->items:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->appPickerListView:Landroidx/picker/widget/SeslAppPickerListView;

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;)V

    invoke-virtual {v0, p1, v1}, Landroidx/picker/widget/SeslAppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ScreenFlashNotificationCustomAppPickerFragment"

    const-string v1, "Text submit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->items:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->appPickerListView:Landroidx/picker/widget/SeslAppPickerListView;

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;)V

    invoke-virtual {v0, p1, v1}, Landroidx/picker/widget/SeslAppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V

    return-void
.end method

.method public onStateAllChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroidx/picker/model/AppInfo;Z)V
    .locals 0

    sget-object p2, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->items:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;

    iget-boolean p2, p1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;->checked:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;->checked:Z

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->-$$Nest$smsetScreenFlashColorWithAliases(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->updateTitle$1()V

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->appPickerListView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
