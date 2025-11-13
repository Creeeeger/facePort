.class public final synthetic Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->installedAppSet:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->items:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil;->getScreenFlashColorList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil;->getInstalledAppList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->installedAppSet:Ljava/util/Set;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget v8, Lcom/android/settings/accessibility/FlashNotificationsUtil;->DEFAULT_SCREEN_FLASH_COLOR:I

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;

    sget-object v6, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->items:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    sget-object v9, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    const-string v9, ""

    invoke-static {v8, v7, v9}, Landroidx/picker/model/AppInfo$Companion;->obtain(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    move-result-object v4

    iget-boolean v5, v5, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;->checked:Z

    invoke-virtual {v4, v5}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->setSelected(Z)Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
