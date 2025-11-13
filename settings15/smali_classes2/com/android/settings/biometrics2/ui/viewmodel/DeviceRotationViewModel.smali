.class public final Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDisplayInfo:Landroid/view/DisplayInfo;

.field protected final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mIsReverseDefaultRotation:Z

.field public final mLiveData:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->mDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel$1;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/app/Application;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110210

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->mIsReverseDefaultRotation:Z

    return-void
.end method


# virtual methods
.method public final getLiveData()Landroidx/lifecycle/LiveData;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->getRotation()I

    move-result p0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p0, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLiveData, update rotation from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceRotationViewModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public getRotation()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-boolean v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->mIsReverseDefaultRotation:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->rotation:I

    add-int/lit8 p0, p0, 0x1

    rem-int/lit8 p0, p0, 0x4

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->rotation:I

    return p0
.end method

.method public final onCleared()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method
