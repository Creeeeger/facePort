.class public final synthetic Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;

    return-void
.end method


# virtual methods
.method public final onSearchFilterCompleted(I)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->loadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0}, Lcom/android/settings/widget/LoadingViewController;->showEmpty()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->loadingViewController:Lcom/android/settings/widget/LoadingViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    :goto_0
    return-void
.end method
