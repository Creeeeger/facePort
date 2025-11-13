.class Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$ManageApplicationsCallbacks;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;",
        ">;",
        "Lcom/android/settingslib/applications/ApplicationsState$ManageApplicationsCallbacks;",
        "Lcom/android/settings/applications/AppStateBaseBridge$Callback;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# static fields
.field private static final EMPTY_SECTIONS:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;


# instance fields
.field private mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

.field private mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

.field private mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mCurrentFastScrollState:I

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntriesForSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

.field private mFooterVisible:Z

.field private mHasEnabledEntry:Z

.field private mHasReceivedBridgeCallback:Z

.field private mHasReceivedLoadEntries:Z

.field private mHeaderButtonVisible:Z

.field private mHighlightTargetPosition:I

.field private final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/AlphabeticIndex$ImmutableIndex<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnable:Z

.field private mLastIndex:I

.field private mLastSortMode:I

.field mLinkedDataBattery:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field mLinkedDataStorage:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private final mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field private final mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

.field mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

.field private mOriginalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPositionToSectionIndex:[I

.field private mPrefVisible:Z

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mResumed:Z

.field private mSearchFilter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

.field private mSections:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

.field private final mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSortByDialog:Landroidx/appcompat/app/AlertDialog;

.field private final mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mSummaryRes:I

.field private mUseFooter:Z

.field private mUseHeader:Z

.field private mUsePref:Z

.field private mWhichSize:I


# direct methods
.method public static synthetic $r8$lambda$AserFFDS_yHey1nukPszGxcNIEw(Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->lambda$applyRippleEffectAtPref$5(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ENZiXkmuw-0GliYwWDAhFG5eTBw(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->lambda$rebuild$1(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JyD1Hc4D7HVohduVn-76n3K-SIU(Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->lambda$applyRippleEffectAtPref$4(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RNzVP3ozUT9NuQFg3Uki45ULxis(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->lambda$updateIcon$3(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T34Gp3P7kMEBgEVTTawiYgzsp_c(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;ILcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->lambda$hightlightTargetApp$6(ILcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TCLjOa2S4h-DHyvrYi6vRQ8YQq0(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->lambda$updateIcon$2(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m_DfvCphV1RBo7B7v6kqEjonC6c(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->lambda$rebuild$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnforcedAdmin(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEntries(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEntriesForSearch(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntriesForSearch:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasReceivedBridgeCallback(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasReceivedLoadEntries(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHighlightTargetPosition(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHighlightTargetPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalEntries(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOriginalEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecyclerView(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSortByDialog(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSortByDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummaryRes(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSummaryRes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUseHeader(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseHeader:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsePref(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmEntries(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEntriesForSearch(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntriesForSearch:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasEnabledEntry(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasEnabledEntry:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasReceivedBridgeCallback(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasReceivedLoadEntries(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetComparatorByLastSortMode(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Ljava/util/Comparator;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getComparatorByLastSortMode()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitDialog(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->initDialog(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    .line 2478
    sput-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    .line 2513
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 2453
    iput v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v10, 0x0

    .line 2454
    iput v10, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 2464
    iput v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    const/4 v1, -0x2

    .line 2470
    iput v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHighlightTargetPosition:I

    .line 2479
    sget-object v1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    iput-object v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    .line 2494
    iput v10, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mCurrentFastScrollState:I

    const/4 v11, 0x1

    .line 2504
    iput-boolean v11, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIsEnable:Z

    .line 2505
    iput v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSummaryRes:I

    .line 2514
    invoke-virtual {v7, v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 2515
    iput-object v2, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 2516
    invoke-virtual {v2, v7}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    const/16 v1, 0xf

    .line 2518
    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->setSessionFlags(I)V

    .line 2520
    iput-object v8, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 2521
    new-instance v0, Lcom/android/settings/widget/LoadingViewController;

    invoke-static/range {p2 .. p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmLoadingContainer(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v1

    iget-object v3, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static/range {p2 .. p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmEmptyView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    .line 2526
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    iput-object v12, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 2527
    invoke-static {v12}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    move-object/from16 v0, p3

    .line 2528
    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 2529
    invoke-static {v12}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    .line 2530
    iget v1, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v6, 0xa

    const/16 v5, 0xd

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v10, 0x4

    const/16 v13, 0x8

    if-ne v1, v11, :cond_0

    .line 2531
    new-instance v1, Lcom/android/settings/applications/AppStateNotificationBridge;

    invoke-static/range {p2 .. p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmUsageStatsManager(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v16

    invoke-static/range {p2 .. p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmUserManager(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/os/UserManager;

    move-result-object v17

    invoke-static/range {p2 .. p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmNotificationBackend(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v18

    move-object v0, v1

    move-object v11, v1

    move-object v1, v12

    move-object/from16 v2, p1

    move v15, v3

    move-object/from16 v3, p0

    move v14, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/AppStateNotificationBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object v11, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    :goto_0
    const/16 v0, 0xa

    :goto_1
    const/16 v3, 0xd

    goto/16 :goto_2

    :cond_0
    move v15, v3

    move v14, v4

    if-ne v1, v10, :cond_1

    .line 2536
    new-instance v0, Lcom/android/settings/applications/AppStateUsageBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_1
    if-ne v1, v15, :cond_2

    .line 2538
    invoke-virtual {v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->refreshList()V

    .line 2539
    new-instance v0, Lcom/android/settings/applications/AppStatePowerBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStatePowerBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_2
    if-ne v1, v14, :cond_3

    .line 2541
    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    if-ne v1, v0, :cond_4

    .line 2543
    new-instance v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_4
    if-ne v1, v13, :cond_5

    .line 2545
    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    invoke-direct {v0, v12, v2, v7}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_5
    const/16 v0, 0xa

    if-ne v1, v0, :cond_6

    .line 2547
    new-instance v1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    invoke-direct {v1, v12, v2, v7}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_1

    :cond_6
    const/16 v3, 0xb

    if-ne v1, v3, :cond_7

    .line 2549
    new-instance v1, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;

    invoke-direct {v1, v12, v2, v7}, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_1

    :cond_7
    const/16 v3, 0xc

    if-ne v1, v3, :cond_8

    .line 2551
    new-instance v1, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;

    invoke-direct {v1, v12, v2, v7}, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_1

    :cond_8
    const/16 v3, 0xd

    if-ne v1, v3, :cond_9

    .line 2553
    new-instance v1, Lcom/android/settings/applications/AppStateMediaManagementAppsBridge;

    invoke-direct {v1, v12, v2, v7}, Lcom/android/settings/applications/AppStateMediaManagementAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_2

    :cond_9
    const/16 v4, 0xe

    if-ne v1, v4, :cond_a

    .line 2555
    new-instance v1, Lcom/android/settings/applications/AppStateLocaleBridge;

    invoke-direct {v1, v12, v2, v7}, Lcom/android/settings/applications/AppStateLocaleBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    .line 2557
    iput-object v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    :goto_2
    if-eqz v9, :cond_b

    const-string/jumbo v1, "state_last_scroll_index"

    .line 2560
    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    .line 2564
    :cond_b
    iget v1, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eq v1, v14, :cond_d

    if-eq v1, v15, :cond_d

    if-eq v1, v3, :cond_d

    const/16 v2, 0xc

    if-eq v1, v2, :cond_d

    if-eq v1, v10, :cond_d

    const/16 v2, 0xb

    if-eq v1, v2, :cond_d

    if-eq v1, v13, :cond_d

    if-eq v1, v0, :cond_d

    const/16 v0, 0xe

    if-eq v1, v0, :cond_d

    const/16 v0, 0x10

    if-ne v1, v0, :cond_c

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    :goto_3
    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseHeader:Z

    if-nez v1, :cond_e

    .line 2575
    invoke-static {v12}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v12}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "Settings_Relative_Link_View"

    const-string v1, "hide"

    .line 2576
    invoke-static {v12, v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    .line 2577
    iput-boolean v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mFooterVisible:Z

    .line 2578
    iget v0, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v0, :cond_f

    const/4 v10, 0x1

    goto :goto_6

    :cond_f
    const/4 v10, 0x0

    :goto_6
    iput-boolean v10, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    const/4 v1, 0x1

    .line 2579
    iput-boolean v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPrefVisible:Z

    .line 2580
    sget-boolean v2, Lcom/samsung/android/settings/Rune;->FEATURE_APPS_MANAGE_SOURCES_DENY_ALL:Z

    if-eqz v2, :cond_10

    if-ne v0, v13, :cond_10

    .line 2582
    iput-boolean v1, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHeaderButtonVisible:Z

    .line 2585
    :cond_10
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private applyRippleEffectAtPref(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 4

    .line 4386
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmHighlightKey(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x258

    if-eqz v0, :cond_0

    .line 4387
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->samsung_app_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 4388
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4397
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmHighlightKey(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "default_apps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4398
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->default_app_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 4399
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda3;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4409
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fputmIsPageLaunchedBySearch(Lcom/android/settings/applications/manageapplications/ManageApplications;Z)V

    return-void
.end method

.method private checkExternalSourcesCondition()V
    .locals 8

    const/4 v0, 0x1

    .line 3787
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIsEnable:Z

    const/4 v1, -0x1

    .line 3788
    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSummaryRes:I

    .line 3794
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v3, "isNonMarketAppAllowed"

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3799
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExternalSourcesCondition : blockNonMarketAppInstall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ManageApplications"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 3803
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    const-string v6, "no_install_unknown_sources"

    .line 3802
    invoke-virtual {v1, v6, v5}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_3

    .line 3804
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 3805
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 3804
    invoke-static {v3, v6, v5}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    .line 3806
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkExternalSourcesCondition : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3807
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 3806
    invoke-virtual {v1, v6, v7}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " admin null? "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIsEnable:Z

    if-eqz v3, :cond_3

    .line 3810
    iput-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 3811
    sget v1, Lcom/android/settings/R$string;->disabled_by_admin:I

    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSummaryRes:I

    .line 3814
    :cond_3
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSummaryRes:I

    sget v3, Lcom/android/settings/R$string;->disabled_by_admin:I

    if-eq v1, v3, :cond_8

    .line 3815
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 3816
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const-string v7, "no_install_unknown_sources_globally"

    .line 3815
    invoke-static {v1, v7, v5}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 3817
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 3818
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 3817
    invoke-static {v5, v6, v7}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    .line 3819
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkExternalSourcesCondition : isAdminGlobal = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    move v7, v0

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isAdmin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_6

    if-eqz v1, :cond_8

    :cond_6
    if-eqz v5, :cond_7

    move-object v1, v5

    .line 3821
    :cond_7
    iput-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 3822
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIsEnable:Z

    .line 3823
    iput v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSummaryRes:I

    :cond_8
    return-void
.end method

.method public static getApplicationPosition(II)I
    .locals 0

    return p1
.end method

.method private getComparatorByLastSortMode()Ljava/util/Comparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 4363
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 4364
    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    if-ne p0, v2, :cond_0

    .line 4365
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_0

    :cond_0
    if-ne p0, v1, :cond_1

    .line 4367
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_0

    .line 4369
    :cond_1
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 4372
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->LAST_USED_COMPARATOR:Ljava/util/Comparator;

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    if-ne v0, p0, :cond_4

    .line 4374
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->LAST_UPDATED_COMPARATOR:Ljava/util/Comparator;

    goto :goto_0

    .line 4375
    :cond_4
    sget p0, Lcom/android/settings/R$id;->sort_order_recent_notification:I

    if-ne v0, p0, :cond_5

    .line 4376
    sget-object p0, Lcom/android/settings/applications/AppStateNotificationBridge;->RECENT_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    goto :goto_0

    .line 4377
    :cond_5
    sget p0, Lcom/android/settings/R$id;->sort_order_frequent_notification:I

    if-ne v0, p0, :cond_6

    .line 4378
    sget-object p0, Lcom/android/settings/applications/AppStateNotificationBridge;->FREQUENCY_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    goto :goto_0

    .line 4380
    :cond_6
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    :goto_0
    return-object p0
.end method

.method private hightlightTargetApp(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 4

    .line 4449
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightTargetPackageName:Ljava/lang/String;

    .line 4450
    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightTargetPackageUid:I

    .line 4451
    iget-object v2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4452
    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHighlightTargetPosition:I

    if-ltz v3, :cond_0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4453
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 4454
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUpdatedListCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUpdatedListCount:I

    .line 4456
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;ILcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    const-wide/16 p0, 0x258

    invoke-virtual {p2, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private initDialog(Landroid/view/View;)V
    .locals 10

    .line 3874
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3875
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmFilterContainer(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3876
    sget v1, Lcom/android/settings/R$string;->sec_filter_and_sort_by:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 3878
    :cond_0
    sget v1, Lcom/android/settings/R$string;->sec_sort_by:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3880
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmSwitchInSelectDialogView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->dialog_switch:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 3881
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmSwitchInSelectDialogView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/settings/R$id;->dialog_switch_section:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 3882
    new-instance v3, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$4;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$4;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Landroid/widget/Switch;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3892
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sec_menu_show_system:I

    .line 3893
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getContentDescriptionWithSwitch(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 3892
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3894
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmShowSystem(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v2

    .line 3895
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v3

    .line 3896
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v5, v4, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 3897
    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmShowSystem(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3898
    new-instance v4, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$5;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$5;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3905
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v4

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v4, v6, :cond_2

    const/4 v6, 0x7

    if-eq v4, v6, :cond_1

    .line 3913
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmRadioGroupFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 3910
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmRadioGroupFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 3907
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmRadioGroupFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3917
    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v6, v4, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    if-eq v6, v9, :cond_5

    if-eq v6, v8, :cond_4

    const/4 v8, 0x3

    if-eq v6, v8, :cond_3

    .line 3928
    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmRadioGroupOrder(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 3925
    :cond_3
    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmRadioGroupOrder(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 3922
    :cond_4
    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmRadioGroupOrder(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 3919
    :cond_5
    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmRadioGroupOrder(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3933
    :goto_2
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmRadioGroupFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/RadioGroup;

    move-result-object v4

    new-instance v6, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$6;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$6;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-virtual {v4, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 3946
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmRadioGroupOrder(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/RadioGroup;

    move-result-object v4

    new-instance v6, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$7;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$7;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-virtual {v4, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 3974
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmSwitchInSelectDialogView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 3975
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmSwitchInSelectDialogView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v6}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmSwitchInSelectDialogView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3977
    :cond_6
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmSwitchInSelectDialogView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3978
    sget v4, Lcom/android/settings/R$string;->okay:I

    new-instance v6, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Landroid/widget/Switch;)V

    invoke-virtual {v0, v4, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3992
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSortByDialog:Landroidx/appcompat/app/AlertDialog;

    .line 3993
    sget v0, Lcom/android/settings/R$id;->sort_by_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3995
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSortByDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    .line 3997
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmRootView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$9;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$9;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4008
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSortByDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$10;

    invoke-direct {v0, p0, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$10;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;ZII)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4016
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSortByDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private initRelativeViewData()V
    .locals 5

    .line 3283
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataStorage:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 3284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package_name"

    const-string v2, "com.android.settings"

    .line 3285
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3286
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataStorage:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const/16 v2, 0x2335

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 3287
    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 3288
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->config_sec_toplevel_devicecare_package:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "top_level_devicecare"

    if-eqz v0, :cond_0

    .line 3289
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataStorage:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 3291
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataStorage:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    sget v3, Lcom/android/settings/R$string;->storage_settings:I

    iput v3, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 3293
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataBattery:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 3294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.sm.ACTION_BATTERY"

    .line 3295
    invoke-direct {p0, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->isIntentEnabledInSM(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3296
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v3, "android.intent.action.POWER_USAGE_SUMMARY"

    .line 3298
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3300
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataBattery:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const/16 v4, 0x2336

    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    const/16 v4, 0x41

    .line 3301
    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 3302
    iput-object v0, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 3303
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3304
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataBattery:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 3306
    :cond_2
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataBattery:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    sget v0, Lcom/android/settings/R$string;->power_usage_summary_title:I

    iput v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    return-void
.end method

.method private isIntentEnabledInSM(Ljava/lang/String;)Z
    .locals 1

    .line 3319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3320
    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3321
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3322
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method

.method private static synthetic lambda$applyRippleEffectAtPref$4(Landroid/widget/LinearLayout;)V
    .locals 3

    .line 4389
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4390
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 4391
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 4392
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    const/4 v0, 0x1

    .line 4394
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setPressed(Z)V

    const/4 v0, 0x0

    .line 4395
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setPressed(Z)V

    return-void
.end method

.method private static synthetic lambda$applyRippleEffectAtPref$5(Landroid/widget/LinearLayout;)V
    .locals 3

    .line 4400
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4401
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 4402
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 4403
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    const/4 v0, 0x1

    .line 4405
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setPressed(Z)V

    const/4 v0, 0x0

    .line 4406
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setPressed(Z)V

    return-void
.end method

.method private synthetic lambda$hightlightTargetApp$6(ILcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 3

    .line 4457
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHighlightTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUpdatedListCount:I

    if-ne p1, v0, :cond_1

    .line 4458
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4459
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 4460
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 4461
    iget-object v2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4463
    :cond_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4464
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 4465
    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHighlightTargetPosition:I

    .line 4466
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightTargetPackageName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private synthetic lambda$rebuild$0(Ljava/util/ArrayList;)V
    .locals 0

    .line 2992
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onRebuildComplete(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$rebuild$1(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 8

    .line 2947
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 2948
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getComparatorByLastSortMode()Ljava/util/Comparator;

    move-result-object v1

    const/4 v2, 0x0

    .line 2947
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_6

    move v0, v2

    .line 2950
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 2952
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x1

    if-nez v1, :cond_0

    goto :goto_4

    .line 2955
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2956
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2957
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 2958
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2963
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2964
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 2973
    :cond_2
    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$sfputmSkipApp(Z)V

    .line 2974
    invoke-static {}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$sfgetmHideApp()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v1, v3, :cond_4

    .line 2975
    invoke-static {}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$sfgetmHideNotificationList()[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    .line 2976
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2977
    invoke-static {v3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$sfputmSkipApp(Z)V

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2982
    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$sfgetmSkipApp()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2983
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    :goto_4
    add-int/2addr v0, v3

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    .line 2992
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method private static synthetic lambda$updateIcon$2(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 4028
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$updateIcon$3(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 0

    .line 4026
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/applications/AppUtils;->getIcon(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4028
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private onBindHeaderViewHolder(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 4

    .line 3831
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 3832
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->allow_overlay_description:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3834
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_high_power_description:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 3836
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3837
    sget v0, Lcom/android/settings/R$string;->media_management_apps_description_tablet:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/settings/R$string;->media_management_apps_description:I

    .line 3836
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 3839
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->alarms_and_reminders_footer_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 3841
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->usage_access_description:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    .line 3843
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->allow_manage_external_storage_description:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 3845
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget-boolean v2, Lcom/samsung/android/settings/Rune;->FEATURE_APPS_MANAGE_SOURCES_DENY_ALL:Z

    if-eqz v2, :cond_7

    .line 3846
    sget v3, Lcom/android/settings/R$string;->install_all_warning_with_deny_button:I

    goto :goto_1

    :cond_7
    sget v3, Lcom/android/settings/R$string;->install_all_warning:I

    .line 3845
    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_c

    .line 3848
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHeaderButtonVisible:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 3849
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_install_allow_deny_all_button:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$3;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$3;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderButtonContents(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 3856
    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasEnabledEntry:Z

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderButtonEnable(Z)V

    goto :goto_2

    .line 3858
    :cond_8
    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderButtonVisible(I)V

    goto :goto_2

    :cond_9
    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    .line 3862
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->change_wifi_state_app_detail_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    const/16 v1, 0x10

    if-ne v0, v1, :cond_b

    .line 3864
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_manage_unknown_app_description:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_b
    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    .line 3866
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->desc_app_locale_selection_supported:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 3868
    :cond_c
    :goto_2
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 3034
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    .line 3037
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private rebuildSections()V
    .locals 9

    .line 3329
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslIsFastScrollerEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    if-nez v0, :cond_7

    .line 3332
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 3333
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 3334
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 3335
    new-instance v0, Landroid/os/LocaleList;

    new-array v3, v2, [Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v4, v3, v1

    invoke-direct {v0, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 3337
    :cond_0
    new-instance v3, Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    .line 3338
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    new-array v6, v2, [Ljava/util/Locale;

    .line 3340
    invoke-virtual {v0, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v6}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/util/Locale;

    .line 3343
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v4, v0, v1

    invoke-virtual {v3, v0}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 3344
    invoke-virtual {v3}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    .line 3347
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, -0x1

    .line 3349
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3350
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    :goto_1
    if-ge v1, v4, :cond_6

    .line 3353
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 3354
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_3

    move-object v5, v8

    :cond_3
    invoke-virtual {v6, v5}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v5

    if-eq v5, v3, :cond_5

    .line 3361
    iget-boolean v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    .line 3362
    new-instance v3, Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    invoke-direct {v3, v8, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3364
    :cond_4
    new-instance v3, Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v6, v5}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move v3, v5

    .line 3367
    :cond_5
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3369
    :cond_6
    sget-object v1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    goto :goto_3

    .line 3377
    :cond_7
    sget-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    const/4 v0, 0x0

    .line 3378
    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    :goto_3
    return-void
.end method

.method private removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 3042
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 3044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    .line 3049
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 3050
    iget-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 3051
    invoke-static {v1, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3052
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v4

    goto :goto_0

    .line 3056
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    return-object v0
.end method

.method private setOnClickListenerAtPref(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 2

    .line 4413
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->default_app_settings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$11;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$11;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4428
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->samsung_app_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$12;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$12;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateIcon(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 2

    .line 4021
    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->getIconFromCache(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4022
    iget-boolean v1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-eqz v1, :cond_0

    .line 4023
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4025
    :cond_0
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method private updateRelativeView(Lcom/samsung/android/settings/widget/SecRelativeLinkView;)V
    .locals 1

    .line 3310
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->resetLinkData()V

    .line 3311
    sget v0, Lcom/android/settings/R$string;->sec_relative_description:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->setTitleText(I)V

    .line 3312
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3313
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataBattery:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 3314
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLinkedDataStorage:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method private updateSummary(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 6

    .line 4035
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 4155
    :pswitch_0
    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_a

    .line 4152
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/applications/appinfo/AppLocaleDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 4137
    :pswitch_2
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;

    if-eqz v1, :cond_0

    .line 4138
    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    check-cast v0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->isAllowed()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 4140
    :cond_0
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4142
    :goto_0
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 4143
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_a

    .line 4117
    :pswitch_3
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    if-eqz v1, :cond_5

    .line 4118
    check-cast v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    .line 4119
    iget-boolean v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/settings/wifi/ChangeWifiStateDetails;

    invoke-direct {v1}, Lcom/android/settings/wifi/ChangeWifiStateDetails;-><init>()V

    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4120
    invoke-virtual {v1, v4, v5}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->checkNetworkSettingsPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    .line 4121
    :goto_2
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    .line 4122
    iget-object v4, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :cond_4
    :goto_3
    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_4

    .line 4124
    :cond_5
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4126
    :goto_4
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 4127
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_a

    .line 4107
    :pswitch_4
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-eqz v1, :cond_6

    .line 4108
    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    check-cast v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_5

    .line 4110
    :cond_6
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4112
    :goto_5
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 4113
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_a

    .line 4092
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 4094
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v1, :cond_7

    .line 4095
    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    check-cast v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v2, v0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    .line 4096
    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    .line 4095
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_6

    .line 4098
    :cond_7
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4100
    :goto_6
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 4101
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_a

    .line 4081
    :pswitch_6
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v0, :cond_8

    .line 4082
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-object v2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v1, v2}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    .line 4083
    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v1

    .line 4082
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_7

    .line 4085
    :cond_8
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4087
    :goto_7
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 4088
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto :goto_a

    .line 4071
    :pswitch_7
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 4072
    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v4, :cond_9

    goto :goto_8

    :cond_9
    move v2, v3

    :goto_8
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4074
    :cond_a
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 4075
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto :goto_a

    .line 4049
    :pswitch_8
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_b

    instance-of v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v1, :cond_b

    .line 4050
    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    check-cast v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_9

    .line 4052
    :cond_b
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4054
    :goto_9
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 4055
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto :goto_a

    .line 4037
    :pswitch_9
    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz p2, :cond_c

    instance-of v0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-eqz v0, :cond_c

    .line 4039
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    invoke-static {v0, p2, p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_c
    const/4 p0, 0x0

    .line 4042
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_8
        :pswitch_1
    .end packed-switch
.end method

.method private updateSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 2

    .line 4161
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 4165
    :cond_0
    invoke-static {p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->visibleSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    .line 4166
    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4167
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmNotificationBackend(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v1

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setClickListnerInfo(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;I)V

    .line 4169
    invoke-static {p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->enableSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p0

    .line 4170
    invoke-static {p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->checkSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    .line 4168
    invoke-virtual {p1, p2, p0, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateNotificationSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;ZZ)V

    :goto_1
    return-void
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 3264
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 3267
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3271
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3272
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 3273
    invoke-virtual {v2}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 3274
    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 3275
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object p2
.end method

.method filterSearch(Ljava/lang/String;)V
    .locals 2

    .line 3000
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSearchFilter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

    if-nez v0, :cond_0

    .line 3001
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter-IA;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSearchFilter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

    .line 3004
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOriginalEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const-string p0, "ManageApplications"

    const-string p1, "Apps haven\'t loaded completely yet, so nothing can be filtered"

    .line 3005
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3008
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSearchFilter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

    invoke-virtual {p0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 3523
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method public getApplicationCount()I
    .locals 0

    .line 3519
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getContentDescriptionWithSwitch(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 4474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 4476
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->switch_on_text:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 4478
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4480
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sec_switch:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 4

    .line 3496
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3500
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getApplicationCount()I

    move-result v0

    .line 3505
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v0, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    if-ne v0, v3, :cond_2

    .line 3510
    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    if-eqz v2, :cond_2

    return v1

    .line 3513
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    if-eqz v2, :cond_3

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mFooterVisible:Z

    if-eqz p0, :cond_3

    move v1, v3

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 1

    .line 3532
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 3533
    invoke-static {v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getApplicationPosition(II)I

    move-result p1

    .line 3534
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3538
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

.method public getItemViewType(I)I
    .locals 6

    .line 2825
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseHeader:Z

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x7

    const/4 v4, 0x1

    if-nez v0, :cond_3

    iget-boolean v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_8

    .line 2843
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mFooterVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne v0, p1, :cond_1

    return v3

    .line 2845
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v4

    if-ne p0, p1, :cond_2

    return v3

    :cond_2
    return v1

    :cond_3
    :goto_0
    if-nez p1, :cond_5

    if-eqz v0, :cond_4

    return v2

    :cond_4
    const/16 p0, 0x8

    return p0

    :cond_5
    if-ne p1, v4, :cond_8

    .line 2833
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mFooterVisible:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne v0, p1, :cond_6

    return v3

    .line 2835
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v4

    if-ne p0, p1, :cond_7

    return v3

    :cond_7
    return v1

    .line 2853
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v4

    const/4 v1, 0x0

    if-ne v0, p1, :cond_9

    goto :goto_1

    :cond_9
    move v4, v1

    .line 2855
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    const/4 v3, 0x6

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mFooterVisible:Z

    if-eqz v0, :cond_c

    if-nez v4, :cond_b

    .line 2856
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v0

    if-ne v0, v2, :cond_a

    goto :goto_2

    .line 2858
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    if-ne p0, p1, :cond_d

    return v3

    :cond_b
    :goto_2
    const/4 p0, 0x4

    return p0

    :cond_c
    if-eqz v4, :cond_d

    return v3

    :cond_d
    return v1
.end method

.method public getPositionForSection(I)I
    .locals 1

    .line 4197
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 4198
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    .line 4200
    :cond_0
    aget-object p0, p0, p1

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;->position:I

    return p0
.end method

.method public getSectionForPosition(I)I
    .locals 2

    .line 4205
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 4206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ManageApplications"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "section length="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4210
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    aget p0, p0, p1

    return p0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 0

    .line 4192
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    return-object p0
.end method

.method public isEnabled(I)Z
    .locals 7

    .line 3560
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 3561
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    const-string v2, "Disabled app : "

    const-string v3, "ManageApplications"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    if-eqz p1, :cond_5

    .line 3603
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz p0, :cond_5

    .line 3605
    :try_start_0
    check-cast p0, Lcom/android/settings/applications/AppStateMediaManagementAppsBridge;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3606
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/AppStateMediaManagementAppsBridge;->createPermissionState(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3608
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_2
    if-eqz p1, :cond_5

    .line 3614
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz p0, :cond_5

    .line 3616
    :try_start_1
    check-cast p0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3617
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;->createPermissionState(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->shouldBeVisible()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    .line 3619
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_3
    if-eqz p1, :cond_5

    .line 3636
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz p0, :cond_5

    .line 3638
    :try_start_2
    check-cast p0, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3639
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;->getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return p0

    .line 3641
    :catch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_4
    if-eqz p1, :cond_5

    .line 3658
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v5, :cond_5

    .line 3660
    :try_start_3
    check-cast v5, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3661
    invoke-virtual {v5, v6, v0}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->getWifiSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/wifi/ChangeWifiStateDetails;

    invoke-direct {v0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;-><init>()V

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3662
    invoke-virtual {v0, p0, v5}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->checkNetworkSettingsPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1

    .line 3664
    :catch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_5
    if-eqz p1, :cond_5

    .line 3647
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz p0, :cond_5

    .line 3649
    :try_start_4
    check-cast p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3650
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return p0

    .line 3652
    :catch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_6
    if-eqz p1, :cond_5

    .line 3592
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz p0, :cond_5

    .line 3594
    :try_start_5
    new-instance v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    check-cast p0, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3595
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    iget-boolean p0, v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    return p0

    .line 3597
    :catch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_7
    if-eqz p1, :cond_5

    .line 3576
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v5, :cond_5

    .line 3578
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.samsung.knox.securefolder"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 3582
    :cond_1
    :try_start_6
    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    check-cast p0, Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v5, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3583
    invoke-virtual {p0, v6, v5}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    .line 3584
    iget-boolean p0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    if-eqz p0, :cond_2

    iget-boolean p0, v0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->controlEnabled:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    return v1

    .line 3586
    :catch_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_8
    if-eqz p1, :cond_5

    .line 3563
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    .line 3565
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3566
    invoke-static {v2, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$smhasAllowListByMDM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    .line 3570
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isSysAllowlisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3571
    invoke-virtual {p0, p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isDefaultActiveApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    return v1

    :pswitch_9
    if-eqz p1, :cond_5

    .line 3625
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz p0, :cond_5

    .line 3627
    :try_start_7
    new-instance v1, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    check-cast p0, Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3628
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/applications/AppStateUsageBridge;->getUsageInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    iget-boolean p0, v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    return p0

    .line 3630
    :catch_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onAllSizesComputed()V
    .locals 2

    .line 3463
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3465
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 2591
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2592
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2593
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    .line 2594
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 2419
    check-cast p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onBindViewHolder(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;I)V
    .locals 6

    if-nez p2, :cond_0

    .line 3705
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseHeader:Z

    if-eqz v0, :cond_0

    .line 3706
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onBindHeaderViewHolder(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p2, :cond_4

    .line 3708
    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    if-eqz v2, :cond_4

    .line 3709
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmIsPageLaunchedBySearch(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3710
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->applyRippleEffectAtPref(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    .line 3712
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setOnClickListenerAtPref(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    .line 3713
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->sort_by_button:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$2;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3721
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->default_app_settings_layout:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPrefVisible:Z

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3722
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->samsung_app_settings_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPrefVisible:Z

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 3725
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 3726
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p2, p1, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-eqz p2, :cond_5

    .line 3727
    check-cast p1, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateRelativeView(Lcom/samsung/android/settings/widget/SecRelativeLinkView;)V

    :cond_5
    return-void

    .line 3730
    :cond_6
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_b

    .line 3732
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 3733
    monitor-enter v2

    .line 3734
    :try_start_0
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_a

    .line 3735
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/applications/ApplicationsState;->ensureLabelDescription(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 3737
    invoke-static {}, Lcom/android/settingslib/applications/AppUtils;->getKeyword()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3738
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-static {v3, v2, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateSearchKeywordColorSpan(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/widget/TextView;)Landroid/text/SpannableString;

    move-result-object v3

    iget-object v4, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3740
    :cond_7
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 3742
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateIcon(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 3743
    invoke-direct {p0, p1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 3744
    invoke-direct {p0, p1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 3745
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateDisableView(Landroid/content/pm/ApplicationInfo;)V

    .line 3746
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    .line 3747
    iget-object v4, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    .line 3748
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3751
    :cond_8
    iget-object v4, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    if-eqz v4, :cond_9

    .line 3752
    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getContentDescriptionWithSwitch(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 3755
    :cond_9
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3757
    invoke-direct {p0, p1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->hightlightTargetApp(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 3759
    :cond_a
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3760
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setEnabled(Z)V

    .line 3761
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v2, v2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v2, v0, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIsEnable:Z

    if-nez v0, :cond_b

    .line 3762
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3763
    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setEnabled(Z)V

    .line 3764
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSummaryRes:I

    if-lez v0, :cond_b

    .line 3765
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(I)V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 3759
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 3771
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    .line 3772
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 3773
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmNotificationBackend(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v0

    iget-object v3, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v4, v3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSilentView(Z)V

    .line 3774
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_3

    .line 3778
    :cond_c
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setEnabled(Z)V

    goto :goto_4

    .line 3776
    :cond_d
    :goto_3
    iget-object p2, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3782
    :cond_e
    :goto_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 2419
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;
    .locals 6

    .line 2742
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mFooterVisible:Z

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 2743
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->initRelativeViewData()V

    .line 2744
    new-instance p1, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    .line 2745
    sget p2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2747
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    .line 2748
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$dimen;->sec_app_relative_view_padding_top:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    .line 2749
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    .line 2750
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 2746
    invoke-virtual {p1, p2, v0, p0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto/16 :goto_2

    .line 2751
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseHeader:Z

    const-string v2, "noDivider"

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-ne p2, v3, :cond_1

    .line 2752
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->sec_manage_applications_desc:I

    invoke-virtual {p0, p2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2753
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2754
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    const/16 v5, 0x8

    if-eqz v0, :cond_3

    if-ne p2, v5, :cond_3

    .line 2755
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->sec_manage_applications_order:I

    invoke-virtual {p2, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2757
    sget p2, Lcom/android/settings/R$id;->default_app_settings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0xf

    .line 2758
    invoke-virtual {p2, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 2759
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 2760
    sget p2, Lcom/android/settings/R$id;->default_app_settings_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 2761
    sget v1, Lcom/android/settings/R$string;->app_default_dashboard_title:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2762
    sget p2, Lcom/android/settings/R$id;->default_app_settings_summary:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 2763
    sget v1, Lcom/android/settings/R$string;->sec_default_apps_summary:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2766
    sget p2, Lcom/android/settings/R$id;->samsung_app_settings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2767
    invoke-virtual {p2, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 2768
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 2769
    sget p2, Lcom/android/settings/R$id;->samsung_app_settings_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 2770
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2771
    sget v0, Lcom/android/settings/R$string;->sec_app_settings_jpn:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2773
    :cond_2
    sget v0, Lcom/android/settings/R$string;->sec_app_settings:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2776
    :goto_0
    sget p2, Lcom/android/settings/R$id;->filter:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2777
    invoke-virtual {p2, v3}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 2778
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, v3, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 2780
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 2790
    :cond_3
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 p2, 0x1

    if-ne p0, p2, :cond_4

    .line 2793
    invoke-static {p1, p2, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->newView(Landroid/view/ViewGroup;ZZ)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_4
    if-eq p0, v1, :cond_6

    const/4 v0, 0x5

    if-eq p0, v0, :cond_6

    const/4 v0, 0x6

    if-eq p0, v0, :cond_6

    const/4 v0, 0x7

    if-eq p0, v0, :cond_6

    const/16 v0, 0xd

    if-eq p0, v0, :cond_6

    const/16 v0, 0xc

    if-eq p0, v0, :cond_6

    const/16 v0, 0xb

    if-eq p0, v0, :cond_6

    if-eq p0, v5, :cond_6

    const/16 v0, 0xa

    if-eq p0, v0, :cond_6

    const/16 v0, 0x10

    if-ne p0, v0, :cond_5

    goto :goto_1

    .line 2813
    :cond_5
    invoke-static {p1, v4, v4}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->newView(Landroid/view/ViewGroup;ZZ)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    .line 2807
    :cond_6
    :goto_1
    invoke-static {p1, p2, v4}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->newView(Landroid/view/ViewGroup;ZZ)Landroid/view/View;

    move-result-object p1

    .line 2816
    :goto_2
    new-instance p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 2599
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2600
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, 0x0

    .line 2601
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    .line 2602
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onDisabledAppCheckCompleted(Ljava/lang/Boolean;)V
    .locals 0

    .line 3485
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setHasDisabled(Z)V

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 2

    .line 3386
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3387
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3390
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    .line 3391
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 1

    .line 3454
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmShowSystem(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3455
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    :cond_0
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 3412
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    .line 3414
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public onLoadLastUpdatedCompleted()V
    .locals 2

    .line 3479
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3480
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    :cond_0
    return-void
.end method

.method public onLoadLastUsedCompleted()V
    .locals 2

    .line 3472
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3473
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    :cond_0
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 3401
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 4

    .line 3419
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 3423
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmCurrentPkgName(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3427
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 3429
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 3430
    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_5

    .line 3431
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 3434
    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmCurrentPkgName(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3439
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void

    .line 3444
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseHeader:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    if-le v1, v2, :cond_5

    .line 3445
    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mCurrentFastScrollState:I

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->postNotifyItemChange(II)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 3062
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    const-string v1, "ManageApplications"

    if-eqz v0, :cond_0

    .line 3063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRebuildComplete size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 3068
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$integer;->config_num_visible_app_icons:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 3067
    invoke-static {v0, p1, v2}, Lcom/android/settingslib/applications/AppUtils;->preloadTopIcons(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 3070
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_2

    .line 3073
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3075
    :cond_2
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 3076
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOriginalEntries:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3080
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasEnabledEntry:Z

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz p1, :cond_f

    move v5, v0

    .line 3082
    :goto_0
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 3083
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 3084
    sget-boolean v6, Lcom/samsung/android/settings/Rune;->FEATURE_APPS_MANAGE_SOURCES_DENY_ALL:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v6, v6, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    iget-boolean v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mIsEnable:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasEnabledEntry:Z

    if-nez v6, :cond_3

    .line 3088
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 3089
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v6}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3090
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasEnabledEntry:Z

    .line 3093
    :cond_3
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_5

    .line 3094
    iget v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHighlightTargetPosition:I

    if-eq v6, v4, :cond_4

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 3095
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v7, v7, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightTargetPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 3096
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v7, v7, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightTargetPackageUid:I

    if-ne v6, v7, :cond_4

    .line 3097
    iput v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHighlightTargetPosition:I

    .line 3099
    :cond_4
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.samsung.gpuwatchapp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3100
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3108
    :cond_5
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v6, :cond_6

    .line 3109
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_2

    .line 3114
    :cond_6
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v6, v6, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v6, v2, :cond_7

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_7

    .line 3115
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3120
    :cond_7
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3121
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3122
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v7}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmIsWorkOnly(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3123
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    if-eq v6, v7, :cond_b

    .line 3124
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3129
    :cond_8
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3130
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3136
    :cond_9
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v7}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmIsWorkOnly(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3137
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3138
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3143
    :cond_a
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3144
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_b
    :goto_2
    add-int/2addr v5, v2

    goto/16 :goto_0

    .line 3152
    :cond_c
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 3153
    iget-boolean v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseHeader:Z

    if-nez v5, :cond_d

    iget-boolean v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    if-eqz v5, :cond_e

    :cond_d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_e

    .line 3154
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const-wide/16 v7, -0x1

    invoke-direct {v5, v6, v3, v7, v8}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    invoke-virtual {p1, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3156
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuildSections()V

    goto :goto_3

    .line 3158
    :cond_f
    iput-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 3159
    sget-object p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;

    .line 3160
    iput-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    .line 3163
    :goto_3
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmSearchView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmSearchView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    .line 3164
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3165
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmSearchView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object p1

    .line 3166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 3167
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3168
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v3, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v3, v2, :cond_11

    .line 3169
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->setFilterView()V

    goto :goto_4

    .line 3173
    :cond_10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3174
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v3, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v3, v2, :cond_11

    .line 3175
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->setFilterView()V

    .line 3180
    :cond_11
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_12

    .line 3181
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/LoadingViewController;->showEmpty(Z)V

    goto :goto_5

    .line 3187
    :cond_12
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmSearchView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmSearchView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    .line 3188
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3189
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmSearchView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object p1

    .line 3190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 3191
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->filterSearch(Ljava/lang/String;)V

    goto :goto_5

    .line 3196
    :cond_13
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    .line 3202
    :cond_14
    :goto_5
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    if-eq p1, v4, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result p1

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    if-le p1, v0, :cond_15

    .line 3203
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 3204
    iput v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    .line 3208
    :cond_15
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3219
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_16

    return-void

    .line 3226
    :cond_16
    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmIsWorkOnly(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmWorkUserId(Lcom/android/settings/applications/manageapplications/ManageApplications;)I

    move-result p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmIsSecureOrSeparationUserId(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 3229
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState;->haveWorkDisabledApps()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setHasDisabled(Z)V

    goto :goto_6

    .line 3231
    :cond_17
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setHasDisabled(Z)V

    :goto_6
    const-string p1, "onRebuildComplete setHasDisabled"

    .line 3234
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_18

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmFilterContainer(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "Auto selecting filter"

    .line 3236
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fputmFilterType(Lcom/android/settings/applications/manageapplications/ManageApplications;I)V

    .line 3238
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fputmFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;)V

    .line 3239
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 3240
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$msetCompositeFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    .line 3245
    :cond_18
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v0, 0xe

    if-ne p1, v0, :cond_19

    .line 3246
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    :cond_19
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    .line 3396
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 2713
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2714
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2715
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    const-string/jumbo v0, "state_last_scroll_index"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 2699
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2700
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 2702
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->checkDisabledApp(Z)V

    .line 2704
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 2705
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz p0, :cond_0

    .line 2706
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->pause()V

    :cond_0
    return-void
.end method

.method public rebuild()V
    .locals 4

    .line 2871
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    if-nez v0, :cond_0

    goto :goto_3

    .line 2884
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2886
    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 2888
    :cond_1
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 2890
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilter()Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v0

    .line 2892
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v3, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v3, v2, :cond_3

    .line 2893
    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmShowSystem(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 2897
    :cond_2
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTI_BLOCKABLE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v0, v1

    .line 2902
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    if-eqz v1, :cond_4

    .line 2903
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    invoke-direct {v2, v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v0, v2

    .line 2906
    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmShowSystem(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2907
    sget-object v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->LIST_TYPES_WITH_INSTANT:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v2, v2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2908
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    goto :goto_2

    .line 2911
    :cond_5
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    :goto_2
    move-object v0, v1

    .line 2944
    :cond_6
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 2946
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 2874
    :cond_7
    :goto_3
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 2875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not rebuilding until all the app entries loaded. !mHasReceivedLoadEntries="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ManageApplications"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public rebuild(IZ)V
    .locals 1

    .line 2729
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 2732
    :cond_0
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iput p1, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 2733
    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 2734
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 2719
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onDestroy()V

    .line 2720
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 2721
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->release()V

    .line 2723
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSortByDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_1

    .line 2724
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public resume(I)V
    .locals 4

    .line 2653
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume!  mResumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageApplications"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2656
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-boolean v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    invoke-virtual {v0, v3}, Lcom/android/settingslib/applications/ApplicationsState$Session;->checkDisabledApp(Z)V

    .line 2658
    iput-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 2659
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onResume()V

    .line 2660
    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 2661
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz p1, :cond_1

    .line 2662
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/AppStateBaseBridge;->resume(Z)V

    .line 2664
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    goto :goto_0

    .line 2666
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(IZ)V

    .line 2670
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_3

    .line 2671
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    if-eqz v0, :cond_3

    .line 2673
    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmNotificationBackend(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result p1

    .line 2677
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v3, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-eqz v3, :cond_3

    .line 2678
    check-cast v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    .line 2679
    iget-boolean v3, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    if-eq v3, p1, :cond_3

    .line 2680
    iput-boolean p1, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    .line 2681
    iget-object p1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 2682
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 2683
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 2684
    iput-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    .line 2692
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    .line 2693
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->checkExternalSourcesCondition()V

    :cond_4
    return-void
.end method

.method public setCompositeFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 0

    .line 2606
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2607
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public setFilter(Lcom/android/settings/applications/manageapplications/AppFilterItem;)V
    .locals 6

    .line 2611
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 2613
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2617
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x1

    const-string v3, "NSTE0019"

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 2618
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v4

    const/4 v5, 0x0

    if-ne v1, v4, :cond_0

    .line 2619
    sget v1, Lcom/android/settings/R$id;->sort_order_frequent_notification:I

    invoke-virtual {p0, v1, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(IZ)V

    const-string v1, "most frequent"

    .line 2621
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 2623
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 2624
    sget v1, Lcom/android/settings/R$id;->sort_order_recent_notification:I

    invoke-virtual {p0, v1, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(IZ)V

    const-string v1, "most recent"

    .line 2626
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    .line 2628
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 2629
    sget v1, Lcom/android/settings/R$id;->sort_order_alpha:I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(IZ)V

    const-string v1, "blocked"

    .line 2631
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    .line 2636
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 2638
    sget v1, Lcom/android/settings/R$id;->sort_order_alpha:I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(IZ)V

    goto :goto_0

    .line 2641
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    const-string v1, "all"

    .line 2643
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2646
    :cond_4
    :goto_0
    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result p1

    if-eq p0, p1, :cond_5

    const p0, 0x8cb5

    .line 2647
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method setUnvisiblePrefs(Z)V
    .locals 4

    .line 3013
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUsePref:Z

    if-eqz v0, :cond_0

    .line 3014
    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mPrefVisible:Z

    .line 3016
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    if-eqz v1, :cond_1

    .line 3017
    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mFooterVisible:Z

    .line 3019
    :cond_1
    sget-boolean v2, Lcom/samsung/android/settings/Rune;->FEATURE_APPS_MANAGE_SOURCES_DENY_ALL:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v2, v2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHeaderButtonVisible:Z

    if-eq v2, p1, :cond_2

    .line 3022
    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHeaderButtonVisible:Z

    .line 3023
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 3025
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    :cond_4
    :goto_0
    return-void
.end method

.method updateLoading()V
    .locals 2

    .line 3253
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3255
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    goto :goto_1

    .line 3257
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0}, Lcom/android/settings/widget/LoadingViewController;->showLoadingViewDelayed()V

    :goto_1
    return-void
.end method
