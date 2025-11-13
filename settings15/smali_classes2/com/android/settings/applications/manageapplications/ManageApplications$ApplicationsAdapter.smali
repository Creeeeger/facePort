.class public final Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Landroid/widget/SectionIndexer;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# static fields
.field public static final EMPTY_SECTIONS:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;


# instance fields
.field public mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

.field public final mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

.field public mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public final mContext:Landroidx/fragment/app/FragmentActivity;

.field public mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public mEntries:Ljava/util/ArrayList;

.field public mEntriesForSearch:Ljava/util/ArrayList;

.field public final mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

.field public mHasEnabledEntry:Z

.field public mHasReceivedBridgeCallback:Z

.field public mHasReceivedLoadEntries:Z

.field public mHeaderButtonVisible:Z

.field public mHighlightTargetPosition:I

.field public mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

.field public mIsEnable:Z

.field public mLastIndex:I

.field public mLastSortMode:I

.field public mLinkedDataStorage:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field public final mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field public final mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

.field mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

.field public mOriginalEntries:Ljava/util/ArrayList;

.field public mPositionToSectionIndex:[I

.field public mPrefVisible:Z

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field public mResumed:Z

.field public mSamsungMediaProviderUid:I

.field public mSearchFilter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

.field public mSections:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

.field public final mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field public mSortByDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mState:Lcom/android/settingslib/applications/ApplicationsState;

.field public mSummaryRes:I

.field public final mUseFooter:Z

.field public final mUseHeader:Z

.field public final mUsePref:Z

.field public mWhichSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    sput-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v10, 0x0

    iput v10, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    iput v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    const/4 v1, -0x2

    iput v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHighlightTargetPosition:I

    sget-object v1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    iput-object v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    const/4 v11, 0x1

    iput-boolean v11, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIsEnable:Z

    iput v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSummaryRes:I

    iput v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSamsungMediaProviderUid:I

    invoke-virtual {v7, v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iput-object v2, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v0, 0x0

    invoke-virtual {v2, v7, v0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    const-string v4, "com.android.settings"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2d

    iput v3, v1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mFlags:I

    goto :goto_0

    :cond_0
    const/16 v3, 0x2f

    iput v3, v1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mFlags:I

    :goto_0
    iput-object v8, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    new-instance v1, Lcom/android/settings/widget/LoadingViewController;

    iget-object v3, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    iget-object v4, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    invoke-direct {v1, v3, v4, v5}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    iput-object v12, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v12}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-object/from16 v1, p3

    iput-object v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-static {v12}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget v3, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v10, 0x8

    if-ne v3, v11, :cond_1

    new-instance v3, Lcom/android/settings/applications/AppStateNotificationBridge;

    iget-object v1, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iget-object v0, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUserManager:Landroid/os/UserManager;

    iget-object v6, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v17, v1

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v11, v3

    move-object/from16 v3, p0

    move-object/from16 v4, v17

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/AppStateNotificationBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object v11, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    :goto_1
    const/16 v1, 0xb

    :goto_2
    const/16 v4, 0xc

    :goto_3
    const/16 v5, 0xd

    goto/16 :goto_4

    :cond_1
    if-ne v3, v15, :cond_2

    new-instance v0, Lcom/android/settings/applications/AppStateUsageBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateUsageBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_1

    :cond_2
    if-ne v3, v14, :cond_3

    invoke-virtual {v1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->refreshList()V

    new-instance v0, Lcom/android/settings/applications/AppStatePowerBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStatePowerBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_1

    :cond_3
    if-ne v3, v13, :cond_4

    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_1

    :cond_4
    const/4 v1, 0x7

    if-ne v3, v1, :cond_5

    new-instance v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_1

    :cond_5
    if-ne v3, v10, :cond_6

    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_1

    :cond_6
    const/16 v1, 0xa

    if-ne v3, v1, :cond_7

    new-instance v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_1

    :cond_7
    const/16 v1, 0xb

    if-ne v3, v1, :cond_8

    new-instance v0, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_2

    :cond_8
    const/16 v4, 0xc

    if-ne v3, v4, :cond_9

    new-instance v0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_3

    :cond_9
    const/16 v5, 0xd

    if-ne v3, v5, :cond_a

    new-instance v0, Lcom/android/settings/applications/AppStateMediaManagementAppsBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateMediaManagementAppsBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_4

    :cond_a
    const/16 v6, 0xe

    if-ne v3, v6, :cond_b

    new-instance v0, Lcom/android/settings/applications/AppStateLocaleBridge;

    iget-object v3, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUserManager:Landroid/os/UserManager;

    invoke-direct {v0, v12, v2, v7, v3}, Lcom/android/settings/applications/AppStateLocaleBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Landroid/os/UserManager;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_4

    :cond_b
    const/16 v6, 0xf

    if-ne v3, v6, :cond_c

    new-instance v0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_4

    :cond_c
    const/16 v6, 0x10

    if-ne v3, v6, :cond_d

    new-instance v0, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_4

    :cond_d
    const/16 v6, 0x11

    if-ne v3, v6, :cond_e

    new-instance v0, Lcom/android/settings/applications/AppStateClonedAppsBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateClonedAppsBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_4

    :cond_e
    const/16 v6, 0x12

    if-ne v3, v6, :cond_f

    new-instance v0, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_4

    :cond_f
    const/16 v6, 0x13

    if-ne v3, v6, :cond_10

    new-instance v0, Lcom/android/settings/applications/AppStateTurnScreenOnBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateTurnScreenOnBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_4

    :cond_10
    const/16 v6, 0x68

    if-ne v3, v6, :cond_11

    new-instance v0, Lcom/samsung/android/settings/applications/AppStateManageFullScreenIntentsBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/samsung/android/settings/applications/AppStateManageFullScreenIntentsBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_4

    :cond_11
    const/16 v6, 0x69

    if-ne v3, v6, :cond_12

    new-instance v0, Lcom/samsung/android/settings/applications/AppStateMediaRoutingAppsBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/samsung/android/settings/applications/AppStateMediaRoutingAppsBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_4

    :cond_12
    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    :goto_4
    if-eqz v9, :cond_13

    const-string v0, "state_last_scroll_index"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    :cond_13
    iget v0, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eq v0, v13, :cond_15

    if-eq v0, v14, :cond_15

    if-eq v0, v5, :cond_15

    if-eq v0, v4, :cond_15

    if-eq v0, v15, :cond_15

    if-eq v0, v1, :cond_15

    if-eq v0, v10, :cond_15

    const/16 v1, 0xa

    if-eq v0, v1, :cond_15

    const/16 v1, 0xe

    if-eq v0, v1, :cond_15

    const/16 v1, 0x67

    if-eq v0, v1, :cond_15

    const/16 v1, 0x68

    if-eq v0, v1, :cond_15

    const/16 v1, 0x69

    if-ne v0, v1, :cond_14

    goto :goto_5

    :cond_14
    const/4 v1, 0x0

    goto :goto_6

    :cond_15
    :goto_5
    const/4 v1, 0x1

    :goto_6
    iput-boolean v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseHeader:Z

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    if-nez v0, :cond_16

    move v2, v1

    goto :goto_7

    :cond_16
    const/4 v2, 0x0

    :goto_7
    iput-boolean v2, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    iput-boolean v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPrefVisible:Z

    if-ne v0, v10, :cond_17

    iput-boolean v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHeaderButtonVisible:Z

    :cond_17
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public filterSearch(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSearchFilter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSearchFilter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOriginalEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const-string p0, "ManageApplications"

    const-string p1, "Apps haven\'t loaded completely yet, so nothing can be filtered"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSearchFilter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

    invoke-virtual {p0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getComparatorByLastSortMode()Ljava/util/Comparator;
    .locals 3

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    if-ne p0, v2, :cond_0

    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

    goto :goto_0

    :cond_0
    if-ne p0, v1, :cond_1

    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->LAST_USED_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    if-ne v0, p0, :cond_4

    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->LAST_UPDATED_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

    goto :goto_0

    :cond_4
    const p0, 0x7f0a0eae

    if-ne v0, p0, :cond_5

    sget-object p0, Lcom/android/settings/applications/AppStateNotificationBridge;->RECENT_NOTIFICATION_COMPARATOR:Lcom/android/settings/applications/AppStateNotificationBridge$7;

    goto :goto_0

    :cond_5
    const p0, 0x7f0a0ead

    if-ne v0, p0, :cond_6

    sget-object p0, Lcom/android/settings/applications/AppStateNotificationBridge;->FREQUENCY_NOTIFICATION_COMPARATOR:Lcom/android/settings/applications/AppStateNotificationBridge$7;

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$1;

    :goto_0
    return-object p0
.end method

.method public final getContentDescriptionWithSwitch(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f1409b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f142e1f

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f142e1e

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const p2, 0x7f1427d3

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_1
    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    add-int/2addr v1, p0

    return v1
.end method

.method public final getItemId(I)J
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->id:J

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseHeader:Z

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    if-eqz v5, :cond_2

    if-nez p1, :cond_2

    const/16 p0, 0x9

    return p0

    :cond_2
    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v6, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v2

    :goto_2
    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    if-eqz p0, :cond_5

    add-int/lit8 v6, v6, 0x1

    :cond_5
    sub-int v6, v0, v6

    const/4 v7, 0x5

    if-ne v6, v2, :cond_a

    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    if-eq p1, v2, :cond_9

    :cond_7
    if-nez v4, :cond_8

    if-nez v5, :cond_8

    if-eqz p0, :cond_b

    :cond_8
    if-nez p1, :cond_b

    :cond_9
    const/16 p0, 0x8

    return p0

    :cond_a
    if-nez v6, :cond_b

    return v7

    :cond_b
    const/4 v6, 0x6

    if-nez v4, :cond_c

    if-eqz v5, :cond_d

    :cond_c
    if-ne p1, v2, :cond_d

    return v6

    :cond_d
    if-nez v4, :cond_e

    if-nez v5, :cond_e

    if-nez p1, :cond_e

    return v6

    :cond_e
    if-eqz p0, :cond_f

    if-eqz v1, :cond_f

    return v7

    :cond_f
    sub-int/2addr v0, p0

    sub-int/2addr v0, v2

    if-ne v0, p1, :cond_10

    const/4 p0, 0x7

    return p0

    :cond_10
    return v3
.end method

.method public final getPositionForSection(I)I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    aget-object p0, p0, p1

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;->position:I

    return p0
.end method

.method public final getSectionForPosition(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pos="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ManageApplications"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "section length="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    array-length v1, v1

    invoke-static {p1, v1, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    aget p0, p0, p1

    return p0
.end method

.method public final getSections()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    return-object p0
.end method

.method public final hightlightTargetApp(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightTargetPackageName:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightTargetPackageUid:I

    iget-object v2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHighlightTargetPosition:I

    if-ltz v3, :cond_0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUpdatedListCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUpdatedListCount:I

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;ILcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    const-wide/16 v2, 0x258

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda3;

    const/4 v0, 0x4

    invoke-direct {p2, v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x2ee

    invoke-virtual {p0, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final logAction(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$100(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return-void
.end method

.method public final onAllSizesComputed()V
    .locals 2

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    :cond_0
    return-void
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mScrollState:I

    iput-object p0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iput-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mClassName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    const/16 v3, 0x69

    const/16 v4, 0xc

    const/4 v5, 0x5

    const/16 v6, 0x68

    const/16 v7, 0xb

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-nez v1, :cond_f

    iget-boolean v10, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseHeader:Z

    if-eqz v10, :cond_f

    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v10, 0x6

    if-ne v1, v10, :cond_0

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f1402f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_0
    if-ne v1, v5, :cond_1

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f14245a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1
    const/16 v5, 0xd

    if-ne v1, v5, :cond_2

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f14176b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    if-ne v1, v4, :cond_3

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f1402e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x4

    if-ne v1, v4, :cond_4

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f143080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    if-ne v1, v7, :cond_5

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f1420a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    if-ne v1, v8, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v3, 0x7f14122e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v3, 0x7f14122f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-boolean v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHeaderButtonVisible:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v3, 0x7f14249a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$2;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$2;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;I)V

    iget-object v4, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasEnabledEntry:Z

    iget-object v1, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    if-nez v0, :cond_7

    iget-object v0, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_1

    :cond_7
    iget-object v0, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_1

    :cond_8
    iget-object v0, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_9
    const/16 v4, 0xa

    if-ne v1, v4, :cond_a

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f140927

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_a
    const/16 v4, 0x67

    if-ne v1, v4, :cond_b

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f142561

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_b
    const/16 v4, 0xe

    if-ne v1, v4, :cond_c

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f140c2b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_c
    if-ne v1, v6, :cond_d

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f142656

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_d
    if-ne v1, v3, :cond_e

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f1402f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_1
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_12

    :cond_f
    const/4 v10, 0x1

    if-nez v1, :cond_17

    iget-boolean v11, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    if-eqz v11, :cond_17

    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-boolean v3, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsPageLaunchedBySearch:Z

    const v4, 0x7f0a04bf

    const v5, 0x7f0a0ce5

    if-eqz v3, :cond_12

    iget-object v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightKey:Ljava/lang/String;

    const-string v3, "app_settings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v6, 0x41a

    const-wide/16 v11, 0x384

    if-eqz v1, :cond_10

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda3;

    const/4 v13, 0x0

    invoke-direct {v3, v13, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3, v11, v12}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda3;

    const/4 v11, 0x1

    invoke-direct {v3, v11, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3, v6, v7}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_10
    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightKey:Ljava/lang/String;

    const-string v3, "default_apps"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda3;

    const/4 v13, 0x2

    invoke-direct {v3, v13, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3, v11, v12}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda3;

    const/4 v11, 0x3

    invoke-direct {v3, v11, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3, v6, v7}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    :goto_2
    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iput-boolean v9, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsPageLaunchedBySearch:Z

    :cond_12
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$2;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$2;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$2;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$2;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a0ea3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$2;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$2;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a04c0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPrefVisible:Z

    if-eqz v3, :cond_13

    move v3, v9

    goto :goto_3

    :cond_13
    move v3, v8

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a0ce6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPrefVisible:Z

    if-eqz v3, :cond_14

    move v8, v9

    :cond_14
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a0637

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterEmptyView:Landroid/view/View;

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0113

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_30

    iget-object v2, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v3, 0x7f1420af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15

    iget-object v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v10

    goto :goto_4

    :cond_15
    move v3, v9

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v4, 0x7f1420ae

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v4, 0x7f141c9b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    :cond_16
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    :cond_17
    iget v11, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    if-ne v11, v5, :cond_18

    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$smisSupportedRelativeLink(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-eqz v1, :cond_30

    iget-object v2, v1, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v2, v1, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mParentView:Landroid/view/View;

    const v3, 0x7f0a08ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f142670

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v2}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataStorage:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    goto/16 :goto_12

    :cond_18
    iget-object v5, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2b

    iget-object v5, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v5

    :try_start_0
    iget-object v11, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_1f

    iget-object v11, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v11, v5}, Lcom/android/settingslib/applications/ApplicationsState;->ensureLabelDescription(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    sget-object v11, Lcom/android/settingslib/applications/AppUtils;->mSearchKeyword:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1a

    iget-object v11, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object v12, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-static {v11, v5, v12}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateSearchKeywordColorSpan(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/widget/TextView;)Landroid/text/SpannableString;

    move-result-object v11

    iget-object v12, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    iget-object v13, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_19

    goto :goto_5

    :cond_19
    iget-object v11, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_1a
    iget-object v11, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v12, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    if-nez v11, :cond_1b

    goto :goto_5

    :cond_1b
    iget-object v13, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1c

    goto :goto_5

    :cond_1c
    iget-object v11, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_5
    new-instance v11, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0, v5, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    invoke-static {v11}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v2, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v0, v2, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object v11, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v11}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateDisableView(Landroid/content/pm/ApplicationInfo;)V

    iget-object v11, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    if-eqz v12, :cond_1d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v13, 0x7f1409b2

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_1d
    iget-object v12, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v12, :cond_1e

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v12

    if-nez v12, :cond_1e

    iget-object v12, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v12

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getContentDescriptionWithSwitch(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->requestLayout()V

    :cond_1e
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->hightlightTargetApp(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    :cond_1f
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v11, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v12, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v12, v12, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const-string v13, "Disabled app : "

    const-string v14, "ManageApplications"

    const/16 v15, 0x13

    if-eq v12, v15, :cond_25

    if-eq v12, v6, :cond_24

    if-eq v12, v3, :cond_23

    packed-switch v12, :pswitch_data_0

    packed-switch v12, :pswitch_data_1

    move v3, v10

    goto/16 :goto_9

    :pswitch_0
    if-eqz v11, :cond_26

    iget-object v3, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_26

    iget-object v12, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v12, :cond_26

    :try_start_1
    check-cast v12, Lcom/android/settings/applications/AppStateMediaManagementAppsBridge;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v3, v15}, Lcom/android/settings/applications/AppStateMediaManagementAppsBridge;->createPermissionState(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v11, v14}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :goto_6
    move v3, v9

    goto/16 :goto_9

    :pswitch_1
    if-eqz v11, :cond_26

    iget-object v3, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_26

    iget-object v12, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v12, :cond_26

    :try_start_2
    check-cast v12, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v3, v15}, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;->createPermissionState(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->shouldBeVisible()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_9

    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v11, v14}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_2
    if-eqz v11, :cond_26

    iget-object v3, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_26

    iget-object v12, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v12, :cond_26

    :try_start_3
    check-cast v12, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v3, v15}, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;->getPermissionInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_9

    :catch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v11, v14}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_3
    if-eqz v11, :cond_26

    iget-object v3, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_26

    iget-object v12, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v12, :cond_26

    :try_start_4
    check-cast v12, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v3, v15}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(ILjava/lang/String;)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_9

    :catch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v11, v14}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_4
    if-eqz v11, :cond_26

    iget-object v3, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_26

    iget-object v12, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v12, :cond_26

    :try_start_5
    check-cast v12, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v3, v15}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_9

    :catch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v11, v14}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_5
    if-eqz v11, :cond_26

    iget-object v3, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_26

    iget-object v12, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v12, :cond_26

    const-string v12, "com.samsung.knox.securefolder"

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    :goto_7
    goto/16 :goto_6

    :cond_21
    :try_start_6
    new-instance v3, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-object v12, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    check-cast v12, Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v15, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v15, v10}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v10

    new-instance v12, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-direct {v12, v10}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-direct {v3, v12}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    iget-boolean v10, v3, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    if-eqz v10, :cond_20

    iget-boolean v3, v3, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->controlEnabled:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v3, :cond_20

    goto/16 :goto_8

    :catch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v10, v14}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_6
    if-eqz v11, :cond_26

    iget-object v3, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_26

    iget-object v10, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->hasAllowListByMDM(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_7

    :cond_22
    iget-object v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object v10, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isSysAllowlisted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    iget-object v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object v10, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v10, v11}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isDefaultActiveApp(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_8

    :pswitch_7
    if-eqz v11, :cond_26

    iget-object v3, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_26

    iget-object v10, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v10, :cond_26

    :try_start_7
    check-cast v10, Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v12, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v3, v12}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_9

    :catch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v10, v14}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_23
    if-eqz v11, :cond_26

    iget-object v3, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_26

    iget-object v10, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v10, :cond_26

    :try_start_8
    check-cast v10, Lcom/samsung/android/settings/applications/AppStateMediaRoutingAppsBridge;

    iget-object v12, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v3, v12}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v10, v14}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_24
    if-eqz v11, :cond_26

    iget-object v3, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_26

    iget-object v10, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v10, :cond_26

    :try_start_9
    check-cast v10, Lcom/samsung/android/settings/applications/AppStateManageFullScreenIntentsBridge;

    iget-object v12, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v3, v12}, Lcom/samsung/android/settings/applications/AppStateManageFullScreenIntentsBridge;->getPermissionInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_9

    :catch_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v10, v14}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_25
    if-eqz v11, :cond_26

    iget-object v3, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_26

    iget-object v10, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v10, :cond_26

    :try_start_a
    check-cast v10, Lcom/android/settings/applications/AppStateTurnScreenOnBridge;

    iget-object v12, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v3, v12}, Lcom/android/settings/applications/AppStateTurnScreenOnBridge;->getPermissionInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_9

    :catch_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v10, v14}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_26
    :goto_8
    const/4 v3, 0x1

    :goto_9
    invoke-virtual {v2, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setEnabled(Z)V

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v3, :cond_27

    iget-object v10, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v10, v10, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v10, v8, :cond_27

    iget-boolean v10, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIsEnable:Z

    if-nez v10, :cond_27

    invoke-virtual {v3, v9}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {v2, v9}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setEnabled(Z)V

    iget v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSummaryRes:I

    if-lez v3, :cond_2b

    iget-object v4, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateDisableTextToSummary()V

    invoke-virtual {v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSummaryVisibility()V

    goto/16 :goto_d

    :cond_27
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v10, :cond_29

    if-eqz v3, :cond_29

    iget-object v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v3, v3, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eq v3, v4, :cond_28

    if-eq v3, v6, :cond_28

    if-ne v3, v7, :cond_29

    :cond_28
    iget-object v3, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isSystemUidApp(I)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2, v9}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setEnabled(Z)V

    goto :goto_d

    :cond_29
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v3, :cond_2b

    iget-object v3, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v3, :cond_2b

    iget-object v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v3, v3, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v3, v7, :cond_2b

    iget-object v3, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v4, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSamsungMediaProviderUid:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2a

    goto :goto_b

    :cond_2a
    :try_start_b
    iget-object v4, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.providers.media"

    invoke-virtual {v4, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSamsungMediaProviderUid:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_a

    :catch_a
    const-string v4, "ManageApplications"

    const-string v5, "getMediaUid() : com.samsung.android.providers.media don\'t have uid"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    iget v4, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSamsungMediaProviderUid:I

    :goto_b
    if-ne v3, v4, :cond_2b

    iget-object v3, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2, v9}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setEnabled(Z)V

    goto :goto_d

    :goto_c
    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v0

    :cond_2b
    :goto_d
    iget-object v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v3, v3, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    iget-object v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v3, v3, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(ILjava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_2c

    iget-object v3, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->silentIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    :cond_2c
    iget-object v3, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->silentIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_e
    iget-object v3, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v3, :cond_2d

    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_2e

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_f

    :cond_2d
    const/4 v1, 0x1

    goto :goto_10

    :cond_2e
    :goto_f
    iget-object v1, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_11

    :goto_10
    invoke-virtual {v2, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setEnabled(Z)V

    :cond_2f
    :goto_11
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_30
    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    const/4 v1, 0x5

    const v2, 0x7f060738

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    if-ne p2, v1, :cond_2

    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$smisSupportedRelativeLink(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataStorage:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package_name"

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataStorage:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const-string v3, "9013"

    iput-object v3, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    const/16 v3, 0x41

    iput v3, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f140a1d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataStorage:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const-string v1, "top_level_devicecare"

    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataStorage:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v1, 0x7f1403e6

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    const v1, 0x7f0a0c77

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0708da

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v2

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d0903

    invoke-virtual {p0, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseHeader:Z

    const-string v5, "noDivider"

    const/4 v6, 0x4

    if-eqz v0, :cond_3

    if-ne p2, v6, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d0904

    invoke-virtual {p0, p2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    const/4 v7, 0x3

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    if-ne p2, v0, :cond_4

    const p2, 0x7f0d0905

    invoke-static {p1, p2, p1, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const v0, 0x7f0a0637

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterEmptyView:Landroid/view/View;

    const p1, 0x7f0a04bf

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    const p1, 0x7f0a04c2

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f140363

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a04c1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f1422d9

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a0ce5

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    const p1, 0x7f0a0ce7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1420c8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a0634

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, v7, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v0, v3, :cond_5

    invoke-static {v3, p1, v3, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->newView(ILandroid/view/ViewGroup;ZZ)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    :cond_5
    const/16 v2, 0x11

    if-ne v0, v2, :cond_6

    const/4 v5, 0x2

    if-ne p2, v5, :cond_6

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    sget p2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->$r8$clinit:I

    const p2, 0x7f0d0508

    invoke-static {p1, p2, p1, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const p1, 0x7f0a0130

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f140c2d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a07c3

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f130015

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p0, p1}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    const p0, 0x7f0a0114

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const p1, 0x7f140c2c

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    if-ne v0, v2, :cond_7

    if-ne p2, v7, :cond_7

    invoke-static {v2, p1, v3, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->newView(ILandroid/view/ViewGroup;ZZ)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_7
    if-eq v0, v6, :cond_9

    if-eq v0, v1, :cond_9

    const/4 p0, 0x6

    if-eq v0, p0, :cond_9

    const/4 p0, 0x7

    if-eq v0, p0, :cond_9

    const/16 p0, 0xd

    if-eq v0, p0, :cond_9

    const/16 p0, 0xc

    if-eq v0, p0, :cond_9

    const/16 p0, 0xb

    if-eq v0, p0, :cond_9

    const/16 p0, 0x8

    if-eq v0, p0, :cond_9

    const/16 p0, 0x68

    if-eq v0, p0, :cond_9

    const/16 p0, 0x13

    if-eq v0, p0, :cond_9

    const/16 p0, 0x69

    if-eq v0, p0, :cond_9

    const/16 p0, 0xa

    if-ne v0, p0, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {v0, p1, v4, v4}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->newView(ILandroid/view/ViewGroup;ZZ)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_9
    :goto_0
    invoke-static {v0, p1, v3, v4}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->newView(ILandroid/view/ViewGroup;ZZ)Landroid/view/View;

    move-result-object p2

    :goto_1
    new-instance p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-direct {p0, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onExtraInfoUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public final onLauncherInfoChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-boolean v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    :cond_0
    return-void
.end method

.method public final onLoadEntriesCompleted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public final onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public final onPackageListChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public final onPackageSizeChanged(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_8

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_7

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v3, v3, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseHeader:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    if-le v1, v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    iget v3, v2, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mScrollState:I

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "ManageApplications"

    const-string v4, "postNotifyItemChange"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, v2, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mDelayNotifyDataChange:Z

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, -0x1

    sget-boolean v2, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    const-string v3, "ManageApplications"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onRebuildComplete size="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v2, p1, v4}, Lcom/android/settingslib/applications/AppUtils;->preloadTopIcons(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    iget v2, v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_7

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v4

    move v7, v5

    :goto_0
    if-ge v7, v2, :cond_6

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v10, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_4

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v11, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v5

    :goto_2
    if-nez v8, :cond_5

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/2addr v7, v0

    move-object v8, v10

    goto :goto_0

    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->trimToSize()V

    move-object p1, v6

    :cond_7
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOriginalEntries:Ljava/util/ArrayList;

    iput-boolean v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasEnabledEntry:Z

    sget-object v2, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    if-eqz p1, :cond_25

    move v6, v5

    :goto_3
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x8

    if-ge v6, v7, :cond_13

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v7, v7, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_8

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Lcom/android/settingslib/applications/AppUtils;->isSystemUidApp(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_4
    add-int/2addr v6, v1

    goto/16 :goto_5

    :cond_8
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v7, v7, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v9, 0x6

    if-ne v7, v9, :cond_9

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_9

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Lcom/android/settingslib/applications/AppUtils;->isSystemUidApp(I)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0300cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v9, " is hide in Display over other apps(Appear on top) permission setting for the Scone application."

    invoke-static {v8, v7, v9, v3}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v7, v7, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v7, v8, :cond_a

    iget-boolean v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIsEnable:Z

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasEnabledEntry:Z

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v7, v7, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v7}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v7

    if-eqz v7, :cond_a

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasEnabledEntry:Z

    :cond_a
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_c

    iget v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHighlightTargetPosition:I

    if-eq v7, v1, :cond_b

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v8, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightTargetPackageName:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v8, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightTargetPackageUid:I

    if-ne v7, v8, :cond_b

    iput v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHighlightTargetPosition:I

    :cond_b
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.samsung.gpuwatchapp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_c
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_d
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v7, v7, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v7, v0, :cond_e

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_e
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-boolean v8, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-eqz v8, :cond_f

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-eq v7, v8, :cond_12

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_f
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_10
    iget-object v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-boolean v8, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-eqz v8, :cond_11

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_11
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_12
    :goto_5
    add-int/2addr v6, v0

    goto/16 :goto_3

    :cond_13
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v6, v6, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v6, :cond_15

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_14

    const-string p1, "mFilterEmptyView VISIBLE"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterEmptyView:Landroid/view/View;

    if-eqz p1, :cond_15

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_14
    const-string p1, "mFilterEmptyView GONE"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterEmptyView:Landroid/view/View;

    if-eqz p1, :cond_15

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "mEntries.size() : "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseHeader:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_17

    :cond_16
    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    if-eqz p1, :cond_18

    :cond_17
    const-string p1, "new AppEntry(mContext, null, -1) added"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-wide/16 v7, -0x1

    invoke-direct {v3, v6, v4, v7, v8}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    invoke-virtual {p1, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_18
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    sget-boolean v3, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->isFastScrollEnabled$1()Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-nez v3, :cond_19

    new-instance p1, Landroid/os/LocaleList;

    new-array v3, v0, [Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v4, v3, v5

    invoke-direct {p1, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :cond_19
    new-instance v3, Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {p1, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v4

    move v6, v0

    :goto_7
    if-ge v6, v4, :cond_1d

    invoke-virtual {p1, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    if-eqz v7, :cond_1b

    const-string v8, "zh"

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-virtual {v7}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1a

    goto :goto_8

    :cond_1a
    invoke-static {v7}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Hant"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_9

    :cond_1b
    :goto_8
    move v7, v5

    :goto_9
    if-nez v7, :cond_1c

    new-array v7, v0, [Ljava/util/Locale;

    invoke-virtual {p1, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v3, v7}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    :cond_1c
    add-int/2addr v6, v0

    goto :goto_7

    :cond_1d
    new-array p1, v0, [Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v4, p1, v5

    invoke-virtual {v3, p1}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v3}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    :cond_1e
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    move v6, v1

    move v4, v5

    :goto_a
    if-ge v4, v3, :cond_22

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, ""

    if-eqz v9, :cond_1f

    move-object v7, v10

    :cond_1f
    invoke-virtual {v8, v7}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v7

    if-eq v7, v6, :cond_21

    iget-boolean v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    if-eqz v6, :cond_20

    if-nez v4, :cond_20

    new-instance v6, Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    invoke-direct {v6, v10, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_20
    new-instance v6, Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    iget-object v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v8, v7}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    move v6, v7

    :cond_21
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v0

    aput v8, v7, v4

    add-int/2addr v4, v0

    goto :goto_a

    :cond_22
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_c

    :cond_23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_c

    :cond_24
    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    iput-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    goto :goto_c

    :cond_25
    iput-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    iput-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    :goto_c
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Landroidx/appcompat/widget/SearchView;

    iget-object p1, p1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v2, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v2, v0, :cond_27

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_d

    :cond_26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v2, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v2, v0, :cond_27

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_27
    :goto_d
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_29

    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result p1

    if-ne p1, v0, :cond_28

    goto :goto_e

    :cond_28
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p1, v5}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Landroidx/appcompat/widget/SearchView;

    iget-object p1, p1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->filterSearch(Ljava/lang/String;)V

    goto :goto_f

    :cond_29
    :goto_e
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p1}, Lcom/android/settings/widget/LoadingViewController;->showEmpty()V

    :cond_2a
    :goto_f
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    if-eq p1, v1, :cond_2b

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result p1

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    if-le p1, v0, :cond_2b

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    :cond_2b
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    return-void

    :cond_2c
    iget-boolean v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-eqz v0, :cond_2d

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-boolean p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsSecureOrSeparationUserId:Z

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-boolean p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mWorkHaveDisabledApp:Z

    goto :goto_10

    :cond_2d
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-boolean v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_10
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v0, 0xe

    if-ne p1, v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu$1()V

    :cond_2e
    return-void
.end method

.method public final onRunningStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public final rebuild()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v3, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v3, v2, :cond_3

    iget-boolean v2, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$30;

    sget-object v4, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTI_BLOCKABLE:Lcom/android/settings/applications/AppStateNotificationBridge$1;

    invoke-direct {v2, v0, v4}, Lcom/android/settingslib/applications/ApplicationsState$30;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v0, v2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    if-eqz v2, :cond_4

    new-instance v4, Lcom/android/settingslib/applications/ApplicationsState$30;

    invoke-direct {v4, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$30;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v0, v4

    :cond_4
    iget-boolean v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->LIST_TYPES_WITH_INSTANT:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$30;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$9;

    invoke-direct {v1, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$30;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    :goto_2
    move-object v0, v1

    goto :goto_3

    :cond_5
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$30;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$9;

    invoke-direct {v1, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$30;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    goto :goto_2

    :cond_6
    :goto_3
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$30;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$24;

    invoke-direct {v1, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$30;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void

    :cond_7
    :goto_4
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Not rebuilding until all the app entries loaded. !mHasReceivedLoadEntries="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " !mExtraInfoBridgeNull="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v3, :cond_8

    move v1, v2

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " !mHasReceivedBridgeCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    xor-int/2addr p0, v2

    const-string v1, "ManageApplications"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final rebuild(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iput p1, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public final resume(I)V
    .locals 11

    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    const-string v1, "ManageApplications"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Resume!  mResumed="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-static {v0, v2, v1}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onResume()V

    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Lcom/android/settings/applications/AppStateBaseBridge;->resume(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(IZ)V

    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v0, v3, :cond_3

    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_3

    iget-object v4, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    if-eqz v4, :cond_3

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v4}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(ILjava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v4, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v6, v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-eqz v6, :cond_3

    check-cast v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    iget-boolean v6, v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    if-eq v6, p1, :cond_3

    iput-boolean p1, v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    iget-object p1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-virtual {p0, p1, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iput-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_d

    iput-boolean v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIsEnable:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSummaryRes:I

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v4, "isNonMarketAppAllowed"

    invoke-static {p1, v0, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkExternalSourcesCondition : blockNonMarketAppInstall "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-boolean v5, v4, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-eqz v5, :cond_5

    iget v4, v4, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    const-string v6, "no_install_unknown_sources"

    invoke-virtual {p1, v6, v5}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const-string v8, "no_install_unknown_sources_globally"

    invoke-virtual {p1, v8, v7}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    const v7, 0x7f140d0c

    if-nez v5, :cond_6

    if-nez p1, :cond_6

    if-eqz v0, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, v4, v6}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const-string v4, "checkExternalSourcesCondition : [disallowInstallUnknownSources = "

    const-string v9, "], [disallowInstallUnknownSourcesGlobally = "

    const-string v10, "], [admin null? "

    invoke-static {v4, v5, v9, p1, v10}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez v0, :cond_7

    move v4, v3

    goto :goto_3

    :cond_7
    move v4, v2

    :goto_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIsEnable:Z

    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iput v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSummaryRes:I

    :cond_8
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSummaryRes:I

    if-eq p1, v7, :cond_d

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0, v8}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v0, v4, v6}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkExternalSourcesCondition : isAdminGlobal = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    move v5, v3

    goto :goto_4

    :cond_9
    move v5, v2

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isAdmin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move v3, v2

    :goto_5
    invoke-static {v4, v3, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v0, :cond_b

    if-eqz p1, :cond_d

    :cond_b
    if-eqz v0, :cond_c

    move-object p1, v0

    :cond_c
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIsEnable:Z

    iput v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSummaryRes:I

    :cond_d
    return-void
.end method

.method public final setFilter(Lcom/android/settings/applications/manageapplications/AppFilterItem;)V
    .locals 7

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    iget v0, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v2, v2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x3

    const/4 v4, 0x0

    const-string v5, "NSTE0019"

    if-ne v2, v0, :cond_0

    const v0, 0x7f0a0ead

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(IZ)V

    const-string v0, "most frequent"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    const v0, 0x7f0a0eae

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(IZ)V

    const-string v0, "most recent"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/16 v2, 0x10

    const v6, 0x7f0a0eac

    if-ne v2, v0, :cond_2

    invoke-virtual {p0, v6, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(IZ)V

    const-string v0, "blocked"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    const/16 v2, 0x1c

    if-ne v2, v0, :cond_3

    invoke-virtual {p0, v6, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(IZ)V

    const-string v0, "all"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    iget p1, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    if-eq p0, p1, :cond_4

    const p0, 0x8cb5

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5, v1, v4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    :cond_4
    return-void

    :cond_5
    const/16 p1, 0xf

    if-ne v2, p1, :cond_6

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x700

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->logAction(I)V

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x701

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->logAction(I)V

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x703

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->logAction(I)V

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x702

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->logAction(I)V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setUnvisiblePrefs(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPrefVisible:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$smisSupportedRelativeLink(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHeaderButtonVisible:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHeaderButtonVisible:Z

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    if-eqz p1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    :cond_5
    :goto_1
    return-void
.end method

.method public updateLoading()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    iget-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mFgHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/widget/LoadingViewController;->mShowLoadingContainerRunnable:Lcom/android/settings/widget/LoadingViewController$1;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final updateSummary(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_17

    const/16 v4, 0x65

    if-eq v1, v4, :cond_16

    const/16 v4, 0x68

    const/4 v5, 0x0

    if-eq v1, v4, :cond_14

    const/16 v4, 0x69

    if-eq v1, v4, :cond_12

    const v4, 0x7f1403a5

    const v6, 0x7f1403a4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_f

    :pswitch_0
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    check-cast v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_0
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_f

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, p2, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$NfcTagAppState;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$NfcTagAppState;

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$NfcTagAppState;

    invoke-direct {p2, v5, v5}, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$NfcTagAppState;-><init>(ZZ)V

    :goto_1
    iget-boolean p2, p2, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$NfcTagAppState;->mIsAllowed:Z

    if-eqz p2, :cond_2

    move v4, v6

    :cond_2
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :pswitch_2
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0, p2}, Lcom/android/settings/applications/appinfo/LongBackgroundTasksDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :pswitch_4
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, p2}, Lcom/android/settings/applications/appinfo/AppLocaleDetails;->getSummary(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :pswitch_6
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    check-cast v0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->isAllowed()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_2
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_f

    :pswitch_7
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    iget-boolean v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    iget-object v2, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v3, v5

    :cond_5
    :goto_3
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_4

    :cond_6
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_4
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_f

    :pswitch_8
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    check-cast v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_5

    :cond_7
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_5
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_f

    :pswitch_9
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v7, v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    if-eqz v7, :cond_8

    check-cast v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    goto :goto_6

    :cond_8
    instance-of v7, v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v7, :cond_9

    new-instance v2, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    check-cast v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v2, v1}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    move-object v1, v2

    goto :goto_6

    :cond_9
    new-instance v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    invoke-direct {v1, v0, v2, v2}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v7}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v1

    :goto_6
    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v1

    if-eqz v1, :cond_a

    move v4, v6

    :cond_a
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    check-cast v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    iget-object v2, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    iget v2, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    iget-boolean v0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    const/4 v4, 0x3

    if-ne v2, v4, :cond_b

    goto :goto_8

    :cond_b
    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    move v3, v5

    :goto_7
    move v0, v3

    :goto_8
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_9

    :cond_d
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_9
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_f

    :pswitch_a
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-object v2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v1, v2}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_a

    :cond_e
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_a
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_f

    :pswitch_b
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_10

    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_f

    goto :goto_b

    :cond_f
    move v3, v5

    :goto_b
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_10
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_f

    :pswitch_c
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_11

    instance-of v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v1, :cond_11

    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    check-cast v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_c

    :cond_11
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_c
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_f

    :cond_12
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v1, :cond_13

    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    check-cast v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_d

    :cond_13
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_d
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto :goto_f

    :cond_14
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_15

    instance-of v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v1, :cond_15

    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    check-cast v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_e

    :cond_15
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_e
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto :goto_f

    :cond_16
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_17
    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz p2, :cond_18

    instance-of v0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    check-cast p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    invoke-static {v0, p2, p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_18
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_7
        :pswitch_c
        :pswitch_6
        :pswitch_c
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;

    move-object v2, v0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;-><init>(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Landroidx/fragment/app/FragmentActivity;)V

    iget-object p0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAddIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_a

    invoke-virtual {p2}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isClonedProfile()Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAddIcon:Landroid/widget/ImageView;

    const p2, 0x7f080333

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAddIcon:Landroid/widget/ImageView;

    const p2, 0x7f08065c

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    const p2, 0x7f14095c

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateDisableTextToSummary()V

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSummaryVisibility()V

    :goto_0
    iget-object p0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAddIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :cond_2
    invoke-static {p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-boolean v3, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    if-nez v3, :cond_5

    if-nez v3, :cond_3

    iget-boolean v0, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    if-eqz v0, :cond_3

    :cond_5
    move v0, v2

    :goto_1
    iget-object v3, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v3, v3, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    iput-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    iput-object v3, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iput p0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mLastSortMode:I

    invoke-static {p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p0

    if-nez p0, :cond_7

    move p0, v1

    goto :goto_3

    :cond_7
    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    :goto_3
    invoke-static {p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    iget-boolean v0, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    xor-int/lit8 v1, v0, 0x1

    :goto_4
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    if-eqz p2, :cond_9

    new-instance v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object p0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object p1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_6
    return-void
.end method
