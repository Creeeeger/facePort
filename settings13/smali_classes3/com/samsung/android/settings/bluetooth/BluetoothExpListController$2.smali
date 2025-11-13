.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"

# interfaces
.implements Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 272
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTempInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    .line 273
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTempInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 274
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertPosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getUpdatePosition(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    goto :goto_1

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertGroup(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 277
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertGroup(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->addPreference(ILcom/android/settings/bluetooth/BluetoothDevicePreference;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 280
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;->putDevicePreferenceMap(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTempInsertCastPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 287
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTempInsertCastPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    .line 288
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmCastInsertPosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getUpdatePosition(I)I

    move-result v2

    if-ne v2, v3, :cond_3

    goto :goto_2

    .line 290
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertCastGroup(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->addCastPreference(ILcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 292
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 293
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;->putCastDevicePreferenceMap(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAnimationEnd(Z)V
    .locals 3

    const-string p1, "BluetoothExpListController"

    const-string v0, "onAnimationEnd ::"

    .line 309
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertPosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 314
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeletePosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 316
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTempInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 317
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTempDeletePreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 320
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmCastInsertPosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 321
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTempInsertCastPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 324
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 326
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 328
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onAnimationStart(Z)V
    .locals 3

    const-string p1, "BluetoothExpListController"

    const-string v0, "onAnimationStart ::"

    .line 334
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 337
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeletePosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getUpdatePosition(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 304
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeleteGroup(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->remove(I)V

    :cond_0
    return-void
.end method
