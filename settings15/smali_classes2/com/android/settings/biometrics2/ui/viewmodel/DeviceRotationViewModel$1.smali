.class public final Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel$1;->this$0:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel$1;->this$0:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->getRotation()I

    move-result v0

    const-string v1, "onDisplayChanged("

    const-string v2, "), rotation:"

    const-string v3, "DeviceRotationViewModel"

    invoke-static {v1, v2, p1, v0, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel$1;->this$0:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
