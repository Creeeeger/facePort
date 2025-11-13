.class public final Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;
.implements Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$HearingDeviceItemCallback;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field static final ACTION_BLUETOOTH_DEVICE_DETAILS:Ljava/lang/String; = "com.android.settings.BLUETOOTH_DEVICE_DETAIL_SETTINGS"

.field static final LIVE_CAPTION_INTENT:Landroid/content/Intent;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mApplicationContext:Landroid/content/Context;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public mDeviceList:Landroidx/recyclerview/widget/RecyclerView;

.field public mDeviceListAdapter:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter;

.field public mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

.field public final mHearingDeviceItemFactoryList:Ljava/util/List;

.field public mHearingDeviceItemList:Ljava/util/List;

.field public final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mMainHandler:Landroid/os/Handler;

.field public mPairButton:Landroid/widget/Button;

.field public final mPresetCallback:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;

.field public mPresetInfoAdapter:Landroid/widget/ArrayAdapter;

.field public mPresetSpinner:Landroid/widget/Spinner;

.field public mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

.field public final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field public mRelatedToolsContainer:Landroid/widget/LinearLayout;

.field public final mShowPairNewDevice:Z

.field public final mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.live_caption"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->LIVE_CAPTION_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/os/Handler;Landroid/media/AudioManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetCallback:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;

    new-instance v0, Lcom/android/systemui/bluetooth/qsdialog/ActiveHearingDeviceItemFactory;

    invoke-direct {v0}, Lcom/android/systemui/bluetooth/qsdialog/ActiveHearingDeviceItemFactory;-><init>()V

    new-instance v1, Lcom/android/systemui/bluetooth/qsdialog/AvailableHearingDeviceItemFactory;

    invoke-direct {v1}, Lcom/android/systemui/bluetooth/qsdialog/AvailableHearingDeviceItemFactory;-><init>()V

    new-instance v2, Lcom/android/systemui/bluetooth/qsdialog/ConnectedDeviceItemFactory;

    invoke-direct {v2}, Lcom/android/systemui/bluetooth/qsdialog/ConnectedDeviceItemFactory;-><init>()V

    new-instance v3, Lcom/android/systemui/bluetooth/qsdialog/SavedHearingDeviceItemFactory;

    invoke-direct {v3}, Lcom/android/systemui/bluetooth/qsdialog/SavedHearingDeviceItemFactory;-><init>()V

    invoke-static {v0, v1, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mHearingDeviceItemFactoryList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mApplicationContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mShowPairNewDevice:Z

    iput-object p3, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iput-object p4, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iput-object p6, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p7, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mMainHandler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mAudioManager:Landroid/media/AudioManager;

    iget-object p1, p6, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    return-void
.end method

.method public static getActiveHearingDevice(Ljava/util/List;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method


# virtual methods
.method public final beforeCreate(Landroid/app/Dialog;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const p0, 0x7f130f01

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setTitle(I)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d0122

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 p0, 0x1

    const/4 v0, -0x1

    const v2, 0x7f130ef1

    invoke-virtual {p1, v0, v2, v1, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public final createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object v0
.end method

.method public final getHearingDevicesList()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->getHearingDevicesList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mHearingDeviceItemList:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda8;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;I)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->getHearingDevicesList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mHearingDeviceItemList:Ljava/util/List;

    iget-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->getActiveHearingDevice(Ljava/util/List;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    iput-object p1, p2, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 8

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    const p2, 0x7f0a08ab

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPairButton:Landroid/widget/Button;

    const p2, 0x7f0a0374

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mDeviceList:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a0908

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetSpinner:Landroid/widget/Spinner;

    const p2, 0x7f0a09aa

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mRelatedToolsContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mDeviceList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->getHearingDevicesList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mHearingDeviceItemList:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter;

    invoke-direct {v0, p2, p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter;-><init>(Ljava/util/List;Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$HearingDeviceItemCallback;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mDeviceListAdapter:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter;

    iget-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mDeviceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetCallback:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;

    iget-object v1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-direct {p2, v1, v0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController$PresetCallback;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    iget-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mHearingDeviceItemList:Ljava/util/List;

    invoke-static {p2}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->getActiveHearingDevice(Ljava/util/List;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    iput-object p2, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0121

    const v3, 0x7f0a04e8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetInfoAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f0d0120

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetInfoAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$2;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$3;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->getAllPresetInfo()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    invoke-virtual {v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->getActivePresetIndex()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->refreshPresetInfoAdapter(ILjava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetSpinner:Landroid/widget/Spinner;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetInfoAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-boolean p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mShowPairNewDevice:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPairButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPairButton:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    sget-object p2, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->LIVE_CAPTION_INTENT:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/systemui/accessibility/hearingaid/ToolItem;

    const v3, 0x7f130b0e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080b62

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1}, Lcom/android/systemui/accessibility/hearingaid/ToolItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f030048

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesToolItemParser;->parseStringArray(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v0, "HearingDevicesDialogDelegate"

    const-string v1, "No hearing devices related tool config resource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_4
    if-ge v1, v0, :cond_5

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/accessibility/hearingaid/ToolItem;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mRelatedToolsContainer:Landroid/widget/LinearLayout;

    const v6, 0x7f0d0123

    invoke-virtual {v4, v6, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0d4f

    invoke-virtual {v4, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a0d50

    invoke-virtual {v4, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v3, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, v3, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v3, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v3, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolIntent:Landroid/content/Intent;

    const v5, 0x10008000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v5, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3, v4}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;Landroid/content/Intent;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mRelatedToolsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-void
.end method

.method public final onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->getHearingDevicesList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mHearingDeviceItemList:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda8;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;I)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onStart(Landroid/app/Dialog;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->registerHapCallback()V

    iget-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/android/settingslib/bluetooth/HapClientProfile;->mIsProfileReady:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onStop(Landroid/app/Dialog;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez v1, :cond_1

    const-string v0, "HapClientProfile"

    const-string v1, "Proxy not attached to service. Cannot unregister callback."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHapClient;->unregisterCallback(Landroid/bluetooth/BluetoothHapClient$Callback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot unregister callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HearingDevicesPresetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    iget-object v1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public final refreshPresetInfoAdapter(ILjava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetInfoAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetInfoAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetInfoAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHapPresetInfo;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHapPresetInfo;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
