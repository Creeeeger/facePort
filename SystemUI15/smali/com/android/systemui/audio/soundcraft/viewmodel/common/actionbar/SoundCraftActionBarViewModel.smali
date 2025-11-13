.class public final Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

.field public final qsDetailControllerLazy:Ldagger/Lazy;

.field public final soundCraftCoverController:Lcom/android/systemui/audio/soundcraft/SoundCraftCoverController;

.field public final soundCraftNowBarController:Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;

.field public final soundCraftQpDetailAdapter:Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;

.field public final title:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;Lcom/android/systemui/audio/soundcraft/SoundCraftCoverController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;",
            "Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;",
            "Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;",
            "Lcom/android/systemui/audio/soundcraft/SoundCraftCoverController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;->qsDetailControllerLazy:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;->soundCraftQpDetailAdapter:Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;

    iput-object p5, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;->soundCraftNowBarController:Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;

    iput-object p6, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;->soundCraftCoverController:Lcom/android/systemui/audio/soundcraft/SoundCraftCoverController;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const-string p2, ""

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final notifyChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
