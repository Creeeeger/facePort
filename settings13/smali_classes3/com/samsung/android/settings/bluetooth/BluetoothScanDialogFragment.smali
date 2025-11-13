.class public Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothScanDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field private isCastSupported:Z

.field private mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mScanBtn:Landroid/widget/Button;

.field private mScreenId:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetisCastSupported(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->isCastSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalCastAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mScreenId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 148
    sget v1, Lcom/android/settings/R$layout;->sec_bluetooth_scan_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mView:Landroid/view/View;

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->updateDialogHeight()V

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method private setupDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->sec_common_done:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->service_stop:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_bluetooth_custom_title_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 133
    sget v1, Lcom/android/settings/R$id;->title_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 134
    sget v1, Lcom/android/settings/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 135
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$drawable;->sec_bluetooth_scandialog_bg:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private updateDialogHeight()V
    .locals 9

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->bluetooth_scan_dialog:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 294
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 302
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    double-to-int v5, v1

    .line 304
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->container_material:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    .line 308
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->tw_expandable_listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/SemExpandableListView;

    .line 309
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->bluetooth_scandialog_content_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$2;

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;IILandroid/widget/LinearLayout;Landroid/widget/SemExpandableListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "BluetoothScanDialogFragment"

    const-string v1, "updateDialogHeight :: Can\'t find BT fragment"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x265

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    const/16 p0, 0xd

    if-ne p1, p0, :cond_0

    const-string p0, "BluetoothScanDialogFragment"

    const-string p1, "onBluetoothStateChanged :: BluetoothScanDialog will finish by bluetooth disable"

    .line 268
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "BluetoothScanDialogFragment"

    const-string v0, "onCancel ::"

    .line 170
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick :: which = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothScanDialogFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mScreenId:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->event_bluetooth_scan_dialog_done_button:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 162
    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 224
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->updateDialogHeight()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    const-string p0, "BluetoothScanDialogFragment"

    const-string p1, "Bluetooth is not supported on this device"

    .line 100
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 104
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->isCastSupported:Z

    if-eqz p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getLocalCastAdapter()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    .line 108
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->setupDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_2

    .line 114
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 117
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 240
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 218
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->updateScanStateView()V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanningStateChanged :: started - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothScanDialogFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->updateScanStateView()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 177
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onStart()V

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_bluetooth_scan_dialog:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mScreenId:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mScanBtn:Landroid/widget/Button;

    .line 187
    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 231
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onStop()V

    .line 233
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mScanBtn:Landroid/widget/Button;

    if-eqz p0, :cond_0

    .line 234
    sget v0, Lcom/android/settings/R$string;->bluetooth_scan_for_devices:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void
.end method

.method public updateScanStateView()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mScanBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 250
    sget v1, Lcom/android/settings/R$string;->service_stop:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 252
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mScanBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 255
    sget v1, Lcom/android/settings/R$string;->bluetooth_scan_for_devices:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 257
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method
