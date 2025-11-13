.class public Lcom/samsung/android/settings/wifi/WifiSettingsListController;
.super Ljava/lang/Object;
.source "WifiSettingsListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static DBG_LISTANIMAION:Z

.field public static final PRIORITY_HINTCARD:[Ljava/lang/String;


# instance fields
.field private mAutoHotspotCategory:Landroid/widget/TextView;

.field private mAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

.field private mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

.field private mAutoWifiTextView:Landroid/widget/TextView;

.field private mAvailableCategory:Landroid/widget/TextView;

.field private mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

.field private mBottomArea:Landroid/view/View;

.field private mCloseBtn:Landroid/widget/ImageView;

.field private mConnectedCategory:Landroid/widget/TextView;

.field private mConnectedList:Landroidx/recyclerview/widget/RecyclerView;

.field private mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

.field private mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContentLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mEasySetupCategory:Landroid/widget/TextView;

.field private mEasySetupList:Landroidx/recyclerview/widget/RecyclerView;

.field private mEasySetupListAdapter:Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mHandler:Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;

.field private mHintCardContainer:Landroid/view/View;

.field private mInPickerDialog:Z

.field private mInSetupWizardActivity:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsListVisible:Z

.field private mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

.field private mMcfAutoHotspotCategory:Landroid/widget/TextView;

.field private mMcfAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

.field private mMcfAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

.field private mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mSAScreenId:Ljava/lang/String;

.field private mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mWifiEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;


# direct methods
.method public static synthetic $r8$lambda$V6N5QVAJv8RqPv1hGaDL1IE4u4I(Lcom/samsung/android/settings/wifi/WifiSettingsListController;Ljava/lang/String;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->lambda$createHintCard$1(Ljava/lang/String;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b10wOSPDMreZM11sAvdrcNQpElY(Lcom/samsung/android/settings/wifi/WifiSettingsListController;Ljava/lang/String;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->lambda$createHintCard$0(Ljava/lang/String;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAvailableList(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListAdapter(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)Lcom/samsung/android/settings/wifi/AvailableListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSAScreenId(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSAScreenId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTracker(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)Lcom/android/wifitrackerlib/WifiPickerTracker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 62
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->DBG:Z

    const/4 v0, 0x1

    .line 63
    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->DBG_LISTANIMAION:Z

    const-string v0, "1"

    .line 67
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->PRIORITY_HINTCARD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Ljava/util/ArrayList;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            "Ljava/util/ArrayList<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler-IA;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHandler:Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;

    .line 118
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 120
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiEntries:Ljava/util/ArrayList;

    .line 121
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSAScreenId:Ljava/lang/String;

    .line 122
    iput-object p5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private closeCardAndShowNext(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHintCardContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHintCardContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 721
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->removeHintDB(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 722
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->showHintCard()V

    return-void
.end method

.method private createHintCard(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 726
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settings/R$layout;->sec_wifi_hintcard:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHintCardContainer:Landroid/view/View;

    const/16 v1, 0xf

    .line 729
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 731
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHintCardContainer:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->autowifi_hintcard_body_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoWifiTextView:Landroid/widget/TextView;

    .line 732
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_use_mobile_data_hintcard:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoWifiTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 734
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoWifiTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSettingsListController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHintCardContainer:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->autowifi_hintcard_close_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mCloseBtn:Landroid/widget/ImageView;

    .line 746
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSettingsListController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContentLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHintCardContainer:Landroid/view/View;

    invoke-virtual {p1, p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private static getDbString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 660
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sem_what_hintcard_have_to_be_shown"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHintListToBeShown(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 665
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->getDbString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dbString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.VI"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    .line 667
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "1001"

    .line 672
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "1"

    .line 673
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 674
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getHintToBeShownFirst(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 684
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->PRIORITY_HINTCARD:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 685
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 686
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 687
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 688
    invoke-static {p0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    goto :goto_1

    :cond_2
    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private isHideListSidePadding()Z
    .locals 1

    .line 603
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$createHintCard$0(Ljava/lang/String;Ljava/util/List;Landroid/view/View;)V
    .locals 3

    .line 735
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->sendCardToGraveyard(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 736
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$WifiSwitchToMobileDataActivity"

    .line 737
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 738
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "hint_card"

    const/4 v1, 0x1

    .line 739
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "hint_card_timestamp"

    invoke-virtual {p3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 741
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 742
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->closeCardAndShowNext(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$createHintCard$1(Ljava/lang/String;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    .line 747
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->sendCardToGraveyard(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 748
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->closeCardAndShowNext(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static removeHintDB(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 713
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 714
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "["

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 715
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "sem_what_hintcard_have_to_be_shown"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static sendCardToGraveyard(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 701
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "1001"

    .line 703
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "["

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 708
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "sem_what_hintcard_have_to_be_shown"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setEnableRefreshLayout(Z)V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-nez p0, :cond_0

    const-string p0, "WifiSettings.VI"

    const-string p1, "setEnableRefreshLayout - refresh layout is null"

    .line 277
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 281
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 283
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private setPickerDialogMode()V
    .locals 3

    const-string v0, "WifiSettings.VI"

    const-string v1, "setPickerDialogMode() - Triggered"

    .line 607
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedCategory:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScrollIndicators(I)V

    .line 614
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setRoundedCorner(Landroid/view/View;)V
    .locals 2

    .line 575
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez v0, :cond_0

    const/16 v0, 0xf

    .line 576
    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 577
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    .line 578
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 577
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_0
    return-void
.end method

.method private setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 583
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    .line 587
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 588
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    .line 589
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 588
    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 584
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    return-void
.end method

.method private setSetupWizardMode()V
    .locals 2

    const-string v0, "WifiSettings.VI"

    const-string v1, "setSetupWizardMode() - Triggered"

    .line 593
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedCategory:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 599
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setVisibleEasySetupList(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 304
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez p1, :cond_1

    .line 305
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupCategory:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupCategory:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showHintCard()V
    .locals 4

    .line 757
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->getHintListToBeShown(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 759
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->getHintToBeShownFirst(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hintType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hintList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiSettings.VI"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHintCardContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 762
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 763
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHintCardContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 764
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContentLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHintCardContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 767
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->createHintCard(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public configureConnected(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    .line 315
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedCategory:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->updateItems(Ljava/util/List;)V

    return-void
.end method

.method public configureEasySetup(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;)V"
        }
    .end annotation

    .line 342
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 345
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setVisibleEasySetupList(Z)V

    .line 346
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupListAdapter:Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->updateItems(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZ)Landroid/view/View;
    .locals 8

    .line 128
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInflater:Landroid/view/LayoutInflater;

    .line 129
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContainer:Landroid/view/ViewGroup;

    .line 130
    iput-boolean p5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    .line 131
    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    .line 133
    sget p3, Lcom/android/settings/R$layout;->sec_wifi_settings:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 134
    sget p2, Lcom/android/settings/R$id;->wifi_settings_nested_scroll_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 135
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setRoundedCorner(Landroid/view/View;)V

    .line 136
    sget p2, Lcom/android/settings/R$id;->empty:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEmptyView:Landroid/widget/TextView;

    .line 137
    sget p2, Lcom/android/settings/R$id;->refresh:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 139
    sget p3, Lcom/android/settings/R$color;->sec_wifi_SwipeRefreshLayout_progress_bg_color:I

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 140
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->seslSetRefreshOnce(Z)V

    .line 141
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)V

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 154
    sget p2, Lcom/android/settings/R$id;->auto_hotspot_network_category:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    .line 155
    sget p2, Lcom/android/settings/R$id;->auto_hotspot_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    .line 156
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 157
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 158
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    if-nez p2, :cond_0

    .line 159
    new-instance p2, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, v0, v1, p5}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Z)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    .line 161
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 162
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 163
    sget p2, Lcom/android/settings/R$string;->wifi_ap_smart_tethering_title:I

    .line 164
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    sget p2, Lcom/android/settings/R$string;->wifi_ap_smart_tethering_title_jpn:I

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 171
    sget p2, Lcom/android/settings/R$id;->mcf_auto_hotspot_network_category:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotCategory:Landroid/widget/TextView;

    .line 172
    sget p2, Lcom/android/settings/R$id;->mcf_auto_hotspot_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    .line 173
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 174
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 175
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    if-nez p2, :cond_2

    .line 176
    new-instance p2, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, v0, v1, p5}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Z)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    .line 177
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    invoke-virtual {p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 178
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 182
    sget p2, Lcom/android/settings/R$id;->connected_network_category:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedCategory:Landroid/widget/TextView;

    .line 183
    sget p2, Lcom/android/settings/R$id;->connected_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedList:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    new-instance p5, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-direct {p5, v0, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 185
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    if-nez p2, :cond_3

    .line 186
    new-instance p2, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedList:Landroidx/recyclerview/widget/RecyclerView;

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->isHideListSidePadding()Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSAScreenId:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mFragment:Landroidx/fragment/app/Fragment;

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;ZLjava/lang/String;ZLandroidx/fragment/app/Fragment;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    .line 189
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    invoke-virtual {p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 190
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 193
    sget p2, Lcom/android/settings/R$id;->available_network_category:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableCategory:Landroid/widget/TextView;

    .line 194
    sget p2, Lcom/android/settings/R$id;->twlist:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    .line 195
    new-instance p5, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-direct {p5, v0, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 196
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p5, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p5}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 197
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    if-nez p2, :cond_4

    .line 198
    new-instance p2, Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiEntries:Ljava/util/ArrayList;

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->isHideListSidePadding()Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSAScreenId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mFragment:Landroidx/fragment/app/Fragment;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;ZLjava/lang/String;ZLandroidx/fragment/app/Fragment;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    .line 201
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-virtual {p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 202
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 204
    sget p2, Lcom/android/settings/R$id;->easy_setup_category:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupCategory:Landroid/widget/TextView;

    .line 205
    sget p2, Lcom/android/settings/R$id;->easy_setup_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupList:Landroidx/recyclerview/widget/RecyclerView;

    .line 206
    new-instance p5, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-direct {p5, v0, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 207
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupListAdapter:Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

    if-nez p2, :cond_5

    .line 208
    new-instance p2, Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiEntries:Ljava/util/ArrayList;

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->isHideListSidePadding()Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSAScreenId:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/wifi/EasySetupListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;ZLjava/lang/String;Landroidx/fragment/app/Fragment;Lcom/android/wifitrackerlib/WifiPickerTracker;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupListAdapter:Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

    .line 211
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupListAdapter:Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 212
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 214
    sget p2, Lcom/android/settings/R$id;->bottom_area:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mBottomArea:Landroid/view/View;

    .line 216
    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-eqz p2, :cond_7

    .line 217
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 218
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEmptyView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$color;->ssw_wifi_emptyview_bg_tablet:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 220
    :cond_6
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEmptyView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$color;->sec_lock_suw_background_color:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 222
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setSetupWizardMode()V

    .line 224
    :cond_7
    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-eqz p2, :cond_8

    .line 225
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setPickerDialogMode()V

    .line 229
    :cond_8
    sget p2, Lcom/android/settings/R$id;->content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContentLayout:Landroid/widget/LinearLayout;

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->showHintCard()V

    return-object p1
.end method

.method public destroyAutoHotspot()V
    .locals 2

    const-string v0, "WifiSettings.VI.AutoHotspot"

    const-string v1, "destroyAutoHotspot() - Triggered"

    .line 480
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->removeAll()V

    :cond_1
    return-void
.end method

.method public destroyEasySetup()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupCategory:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupListAdapter:Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->removeAll()V

    return-void
.end method

.method public destroyMcfAutoHotspot()V
    .locals 2

    const-string v0, "WifiSettings.VI.MCFAutoHotspot"

    const-string v1, "destroyMcfAutoHotspot() - Triggered"

    .line 641
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 643
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 644
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->removeAll()V

    :cond_0
    return-void
.end method

.method public distroyConnected()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedCategory:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->removeAll()V

    return-void
.end method

.method public forceScrollToTop()V
    .locals 1

    .line 264
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    return-void
.end method

.method public getAvailableAPCount()I
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->getAvailableCount()I

    move-result p0

    return p0
.end method

.method public getConnectedAPCount()I
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getConnectedListAdapter()Lcom/samsung/android/settings/wifi/ConnectedListAdapter;
    .locals 0

    .line 555
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    return-object p0
.end method

.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEmptyView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getListAdapter()Lcom/samsung/android/settings/wifi/AvailableListAdapter;
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    return-object p0
.end method

.method public removeAll()V
    .locals 2

    const-string v0, "WifiSettings.VI"

    const-string v1, "removeAll() - Triggered"

    .line 520
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedCategory:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->removeAll()V

    .line 523
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->removeAll()V

    .line 525
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->removeAll()V

    .line 529
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->removeAll()V

    return-void
.end method

.method public setRestrictionView()V
    .locals 2

    const-string v0, "WifiSettings.VI"

    const-string v1, "setRestrictionView"

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setEnableRefreshLayout(Z)V

    .line 238
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setVisibleAvailableList(Z)V

    return-void
.end method

.method public setVisibleAvailableList(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 290
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mBottomArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mBottomArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mIsListVisible:Z

    return-void
.end method

.method public setWifiManager(Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public setWifiTracker(Lcom/android/wifitrackerlib/WifiPickerTracker;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    return-void
.end method

.method public updateAutoHotspotList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "WifiSettings.VI.AutoHotspot"

    const-string v1, "updateAutoHotspotList() - Triggered"

    .line 457
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 458
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAutoHotspotList() - bleApList count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->updateItems(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "updateAutoHotspotList() - bleApList is null or size is 0"

    .line 459
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyAutoHotspot()V

    :goto_1
    return-void
.end method

.method public updateEmptyView(Z)V
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmptyView - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", AvailableAPCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->getAvailableAPCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ConnectedAPCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->getConnectedAPCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.VI"

    .line 248
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setEnableRefreshLayout(Z)V

    if-nez p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEmptyView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->removeAll()V

    .line 255
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setVisibleAvailableList(Z)V

    .line 256
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setVisibleEasySetupList(Z)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEmptyView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 259
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setVisibleAvailableList(Z)V

    :goto_0
    return-void
.end method

.method public updateMcfAutoHotspotList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "WifiSettings.VI.MCFAutoHotspot"

    const-string v1, "updateMcfAutoHotspotList() - Triggered"

    .line 619
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 620
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMcfAutoHotspotList() - bleApList count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotCategory:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->updateItems(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "updateMcfAutoHotspotList() - bleApList is null or size is 0"

    .line 621
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->destroyMcfAutoHotspot()V

    :goto_1
    return-void
.end method

.method public updateWithAnimation(Lcom/android/wifitrackerlib/WifiEntry;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;Z)V"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHandler:Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->clearPendingList()V

    .line 323
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "WifiSettings.VI"

    if-nez v0, :cond_0

    const-string p1, "update empty list"

    .line 324
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHandler:Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->removeAll()V

    goto :goto_1

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->getAvailableAPCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "first update newList size:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->updateItems(Ljava/util/List;)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHandler:Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->updateList(Ljava/util/List;Z)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 332
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->deleteItem(Lcom/android/wifitrackerlib/WifiEntry;)I

    .line 335
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mIsListVisible:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 336
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->updateEmptyView(Z)V

    :cond_3
    :goto_1
    return-void
.end method
