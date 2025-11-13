.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;
.super Landroid/os/Handler;
.source "BluetoothExpListController.java"


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

    .line 140
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 143
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "BluetoothExpListController"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string p1, "handleMessage :: EVENT_ANIMATION_TIMEOUT"

    .line 237
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertPosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 239
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeletePosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 241
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTempInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 242
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTempDeletePreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmCastInsertPosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 246
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTempInsertCastPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 249
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 253
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 145
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmLocalManager(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 146
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object p1

    .line 147
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v3

    const/16 v4, 0xc

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v3

    if-ne v3, v4, :cond_4

    if-eqz p1, :cond_4

    .line 148
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_4

    move p1, v0

    goto :goto_1

    :cond_4
    move p1, v2

    .line 149
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 150
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    .line 152
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeletePreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string v3, "handleMessage :: mNeedUpdatePreference is true"

    const-string v5, "handleMessage :: It need update UI for that stop scan status"

    const-string v6, "handleMessage :: Finish animation loop"

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    if-ne p1, v4, :cond_6

    const-string p1, "handleMessage :: It is needed to setInsertDeleteAnimation additionally"

    .line 153
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v8}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeletePreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTempDeletePreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)V

    .line 155
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v8}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTempInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)V

    .line 156
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 157
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeletePreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p1, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setInsertDeleteAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 158
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeletePreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 159
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    if-ne p1, v4, :cond_7

    const-string p1, "handleMessage :: It is needed to setInsertAnimation additionally"

    .line 160
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v8}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTempInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)V

    .line 162
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 163
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setInsertAnimation(Z)V

    goto :goto_2

    .line 165
    :cond_7
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 167
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iput-boolean v2, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 168
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    if-eqz p1, :cond_8

    .line 169
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iput-boolean v2, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    .line 171
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->updateDeviceListGroup(Z)V

    .line 175
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNeedUpdateUi:Z

    if-eqz p1, :cond_9

    .line 176
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;->updateScanningState()V

    .line 179
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;->onFinishAnimationLoop()V

    .line 183
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertCastPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    if-ne p1, v4, :cond_a

    const-string p1, "handleMessage :: [CAST] It is needed to setCastInsertAnimation additionally"

    .line 184
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertCastPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTempInsertCastPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertCastPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 187
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setCastInsertAnimation()V

    goto/16 :goto_3

    .line 189
    :cond_a
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 191
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iput-boolean v2, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 192
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    if-eqz p1, :cond_b

    .line 193
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iput-boolean v2, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    .line 195
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->updateDeviceListGroup(Z)V

    .line 199
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNeedUpdateUi:Z

    if-eqz p1, :cond_c

    .line 200
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;->updateScanningState()V

    .line 203
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;->onFinishAnimationLoop()V

    goto :goto_3

    :cond_d
    const-string p1, "handleMessage :: Init used animation object"

    .line 207
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertPosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 209
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeletePosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 211
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTempInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeletePreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTempDeletePreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 218
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmCastInsertPosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 219
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmInsertCastPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTempInsertCastPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 223
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 224
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iput-boolean v2, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 225
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iput-boolean v2, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    .line 229
    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 230
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    :cond_f
    :goto_4
    return-void
.end method
