.class public Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BluetoothExpListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceListGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDividerHeight:I

.field private mExpandableListView:Landroid/widget/SemExpandableListView;

.field private mGuideGroupMessage:Ljava/lang/String;

.field private mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field public mIsAppbarExpanded:Z

.field private mIsDisplayCastGroup:Z

.field private mIsDisplayPiaredGroup:Z

.field public mIsOnProgressAddVI:Z

.field private mIsSupportTips:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field public mNeedUpdatePreference:Z

.field private mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/SemExpandableListView;I)V
    .locals 2

    .line 102
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    .line 71
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 86
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    .line 88
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsAppbarExpanded:Z

    const-string v1, ""

    .line 92
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuideGroupMessage:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    .line 105
    iput p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDividerHeight:I

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setGuidePreferenceGroup()V

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoItemPreferenceGroup()V

    .line 112
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 114
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const-wide/32 p2, 0x7bfa480

    invoke-static {p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiTipsUtils;->isSupportWifiTips(Landroid/content/Context;J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsSupportTips:Z

    .line 115
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsSupportTips:Z

    :cond_0
    return-void
.end method

.method private isDialogType(Landroid/content/Context;)Z
    .locals 0

    .line 956
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez p1, :cond_1

    instance-of p0, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private setNoItemPreferenceGroup()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 277
    sget p0, Lcom/android/settings/R$layout;->sec_preference_bluetooth_no_item:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addCastPreferenceGroup(ILcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)Z
    .locals 2

    .line 903
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 907
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroupCount()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 908
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {p1, v1}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public addCastPreferenceGroup(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)Z
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    .line 898
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return v1
.end method

.method public addPreferenceGroup(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroupCount()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 150
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {p1, v1}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return v1
.end method

.method public containsGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsGroup(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)Z
    .locals 0

    .line 914
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 3

    const/4 v0, 0x0

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 248
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isAvailableDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCastDevicePreferenceGroup()Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;
    .locals 2

    .line 884
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 885
    instance-of v1, v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    if-eqz v1, :cond_0

    .line 886
    check-cast v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v0, :cond_2

    .line 357
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 358
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    .line 361
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreference(I)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object p0

    return-object p0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    if-eqz v0, :cond_4

    .line 363
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    .line 364
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getCastPreferenceCount()I

    move-result p1

    if-nez p1, :cond_3

    return-object v1

    .line 367
    :cond_3
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getCastPreference(I)Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p0, p2

    return-wide p0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-nez p4, :cond_1

    .line 685
    sget v4, Lcom/android/settings/R$layout;->sec_preference_bt_icon:I

    .line 687
    iget-object v5, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 688
    sget v4, Lcom/android/settings/R$layout;->sec_preference_bt_icon_dialog:I

    .line 691
    :cond_0
    iget-object v5, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 692
    new-instance v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder-IA;)V

    const v6, 0x1020006

    .line 693
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x1020016

    .line 694
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v6, 0x1020010

    .line 695
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 696
    sget v6, Lcom/android/settings/R$id;->deviceDetails:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    .line 697
    sget v6, Lcom/android/settings/R$id;->tips_btn:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->tipsBtn:Landroid/widget/ImageView;

    .line 698
    sget v6, Lcom/android/settings/R$id;->layout_details:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    .line 699
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 701
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;

    move-object/from16 v4, p4

    .line 704
    :goto_0
    invoke-virtual/range {p0 .. p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    const-string v9, "SM-T97"

    const-string v10, "ro.product.model"

    const-string v11, ", isLastChild - "

    const-string v12, ", childPosition - "

    const-string v13, "getChildView :: "

    const/16 v14, 0xf

    const-string v8, "BluetoothExpListAdapter"

    if-eqz v6, :cond_f

    .line 705
    invoke-virtual/range {p0 .. p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v6, :cond_1a

    .line 708
    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 709
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getChildView :: groupPosition - "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 714
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$drawable;->sec_bluetooth_listview_background2:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 716
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$drawable;->sec_bluetooth_listview_background:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    .line 721
    invoke-virtual {v4, v14}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 722
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v14, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    .line 724
    invoke-virtual {v4, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 725
    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    const/16 v1, 0xc

    .line 728
    invoke-virtual {v4, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 729
    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 731
    invoke-virtual {v4, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 736
    :cond_6
    :goto_2
    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 737
    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object v2

    .line 738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "isBonded = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", groupId = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v3, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getDeviceForGroupConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    .line 743
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v7

    if-lez v7, :cond_7

    .line 744
    iget-object v7, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$style;->BluetoothDeviceConnectedHighlight:I

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_3

    .line 746
    :cond_7
    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 747
    iget-object v7, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$style;->BluetoothDeviceDialogTitleTextStyle:I

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_3

    .line 749
    :cond_8
    iget-object v7, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$style;->BluetoothDeviceTitleTextStyle:I

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 752
    :goto_3
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusyForList()Z

    move-result v7

    .line 753
    iget-object v8, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    xor-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v7, :cond_9

    .line 756
    iget-object v7, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    const/16 v9, 0x5e

    invoke-virtual {v8, v9}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    .line 758
    :cond_9
    iget-object v7, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 761
    :goto_4
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 763
    iget-object v7, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v3, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 766
    :cond_a
    iget-object v3, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    :goto_5
    iget-object v3, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 772
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v7, 0xc

    if-eq v3, v7, :cond_b

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    iget-object v3, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v7, v3, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-nez v7, :cond_c

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSelectedDeviceList()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isTetheredDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 774
    iget-object v3, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 775
    iget-object v3, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    if-eqz v3, :cond_d

    .line 776
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    iget-object v3, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    sget v7, Lcom/android/settings/R$id;->bluetooth_profile:I

    invoke-virtual {v3, v7, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->bluetooth_device_details:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 779
    iget-object v7, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 781
    iget-object v2, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 782
    iget-object v2, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    goto :goto_6

    .line 786
    :cond_c
    iget-object v2, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    if-eqz v2, :cond_d

    .line 787
    iget-object v2, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 790
    :cond_d
    :goto_6
    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsSupportTips:Z

    if-eqz v0, :cond_1a

    .line 791
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBondingCountExceed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 792
    iget-object v0, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->tipsBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    const/4 v2, 0x0

    .line 793
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 794
    iget-object v0, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->tipsBtn:Landroid/widget/ImageView;

    sget v3, Lcom/android/settings/R$id;->bluetooth_tips:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 795
    iget-object v0, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->tipsBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    iget-object v0, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->tipsBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 797
    iget-object v0, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->tipsBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    goto/16 :goto_c

    .line 800
    :cond_e
    iget-object v0, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->tipsBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    const/16 v1, 0x8

    .line 801
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 809
    :cond_f
    invoke-virtual/range {p0 .. p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    if-eqz v6, :cond_1a

    .line 810
    invoke-virtual/range {p0 .. p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    if-eqz v6, :cond_1a

    .line 813
    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 814
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "YSYS:: groupPosition - "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 818
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 819
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$drawable;->sec_bluetooth_listview_background2:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 821
    :cond_10
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$drawable;->sec_bluetooth_listview_background:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    if-nez v2, :cond_12

    if-eqz v3, :cond_11

    .line 826
    invoke-virtual {v4, v14}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 827
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v14, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_8

    :cond_11
    const/4 v1, 0x3

    .line 829
    invoke-virtual {v4, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 830
    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_8

    :cond_12
    if-eqz v3, :cond_13

    const/16 v1, 0xc

    .line 833
    invoke-virtual {v4, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 834
    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_8

    :cond_13
    const/4 v1, 0x0

    .line 836
    invoke-virtual {v4, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 840
    :cond_14
    :goto_8
    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->getCachedCastDevice()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object v1

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastDevice()Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->getName()Ljava/lang/String;

    move-result-object v2

    .line 843
    iget-object v3, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getMaxConnectionState()I

    move-result v2

    if-lez v2, :cond_15

    .line 845
    iget-object v2, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$style;->BluetoothDeviceConnectedHighlight:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_9

    .line 847
    :cond_15
    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 848
    iget-object v2, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$style;->BluetoothDeviceDialogTitleTextStyle:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_9

    .line 850
    :cond_16
    iget-object v2, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$style;->BluetoothDeviceTitleTextStyle:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 853
    :goto_9
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isBusy()Z

    move-result v0

    .line 854
    iget-object v2, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v0, :cond_17

    .line 856
    iget-object v0, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0x5e

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_a

    .line 858
    :cond_17
    iget-object v0, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 860
    :goto_a
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 862
    iget-object v1, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget-object v0, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    goto :goto_b

    .line 865
    :cond_18
    iget-object v0, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 867
    :goto_b
    iget-object v0, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 868
    iget-object v0, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_19

    .line 869
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 872
    :cond_19
    iget-object v0, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->tipsBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    .line 873
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1a
    :goto_c
    return-object v4
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v0, :cond_0

    .line 337
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result p0

    return p0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    if-eqz v0, :cond_1

    .line 339
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getCastPreferenceCount()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getCombinedChildId(JJ)J
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    long-to-int v5, v1

    long-to-int v6, v3

    .line 392
    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    const/16 v10, 0x20

    const-wide/32 v11, 0x7fffffff

    const-wide/high16 v13, -0x8000000000000000L

    const-string v15, ", childId = "

    const-string v8, "getCombinedChildId :: child preference is null, groupId = "

    const-string v9, "BluetoothExpListAdapter"

    const-wide/16 v16, 0x0

    if-eqz v7, :cond_1

    .line 393
    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getChildId()J

    move-result-wide v3

    :goto_0
    and-long v0, v1, v11

    shl-long/2addr v0, v10

    or-long/2addr v0, v13

    const-wide/16 v5, -0x1

    and-long v2, v3, v5

    or-long/2addr v0, v2

    return-wide v0

    .line 398
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    .line 402
    :cond_1
    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    if-eqz v7, :cond_3

    .line 403
    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->getChildId()J

    move-result-wide v3

    goto :goto_0

    .line 408
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-wide v16
.end method

.method public getCombinedGroupId(J)J
    .locals 0

    .line 419
    invoke-super {p0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getGroupCount()I
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getGroupId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getGroupPosition(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getGroupPosition(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)I
    .locals 0

    .line 918
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    .line 431
    iget-object v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 433
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const-string v6, ", "

    const v7, 0x106000d

    const-string v8, " , isExpanded = "

    const-string v9, ",  getPreferenceCount = "

    const-string v10, "getGroupView :: groupPosition = "

    const-string v11, "BluetoothExpListAdapter"

    const v13, 0x1020016

    const/4 v14, 0x0

    const/4 v12, 0x0

    if-eqz v5, :cond_13

    .line 434
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 435
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getLayoutResource()I

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getLayoutResource()I

    move-result v2

    invoke-virtual {v4, v2, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 441
    :cond_0
    sget v2, Lcom/android/settings/R$layout;->sec_bluetooth_category_layout:I

    invoke-virtual {v4, v2, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 443
    iget-object v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 444
    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 446
    iget-object v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 448
    :cond_1
    sget v4, Lcom/android/settings/R$id;->category_divider:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 454
    :goto_0
    invoke-virtual {v2, v12}, Landroid/view/View;->setClickable(Z)V

    .line 455
    invoke-virtual {v2, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    new-instance v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$1;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 468
    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 469
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChildrenCount(I)I

    move-result v4

    if-nez v4, :cond_2

    .line 470
    iput-boolean v12, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsDisplayPiaredGroup:Z

    const/16 v4, 0x8

    .line 471
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    .line 473
    iput-boolean v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsDisplayPiaredGroup:Z

    .line 474
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 477
    :cond_3
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 480
    :goto_1
    new-instance v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;

    invoke-direct {v4, v14}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder-IA;)V

    .line 482
    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getLayoutResource()I

    move-result v7

    sget v8, Lcom/android/settings/R$layout;->sec_preference_bluetooth_no_item:I

    if-ne v7, v8, :cond_9

    .line 483
    sget v6, Lcom/android/settings/R$id;->LinearLayout_bt:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    .line 484
    sget v6, Lcom/android/settings/R$id;->main_text:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 485
    sget v6, Lcom/android/settings/R$id;->secondary_text:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v7, 0x8

    .line 487
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 491
    iget-object v6, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 492
    iget-object v6, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$dimen;->bluetooth_no_nearby_dialog_text_margin_left_right:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 493
    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$dimen;->bluetooth_no_nearby_dialog_text_margin_top_bottom:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 494
    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$dimen;->bluetooth_no_nearby_dialog_help_text_margin_top:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 496
    iget-object v8, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 497
    invoke-virtual {v8, v6, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 498
    iget-object v6, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    iget-object v6, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    sget v7, Lcom/android/settings/R$style;->BluetoothNoItemDialogText:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 501
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    move v7, v12

    .line 503
    :goto_2
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 504
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v6, v8

    iget v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDividerHeight:I

    sub-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 507
    :cond_4
    invoke-virtual {v2, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 510
    :cond_5
    iget-object v6, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 511
    iget-object v6, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 512
    iget-object v6, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    const/16 v6, 0xf

    .line 514
    invoke-virtual {v2, v6}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 515
    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 519
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 520
    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-nez v6, :cond_7

    .line 521
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 523
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getTetheredDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 525
    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 526
    iget-object v6, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->sec_bluetooth_no_tethered_devices:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_8
    const/16 v6, 0x8

    .line 529
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 533
    :cond_9
    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 535
    sget v7, Lcom/android/settings/R$id;->subheader_layout:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_a

    .line 538
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 539
    iget-object v7, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 543
    :cond_a
    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 544
    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$dimen;->bluetooth_scandialog_preference_layout_padding_start_end:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 545
    iget-object v8, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v8

    .line 546
    iget-object v9, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v9

    .line 547
    iget-object v10, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v10, v7, v8, v7, v9}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 549
    :cond_b
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 551
    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isAvailableDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 552
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->preference_category_description:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 553
    iget-object v7, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 555
    :cond_d
    iget-object v6, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 557
    iget-object v6, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuideGroupMessage:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    .line 561
    :cond_e
    iget-object v6, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v6, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 563
    sget v6, Lcom/android/settings/R$id;->progress_category_divider:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 566
    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->isVisibleDivider()Z

    move-result v7

    if-eqz v7, :cond_f

    move v15, v12

    goto :goto_3

    :cond_f
    const/16 v15, 0x8

    :goto_3
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 572
    :cond_10
    :goto_4
    iget-object v6, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v6, :cond_11

    .line 573
    new-instance v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$2;

    invoke-direct {v7, v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;Landroid/view/ViewGroup;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 585
    :cond_11
    iget-object v4, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_12

    .line 586
    new-instance v6, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$3;

    invoke-direct {v6, v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;Landroid/view/ViewGroup;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 597
    :cond_12
    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isTetheredDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1c

    const/4 v1, 0x3

    .line 598
    invoke-virtual {v2, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 599
    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto/16 :goto_8

    .line 601
    :cond_13
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    if-eqz v5, :cond_1b

    .line 602
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    .line 603
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getCastPreferenceCount()I

    move-result v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getLayoutResource()I

    move-result v2

    if-eqz v2, :cond_14

    .line 605
    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getLayoutResource()I

    move-result v0

    invoke-virtual {v4, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_8

    .line 608
    :cond_14
    sget v2, Lcom/android/settings/R$layout;->sec_bluetooth_category_layout:I

    invoke-virtual {v4, v2, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 610
    iget-object v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 611
    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 613
    iget-object v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v7, 0x8

    goto :goto_5

    .line 615
    :cond_15
    sget v4, Lcom/android/settings/R$id;->category_divider:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 618
    :goto_5
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChildrenCount(I)I

    move-result v1

    if-nez v1, :cond_16

    .line 619
    iput-boolean v12, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsDisplayCastGroup:Z

    .line 620
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_16
    const/4 v1, 0x1

    .line 622
    iput-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsDisplayCastGroup:Z

    .line 623
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 625
    :goto_6
    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;

    invoke-direct {v1, v14}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder-IA;)V

    .line 626
    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 627
    sget v4, Lcom/android/settings/R$id;->subheader_layout:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    .line 628
    iget-object v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 629
    iget-object v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/android/settings/R$dimen;->bluetooth_scandialog_preference_layout_padding_start_end:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 630
    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v8

    .line 631
    iget-object v9, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v9

    .line 632
    iget-object v10, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v10, v4, v8, v4, v9}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 634
    :cond_17
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 635
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->preference_category_description:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 636
    iget-object v6, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v4, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 639
    sget v4, Lcom/android/settings/R$id;->progress_category_divider:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 641
    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->isVisibleDivider()Z

    move-result v5

    if-eqz v5, :cond_18

    move v15, v12

    goto :goto_7

    :cond_18
    move v15, v7

    :goto_7
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_19
    iget-object v4, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v4, :cond_1a

    .line 645
    new-instance v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$4;

    invoke-direct {v5, v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$4;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;Landroid/view/ViewGroup;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 656
    :cond_1a
    iget-object v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1c

    .line 657
    new-instance v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$5;

    invoke-direct {v4, v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$5;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_8

    :cond_1b
    move-object/from16 v2, p3

    .line 673
    :cond_1c
    :goto_8
    invoke-virtual {v2, v12}, Landroid/view/View;->setFocusable(Z)V

    .line 674
    invoke-virtual {v2, v12}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-object v2
.end method

.method public getGuidePreferenceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object p0
.end method

.method public getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 3

    const/4 v0, 0x0

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 268
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectedDeviceList()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object p0
.end method

.method public getSortedCastFlatCount(ILcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)I
    .locals 0

    .line 945
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroupPosition(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)I

    move-result p2

    invoke-static {p2, p1}, Landroid/widget/SemExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide p1

    .line 946
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result p0

    return p0
.end method

.method public getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I
    .locals 0

    .line 219
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroupPosition(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result p2

    invoke-static {p2, p1}, Landroid/widget/SemExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide p1

    .line 220
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result p0

    return p0
.end method

.method public getTetheredDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 3

    const/4 v0, 0x0

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 258
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isTetheredDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAvailableDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 1

    .line 231
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->bluetooth_preference_found_devices:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 1

    .line 224
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_preference_paired_devices:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTetheredDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 1

    .line 238
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->bt_tether_preference_tethered_device_list:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 181
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeAll()V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeCastPreference(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V
    .locals 1

    .line 926
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getCastDevicePreferenceGroup()Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getCastDevicePreferenceGroup()Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->remove(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V

    .line 929
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeCastPreferenceGroup(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)V
    .locals 0

    .line 922
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->remove(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removePreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-void
.end method

.method public setGuideGroupMessage(Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuideGroupMessage:Ljava/lang/String;

    .line 300
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setGuidePreferenceGroup()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_1

    .line 305
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isDialogType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    sget v1, Lcom/android/settings/R$layout;->sec_preference_bt_visibility:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    sget v1, Lcom/android/settings/R$layout;->sec_preference_bt_visibility_dialog:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    .line 314
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuideGroupMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGuidePreferenceGroup() :: mGuideGroupMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuideGroupMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothExpListAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNoDeviceLayout(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    goto :goto_0

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removePreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    .line 291
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of p1, p1, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-eqz p1, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public sortPreferenceGroup()V
    .locals 2

    const/4 v0, 0x0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 167
    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    .line 172
    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getCastPreferenceList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public declared-synchronized updateDeviceListGroup(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->sortPreferenceGroup()V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
