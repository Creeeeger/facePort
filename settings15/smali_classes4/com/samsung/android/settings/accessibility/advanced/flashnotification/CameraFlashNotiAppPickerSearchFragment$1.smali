.class public final Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/AppPickerState$OnStateChangeListener;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->appPickerListView:Landroidx/picker/widget/SeslAppPickerListView;

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;)V

    invoke-virtual {v0, p1, v1}, Landroidx/picker/widget/SeslAppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->appPickerListView:Landroidx/picker/widget/SeslAppPickerListView;

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;)V

    invoke-virtual {v0, p1, v1}, Landroidx/picker/widget/SeslAppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V

    return-void
.end method

.method public onStateAllChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroidx/picker/model/AppInfo;Z)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->context:Landroid/content/Context;

    iget-object p1, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->installedAppSet:Ljava/util/Set;

    invoke-static {v0, p1, p2, v1}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil;->putAppPreferenceWithAlias(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Set;)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->context:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->installedAppSet:Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil;->isOffAll(Landroid/content/Context;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "camera_flash_notification"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
