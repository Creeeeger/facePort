.class public Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothFindBroadcastsHeaderController.java"


# instance fields
.field mBroadcastSourceList:Landroidx/preference/PreferenceCategory;

.field mBtnBroadcastLayout:Landroid/widget/LinearLayout;

.field mBtnFindBroadcast:Landroid/widget/Button;

.field mBtnLeaveBroadcast:Landroid/widget/Button;

.field mBtnScanQrCode:Landroid/widget/Button;

.field mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field mSummary:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$3abGvcyJBJHHyVNtcCEWKRFjSqA(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->lambda$refresh$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KQwIeOAvPFKMXWWs7qDHlhqRvWI(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->lambda$refresh$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gZrmv4Qno1XzB3vGW0JwooVa_is(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->lambda$refresh$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private isBroadcastSourceExist()Z
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBroadcastSourceList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$refresh$0(Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->scanBroadcastSource()V

    return-void
.end method

.method private synthetic lambda$refresh$1(Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->leaveBroadcastSession()V

    return-void
.end method

.method private synthetic lambda$refresh$2(Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->launchQrCodeScanner()V

    return-void
.end method

.method private launchQrCodeScanner()V
    .locals 0

    return-void
.end method

.method private leaveBroadcastSession()V
    .locals 0

    return-void
.end method

.method private scanBroadcastSource()V
    .locals 0

    return-void
.end method

.method private updateHeaderLayout()V
    .locals 3

    .line 97
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->isBroadcastSourceExist()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnFindBroadcast:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnBroadcastLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnFindBroadcast:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnBroadcastLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_find_broadcast_header"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "bluetooth_find_broadcast_header"

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "broadcast_source_list"

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBroadcastSourceList:Landroidx/preference/PreferenceCategory;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->refresh()V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->refresh()V

    :cond_0
    return-void
.end method

.method protected refresh()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    sget v1, Lcom/android/settings/R$id;->entity_header_title:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mTitle:Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->entity_header_summary:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mSummary:Landroid/widget/TextView;

    const-string v1, ""

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->button_find_broadcast:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnFindBroadcast:Landroid/widget/Button;

    .line 82
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->button_broadcast_layout:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnBroadcastLayout:Landroid/widget/LinearLayout;

    .line 84
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->button_leave_broadcast:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnLeaveBroadcast:Landroid/widget/Button;

    .line 85
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->button_scan_qr_code:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnScanQrCode:Landroid/widget/Button;

    .line 87
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->updateHeaderLayout()V

    :cond_1
    :goto_0
    return-void
.end method
