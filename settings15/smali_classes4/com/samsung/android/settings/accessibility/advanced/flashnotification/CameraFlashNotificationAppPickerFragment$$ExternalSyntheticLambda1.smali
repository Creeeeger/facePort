.class public final synthetic Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->appPickerListView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {v1, p0}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    iget-object p0, v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->loadingViewController:Lcom/android/settings/widget/LoadingViewController;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    iget-object p0, v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;->appPickerListView:Landroidx/picker/widget/SeslAppPickerListView;

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$2;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotificationAppPickerFragment;)V

    iput-object v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mOnStateChangeListener:Landroidx/picker/widget/AppPickerState$OnStateChangeListener;

    return-void
.end method
