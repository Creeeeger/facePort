.class public final Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AABluetoothSettings.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;


# instance fields
.field aaSettingsCardView:Lcom/google/android/material/card/MaterialCardView;

.field availableDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field connectToUsbTextView:Landroid/widget/TextView;

.field descriptionTextView:Landroid/widget/TextView;

.field deviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field expandableListAdapter:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;

.field expandableListDetail:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;>;"
        }
    .end annotation
.end field

.field expandableListTitle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field expandableListView:Landroid/widget/SemExpandableListView;

.field private mInitiateScan:Z

.field mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProgressItem:Landroid/view/MenuItem;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mScan:Landroid/view/MenuItem;

.field noDevicesFoundLayout:Landroid/widget/LinearLayout;

.field pairedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field turnOnBTCardView:Lcom/google/android/material/card/MaterialCardView;

.field turnOnButton:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$IN8BPJDBoMdJG_ANFvRnXFYaXhg(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->lambda$showUSBDialog$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WVzSt0YTS9Zh5nUOWHlVqCweif8(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->lambda$onActivityCreated$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YE9YTfpIvfFh0KSSO4ztSpd6s7c(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->lambda$onActivityCreated$2(Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$afWIDjQOZra5VZ96C0JqA5emWZ4(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->lambda$onActivityCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v0t035Ysk2kEyV2ubLa3L9xW9FQ(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->lambda$showUSBDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAvailableDevices(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->clearAvailableDevices()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowListView(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->showListView(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartScanning(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->startScanning()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateExpdandableListDetail(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->updateExpdandableListDetail()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mInitiateScan:Z

    .line 535
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private clearAvailableDevices()V
    .locals 3

    .line 686
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 687
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 688
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->pairedDevices:Ljava/util/ArrayList;

    const-string v2, "Paired devices"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    const-string v2, "Available devices"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expandableListDetail size + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AABluetoothSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expandableListTitle size + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListTitle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListAdapter:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListTitle:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->setData(Ljava/util/List;Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method private getPairedDeviceList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 642
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->pairedDevices:Ljava/util/ArrayList;

    .line 644
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 645
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Paired device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AABluetoothSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothUtils;->isCarKitDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->pairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 654
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->pairedDevices:Ljava/util/ArrayList;

    return-object p0
.end method

.method private isBluetoothOn()Z
    .locals 1

    .line 283
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p0, :cond_0

    const-string p0, "AABluetoothSettings"

    const-string v0, "btAdapter is Null"

    .line 284
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 288
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onActivityCreated$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 154
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->setBluetooth(Z)Z

    return-void
.end method

.method private synthetic lambda$onActivityCreated$1(Landroid/view/View;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->showUSBDialog()V

    return-void
.end method

.method private synthetic lambda$onActivityCreated$2(Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onChildClick groupPosition = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " childPosition = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AABluetoothSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListAdapter:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 198
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "device name= "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 202
    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 205
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "device is from available list"

    .line 206
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 213
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->pairedDevices:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "device is from paired list"

    .line 218
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothUtils;->disconnectConnectWDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$showUSBDialog$3(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$showUSBDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private makeTextViewUnderlined(Landroid/widget/TextView;)V
    .locals 3

    .line 259
    new-instance p0, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 260
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 261
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setBluetooth(Z)Z
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, "AABluetoothSettings"

    const-string v1, "btAdapter is Null"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 274
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result p0

    return p0

    :cond_1
    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 276
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private showListView(Z)V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListView:Landroid/widget/SemExpandableListView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView;->setVisibility(I)V

    return-void
.end method

.method private showTurnOnBTCardView(Z)V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->turnOnBTCardView:Lcom/google/android/material/card/MaterialCardView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private showUSBDialog()V
    .locals 3

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 236
    sget v1, Lcom/android/settings/R$layout;->aa_use_usb_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 237
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v2, "Use USB Cable"

    .line 239
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v2, "If your car supports USB projection, connect your phone to your car"

    .line 240
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 243
    sget v2, Lcom/android/settings/R$id;->aa_connection_help_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 244
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->makeTextViewUnderlined(Landroid/widget/TextView;)V

    .line 246
    new-instance p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    new-instance p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$$ExternalSyntheticLambda4;-><init>()V

    const v0, 0x104000a

    invoke-virtual {v1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 253
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 254
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startScanning()V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 636
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    :cond_1
    return-void
.end method

.method private updateExpdandableListDetail()V
    .locals 3

    .line 658
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->getPairedDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    .line 659
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    .line 660
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    .line 662
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 663
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    const-string v2, "Paired devices"

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    const-string v1, "Available devices"

    invoke-virtual {v0, v1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected addPreferencesForActivity()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    .line 114
    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    const-string v1, "Android Auto Settings"

    .line 116
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 118
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 119
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 102
    sget p0, Lcom/android/settings/R$xml;->bluetooth_aa_settings:I

    return p0
.end method

.method public onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 407
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActiveDeviceChanged : activeDevice = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  profile :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AABluetoothSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 139
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mInitiateScan:Z

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->addPreferencesForActivity()V

    .line 142
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_1

    const-string p0, "AABluetoothSettings"

    const-string p1, "No supply for BT"

    .line 144
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 149
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->deviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v2, Lcom/android/settings/R$id;->aa_bt_cardview:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->turnOnBTCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 152
    sget v2, Lcom/android/settings/R$id;->aa_bt_card_turn_on_button:I

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->turnOnButton:Landroid/widget/Button;

    .line 154
    new-instance v2, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->showTurnOnBTCardView(Z)V

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v2, Lcom/android/settings/R$id;->aa_settings_cardview:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->aaSettingsCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 159
    new-instance v2, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;)V

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v2, Lcom/android/settings/R$id;->aa_bt_description_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->descriptionTextView:Landroid/widget/TextView;

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "device_name"

    invoke-static {p1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "If your car supports wireless Android auto, press and hold the voice command button on your steering wheel. Your phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is now visisble to your car."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 174
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v2, Lcom/android/settings/R$id;->aa_connect_to_use_usb_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->connectToUsbTextView:Landroid/widget/TextView;

    .line 178
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->makeTextViewUnderlined(Landroid/widget/TextView;)V

    .line 179
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->connectToUsbTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v2, Lcom/android/settings/R$id;->aa_no_devices_found_layout:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->noDevicesFoundLayout:Landroid/widget/LinearLayout;

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v2, Lcom/android/settings/R$id;->tw_expandable_listview:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SemExpandableListView;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListView:Landroid/widget/SemExpandableListView;

    const/16 v2, 0xf

    .line 184
    invoke-virtual {p1, v2}, Landroid/widget/SemExpandableListView;->semSetRoundedCorners(I)V

    .line 185
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/SemExpandableListView;->semSetRoundedCornerColor(II)V

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->updateExpdandableListDetail()V

    .line 188
    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListTitle:Ljava/util/List;

    .line 189
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListTitle:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    invoke-direct {p1, v2, v3, v4}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/LinkedHashMap;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListAdapter:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;

    .line 190
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2, p1}, Landroid/widget/SemExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 191
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {p1, v1}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    .line 192
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {p1, v0}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    .line 195
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListView:Landroid/widget/SemExpandableListView;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;)V

    invoke-virtual {p1, v0}, Landroid/widget/SemExpandableListView;->setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 4

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothStateChanged() :: Bluetooth State "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AABluetoothSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mScan:Landroid/view/MenuItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-eqz v0, :cond_1

    if-ne p1, v3, :cond_0

    .line 507
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 509
    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 513
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mProgressItem:Landroid/view/MenuItem;

    if-eqz p0, :cond_3

    if-ne p1, v3, :cond_2

    .line 515
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 517
    :cond_2
    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_1
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionStateChanged cachedDevice ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " :: isconnected :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " :: isbusy :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AABluetoothSettings"

    .line 495
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 499
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListAdapter:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->updateSummary(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .line 350
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    sget v0, Lcom/android/settings/R$menu;->sec_aa_main_progress_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 353
    sget v0, Lcom/android/settings/R$id;->progress:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mProgressItem:Landroid/view/MenuItem;

    .line 354
    sget v1, Lcom/android/settings/R$layout;->sec_aa_main_progressbar_layout:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 356
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 357
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    sget v3, Lcom/android/settings/R$string;->service_stop:I

    goto :goto_1

    :cond_2
    sget v3, Lcom/android/settings/R$string;->bluetooth_preference_scan_title:I

    :goto_1
    const/4 v4, 0x1

    invoke-interface {p1, v1, v4, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 359
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mScan:Landroid/view/MenuItem;

    const/4 v3, 0x2

    .line 360
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    if-eqz v2, :cond_3

    .line 363
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 364
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 367
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 370
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 129
    sget p3, Lcom/android/settings/R$layout;->aa_preference_list_fragment_bluetooth:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0xf

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 309
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 413
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeviceAdded : cachedDevice = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AABluetoothSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 8

    if-eqz p1, :cond_6

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceBondStateChanged : cachedDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bondState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AABluetoothSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 429
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_BOND_STATE_CHANGED: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    const/16 v1, 0xc

    const-string v2, "add device"

    const-string v3, "expandableListTitle + "

    const-string v4, "expandableListDetail + "

    const-string v5, "Available devices"

    const-string v6, "Paired devices"

    const-string v7, "remove device"

    if-ne p2, v1, :cond_2

    .line 431
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->pairedDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothUtils;->isCarKitDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 432
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->pairedDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 436
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 439
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->clear()V

    .line 440
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->pairedDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, v6, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListTitle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListAdapter:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListTitle:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v1, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->setData(Ljava/util/List;Ljava/util/LinkedHashMap;)V

    goto/16 :goto_0

    .line 446
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    const/16 v1, 0xa

    if-ne p2, v1, :cond_5

    .line 447
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: BluetoothDevice.BOND_NONE , device ="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->pairedDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 449
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->pairedDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 452
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 453
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->clear()V

    .line 457
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->pairedDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, v6, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->availableDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListTitle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListAdapter:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListTitle:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v1, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->setData(Ljava/util/List;Ljava/util/LinkedHashMap;)V

    .line 463
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    const/16 p1, 0xb

    if-ne p0, p1, :cond_6

    const-string p0, "onReceive: BluetoothDevice.BOND_BONDING"

    .line 464
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeviceDeleted : cachedDevice = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AABluetoothSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 375
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 376
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    const-string v0, "AABluetoothSettings"

    if-eqz p1, :cond_0

    const-string p1, "onOptionsItemSelected :: Stop scanning"

    .line 377
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 379
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    goto :goto_0

    :cond_0
    const-string p1, "onOptionsItemSelected :: Start scanning"

    .line 382
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->startScanning()V

    :cond_1
    :goto_0
    return v1

    .line 387
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 301
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 303
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 1

    if-eqz p1, :cond_0

    .line 480
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProfileConnectionStateChanged cachedDevice ="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "::"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " :: newState = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " :: isbusy :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AABluetoothSettings"

    .line 480
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    .line 484
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListAdapter:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->updateSummary(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 1

    if-eqz p1, :cond_0

    .line 672
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProfileStateChanged cachedDevice ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "::"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " :: newState = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " :: oldState :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " :: isbusy :"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "AABluetoothSettings"

    .line 672
    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    if-eq p3, p2, :cond_0

    .line 676
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->expandableListAdapter:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->updateSummary(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 315
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 317
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.FOUND"

    .line 318
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 319
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 320
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 322
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 323
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInitiateScan = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mInitiateScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AABluetoothSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mInitiateScan:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->startScanning()V

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mInitiateScan:Z

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->isBluetoothOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->showListView(Z)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 2

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanningStateChanged :: is start scanning "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AABluetoothSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 526
    sget v1, Lcom/android/settings/R$string;->service_stop:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settings/R$string;->bluetooth_preference_scan_title:I

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mProgressItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 529
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 530
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 392
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    const-string v0, "AABluetoothSettings"

    const-string v1, "onStop() :: Stop scanning"

    .line 393
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mProgressItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 398
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 399
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 401
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz p0, :cond_2

    sget v0, Lcom/android/settings/R$string;->bluetooth_preference_scan_title:I

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public onSyncDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method
