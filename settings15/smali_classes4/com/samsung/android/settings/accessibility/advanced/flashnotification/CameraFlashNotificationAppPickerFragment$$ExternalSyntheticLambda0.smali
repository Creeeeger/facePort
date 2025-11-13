.class public final synthetic Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->installedAppSet:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil;->getCameraFlashNotiInstalledAppDataList(Landroid/content/Context;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
