.class public final Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$6;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "com.samsung.accessory"

    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$6;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    iput-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->isBudsManagerFront:Z

    if-eqz v0, :cond_1

    const-string p0, "onTaskMoveToFront : isBudsManagerFront="

    const-string p1, "SoundCraft.SoundCraftManager"

    invoke-static {p0, p1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final onTaskStackChanged()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$6;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->isBudsManagerFront:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    const-string v1, "com.samsung.accessory.hearablemgr.module.home.activity.HomeActivity"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "onTaskStackChanged : isBudsMainPageFront="

    const-string v2, "SoundCraft.SoundCraftManager"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isBuds3OrNextModel(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->requestGWPluginModel(Landroid/bluetooth/BluetoothDevice;)V

    :cond_3
    return-void
.end method
