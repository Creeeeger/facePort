.class public Lcom/android/settings/applications/manageapplications/ManageApplications;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final EXTRA_EXPAND_SEARCH_VIEW:Ljava/lang/String; = "expand_search_view"

.field public static final LIST_TYPES_WITH_INSTANT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mHideApp:Z

.field private static mHideAppList:Ljava/lang/String;

.field private static mHideNotificationList:[Ljava/lang/String;

.field private static mSkipApp:Z


# instance fields
.field final handler:Landroid/os/Handler;

.field private mAppNotiSubTitle:Landroid/widget/LinearLayout;

.field private mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mBooster:Lcom/samsung/android/settings/Booster;

.field public mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentUid:I

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewText:Landroid/widget/TextView;

.field mExpandSearch:Z

.field private mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

.field mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

.field private mFilterContainer:Landroid/widget/LinearLayout;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mFilterType:I

.field private mFromPowerUsageSettings:Z

.field private mFromSecuritySettings:Z

.field private mHighlightKey:Ljava/lang/String;

.field public mHighlightTargetPackageName:Ljava/lang/String;

.field public mHighlightTargetPackageUid:I

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mIsPageLaunchedBySearch:Z

.field private mIsPersonalOnly:Z

.field private mIsSecureOrSeparationUserId:Z

.field private mIsWorkOnly:Z

.field public mListType:I

.field private mLoadingContainer:Landroid/view/View;

.field private mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field mNotificationClickEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field public mNotificationClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

.field private mOptionsMenu:Landroid/view/Menu;

.field mPinnedHeader:Landroid/view/View;

.field private mRadioGroupFilter:Landroid/widget/RadioGroup;

.field private mRadioGroupOrder:Landroid/widget/RadioGroup;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mResetAppsDialogCallback:Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;

.field private mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

.field private mRootView:Landroid/view/View;

.field private mSearchExpanded:Z

.field private mSearchView:Landroidx/appcompat/widget/SearchView;

.field private mShowSystem:Z

.field mSortOrder:I

.field private mStorageItemUserID:I

.field private mStorageType:I

.field private mSwitchInSelectDialogView:Landroid/view/View;

.field public mUpdatedListCount:I

.field private mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field private mUserManager:Landroid/os/UserManager;

.field private mVolumeUuid:Ljava/lang/String;

.field private mWorkUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmApplications(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentPkgName(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmptyView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/AppFilterItem;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterContainer(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterSpinner(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterType(Lcom/android/settings/applications/manageapplications/ManageApplications;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHighlightKey(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPageLaunchedBySearch(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsPageLaunchedBySearch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSecureOrSeparationUserId(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsSecureOrSeparationUserId:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWorkOnly(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadingContainer(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationBackend(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadioGroupFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/RadioGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRadioGroupFilter:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadioGroupOrder(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/RadioGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRadioGroupOrder:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowSystem(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchInSelectDialogView(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSwitchInSelectDialogView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageStatsManager(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/app/usage/IUsageStatsManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkUserId(Lcom/android/settings/applications/manageapplications/ManageApplications;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFilterType(Lcom/android/settings/applications/manageapplications/ManageApplications;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPageLaunchedBySearch(Lcom/android/settings/applications/manageapplications/ManageApplications;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsPageLaunchedBySearch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowSystem(Lcom/android/settings/applications/manageapplications/ManageApplications;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misFastScrollEnabled(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->isFastScrollEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetCompositeFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setCompositeFilter()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmHideApp()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHideApp:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmHideNotificationList()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHideNotificationList:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmSkipApp()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSkipApp:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmSkipApp(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSkipApp:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smhasAllowListByMDM(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->hasAllowListByMDM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 241
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    .line 348
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 349
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x3

    .line 350
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 348
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->LIST_TYPES_WITH_INSTANT:Ljava/util/Set;

    .line 416
    sput-boolean v2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHideApp:Z

    .line 417
    sput-boolean v2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSkipApp:Z

    const/4 v0, 0x0

    .line 418
    sput-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHideAppList:Ljava/lang/String;

    .line 4583
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$6;

    invoke-direct {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$6;-><init>()V

    sput-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 233
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 294
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 313
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchExpanded:Z

    const/4 v1, 0x0

    .line 402
    iput-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mBooster:Lcom/samsung/android/settings/Booster;

    .line 425
    iput-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    .line 426
    iput-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 430
    iput-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    .line 446
    iput-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightTargetPackageName:Ljava/lang/String;

    .line 447
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightTargetPackageUid:I

    .line 450
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$1;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->handler:Landroid/os/Handler;

    return-void
.end method

.method static getCompositeFilter(IILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .locals 1

    .line 1089
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;

    invoke-direct {v0, p2}, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x3

    if-ne p0, p2, :cond_1

    if-nez p1, :cond_0

    .line 1092
    new-instance p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_APPS_EXCEPT_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v0, p0

    :cond_0
    return-object v0

    :cond_1
    const/16 p1, 0x9

    if-ne p0, p1, :cond_2

    .line 1097
    new-instance p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTitleResId(Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 3

    .line 2200
    sget v0, Lcom/android/settings/R$string;->category_applications:I

    const-string v1, ":settings:show_fragment_title_resid"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_0

    const-string v2, "classname"

    .line 2205
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 2207
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 2209
    :cond_1
    const-class p0, Lcom/android/settings/Settings$UsageAccessSettingsActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2210
    sget v0, Lcom/android/settings/R$string;->usage_access:I

    goto/16 :goto_2

    .line 2211
    :cond_2
    const-class p0, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2212
    sget v0, Lcom/android/settings/R$string;->high_power_apps:I

    goto/16 :goto_2

    .line 2213
    :cond_3
    const-class p0, Lcom/android/settings/Settings$OverlaySettingsActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 2216
    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getOverlayTitle()I

    move-result v0

    goto/16 :goto_2

    .line 2218
    :cond_4
    const-class p0, Lcom/android/settings/Settings$WriteSettingsActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 2221
    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result v0

    goto/16 :goto_2

    .line 2223
    :cond_5
    const-class p0, Lcom/android/settings/Settings$ManageExternalSourcesActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 2224
    sget v0, Lcom/android/settings/R$string;->install_other_apps:I

    goto/16 :goto_2

    .line 2225
    :cond_6
    const-class p0, Lcom/android/settings/Settings$ChangeWifiStateActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 2226
    sget v0, Lcom/android/settings/R$string;->change_wifi_state_title:I

    goto/16 :goto_2

    .line 2227
    :cond_7
    const-class p0, Lcom/android/settings/Settings$ManageExternalStorageActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 2228
    sget v0, Lcom/android/settings/R$string;->manage_external_storage_title:I

    goto/16 :goto_2

    .line 2229
    :cond_8
    const-class p0, Lcom/android/settings/Settings$MediaManagementAppsActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 2230
    sget v0, Lcom/android/settings/R$string;->media_management_apps_title:I

    goto :goto_2

    .line 2231
    :cond_9
    const-class p0, Lcom/android/settings/Settings$AlarmsAndRemindersActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 2232
    sget v0, Lcom/android/settings/R$string;->alarms_and_reminders_title:I

    goto :goto_2

    .line 2233
    :cond_a
    const-class p0, Lcom/android/settings/Settings$NotificationAppListActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    const-class p0, Lcom/android/settings/Settings$NotificationReviewPermissionsActivity;

    .line 2235
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 2234
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_1

    .line 2237
    :cond_b
    const-class p0, Lcom/android/settings/applications/appinfo/AppLocaleDetails;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 2238
    sget v0, Lcom/android/settings/R$string;->app_locales_picker_menu_title:I

    goto :goto_2

    :cond_c
    const-string p0, "AppSetting"

    .line 2241
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 2242
    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getAppSettingsTitle()I

    move-result v0

    goto :goto_2

    .line 2246
    :cond_d
    sget-boolean p0, Lcom/samsung/android/settings/Rune;->FEATURE_MANAGE_UNKNOWN_APPS:Z

    if-eqz p0, :cond_e

    const-class p0, Lcom/android/settings/Settings$ManageUnknownSourceAppsActivity;

    .line 2247
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 2248
    sget v0, Lcom/android/settings/R$string;->sec_manage_unknown_app:I

    goto :goto_2

    :cond_e
    const/4 p0, -0x1

    if-ne v1, p0, :cond_f

    goto :goto_2

    :cond_f
    move v0, v1

    goto :goto_2

    .line 2236
    :cond_10
    :goto_1
    sget v0, Lcom/android/settings/R$string;->app_notifications_title:I

    :goto_2
    return v0
.end method

.method private static hasAllowListByMDM(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    const-string v0, "ManageApplications"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "content://com.sec.knox.provider2/ApplicationPolicy"

    .line 1394
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1395
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "getAllPackagesFromBatteryOptimizationWhiteList"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1399
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    const-string p0, "getAllPackagesFromBatteryOptimizationWhiteList"

    .line 1402
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1404
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 1406
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allow list app:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1409
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 1415
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    :try_start_1
    const-string p0, "failed to get allow list by MDM."

    .line 1413
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return v1

    :goto_3
    if-eqz v2, :cond_4

    .line 1415
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1416
    :cond_4
    throw p0
.end method

.method private isFastScrollEnabled()Z
    .locals 4

    .line 4504
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    return v3

    .line 4513
    :cond_0
    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method private launchedBySearch()Ljava/lang/Boolean;
    .locals 2

    .line 4520
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4522
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 4524
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4526
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 4528
    :cond_1
    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightKey:Ljava/lang/String;

    .line 4529
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private reportIfRestrictedSawIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "ManageApplications"

    .line 857
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "package"

    .line 858
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 862
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    .line 863
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    const-string p0, "Error obtaining calling uid"

    .line 865
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "platform_compat"

    .line 869
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 868
    invoke-static {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "Error obtaining IPlatformCompat service"

    .line 871
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error reporting SAW intent restriction"

    .line 878
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method private setCompositeFilter()V
    .locals 3

    .line 1221
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getCompositeFilter(IILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilter()Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v0

    .line 1225
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-eqz v1, :cond_1

    .line 1226
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v0, v1

    .line 1228
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsPersonalOnly:Z

    if-eqz v1, :cond_2

    .line 1229
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v0, v1

    .line 1232
    :cond_2
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setCompositeFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-void
.end method

.method private startAppInfoFragment(Ljava/lang/Class;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 1632
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1633
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1635
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 1639
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    const/4 v6, 0x1

    .line 1640
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v7

    move-object v1, p1

    move-object v5, p0

    .line 1639
    invoke-static/range {v1 .. v7}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method private startApplicationDetailsActivity(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 3

    .line 1240
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 1361
    :pswitch_0
    const-class p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    sget v0, Lcom/android/settings/R$string;->application_info_label:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto/16 :goto_1

    .line 1244
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    const-string v1, "com.sec.android.intent.action.SEC_APPLICATION_SETTINGS"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsSecureOrSeparationUserId:Z

    if-nez v0, :cond_0

    .line 1246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1247
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    .line 1246
    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/AppStoreUtil;->resolveIntentAsUser(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 1250
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1251
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1250
    invoke-static {v0, v1}, Lcom/android/settings/applications/AppStoreUtil;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no intent for App Settings - Pkg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsSecureOrSeparationUserId:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ManageApplications"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1258
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_settings"

    const/4 v2, 0x1

    .line 1260
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "StartEdit"

    .line 1261
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1262
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v1

    const v2, 0xeacf

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    .line 1263
    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-eqz p1, :cond_2

    .line 1264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 1266
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_2
    const/16 p1, 0x777

    const/16 v0, 0x1fc4

    .line 1349
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    .line 1351
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings/localepicker/AppLocalePickerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1353
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    const-string/jumbo v1, "uid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1354
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1344
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->toggleSwitchMediaManagementApps(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_1

    .line 1337
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->toggleSwitchAlarmsAndReminders(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_1

    .line 1330
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->toggleSwitchManageExternalStorage(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_1

    .line 1323
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->toggleSwitchWifiAccess(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_1

    .line 1317
    :pswitch_7
    const-class p1, Lcom/android/settings/applications/AppStorageSettings;

    sget v0, Lcom/android/settings/R$string;->game_storage_settings:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_1

    .line 1313
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->toggleSwitchManageSources(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_1

    .line 1307
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->toggleSwitchWriteSettings(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_1

    .line 1301
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->toggleSwitchOverlay(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_1

    .line 1295
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->toggleSwitchHighPower(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_1

    .line 1286
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->toggleSwitchUsageAccess(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_1

    .line 1290
    :pswitch_d
    const-class p1, Lcom/android/settings/applications/AppStorageSettings;

    sget v0, Lcom/android/settings/R$string;->storage_settings:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_1

    .line 1273
    :pswitch_e
    const-class v0, Lcom/android/settings/notification/app/AppNotificationSettings;

    sget v1, Lcom/android/settings/R$string;->app_notifications_title:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 1277
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "from"

    const-string v1, "more"

    .line 1278
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "app"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x8cb5

    .line 1280
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NSTE0034"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private toggleSwitchAlarmsAndReminders(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 1500
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    .line 1501
    monitor-enter p1

    .line 1503
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1505
    :try_start_1
    new-instance v0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1506
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;->createPermissionState(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 1511
    :try_start_2
    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->shouldBeVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1512
    :cond_0
    monitor-exit p1

    return-void

    :catch_0
    const-string p0, "ManageApplications"

    const-string v0, "Click disabled app"

    .line 1508
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    monitor-exit p1

    return-void

    .line 1515
    :cond_1
    new-instance v0, Lcom/android/settings/applications/appinfo/AlarmsAndRemindersDetails;

    invoke-direct {v0}, Lcom/android/settings/applications/appinfo/AlarmsAndRemindersDetails;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->isAllowed()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/settings/applications/appinfo/AlarmsAndRemindersDetails;->setCanScheduleAlarms(Landroid/content/Context;ZI)V

    .line 1517
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    if-eqz p0, :cond_3

    .line 1518
    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 1520
    :cond_3
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method private toggleSwitchHighPower(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1369
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    .line 1370
    monitor-enter p1

    .line 1371
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isSysAllowlisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1374
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->hasAllowListByMDM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1379
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/HighPowerDetail;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setPowerAllowlisted(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1381
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    if-eqz p0, :cond_1

    .line 1382
    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 1384
    :cond_1
    monitor-exit p1

    goto :goto_1

    .line 1376
    :cond_2
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    .line 1384
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method private toggleSwitchManageExternalStorage(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 1550
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    .line 1551
    monitor-enter p1

    .line 1553
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1555
    :try_start_1
    new-instance v0, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1556
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;->getManageExternalStoragePermState(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 1561
    :try_start_2
    iget-boolean v0, v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    if-nez v0, :cond_1

    .line 1562
    :cond_0
    monitor-exit p1

    return-void

    :catch_0
    const-string p0, "ManageApplications"

    const-string v0, "Click disabled app"

    .line 1558
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    monitor-exit p1

    return-void

    .line 1565
    :cond_1
    new-instance v0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;

    invoke-direct {v0}, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->setManageExternalStorageState(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 1567
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    if-eqz p0, :cond_3

    .line 1568
    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 1570
    :cond_3
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method private toggleSwitchManageSources(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 5

    if-eqz p1, :cond_6

    .line 1575
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_6

    .line 1576
    monitor-enter p1

    .line 1578
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1580
    :try_start_1
    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1581
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "ManageApplications"

    const-string v0, "Click disabled app"

    .line 1583
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    monitor-exit p1

    return-void

    .line 1587
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmSummaryRes(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)I

    move-result v0

    sget v2, Lcom/android/settings/R$string;->disabled_by_admin:I

    if-ne v0, v2, :cond_1

    .line 1588
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmEnforcedAdmin(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1589
    monitor-exit p1

    return-void

    :cond_1
    if-eqz v1, :cond_5

    .line 1591
    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 1594
    :cond_2
    new-instance v0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;

    invoke-direct {v0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->setCanInstallApps(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 1596
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    if-eqz p0, :cond_4

    .line 1597
    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 1599
    :cond_4
    monitor-exit p1

    goto :goto_3

    .line 1592
    :cond_5
    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    .line 1599
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_6
    :goto_3
    return-void
.end method

.method private toggleSwitchMediaManagementApps(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 1475
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    .line 1476
    monitor-enter p1

    .line 1478
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1480
    :try_start_1
    new-instance v0, Lcom/android/settings/applications/AppStateMediaManagementAppsBridge;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/settings/applications/AppStateMediaManagementAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1481
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/applications/AppStateMediaManagementAppsBridge;->createPermissionState(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 1486
    :try_start_2
    iget-boolean v0, v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    if-nez v0, :cond_1

    .line 1487
    :cond_0
    monitor-exit p1

    return-void

    :catch_0
    const-string p0, "ManageApplications"

    const-string v0, "Click disabled app"

    .line 1483
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    monitor-exit p1

    return-void

    .line 1490
    :cond_1
    new-instance v0, Lcom/android/settings/applications/appinfo/MediaManagementAppsDetails;

    invoke-direct {v0}, Lcom/android/settings/applications/appinfo/MediaManagementAppsDetails;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/settings/applications/appinfo/MediaManagementAppsDetails;->setCanManageMedia(Landroid/content/Context;IZ)V

    .line 1492
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    if-eqz p0, :cond_3

    .line 1493
    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 1495
    :cond_3
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method private toggleSwitchOverlay(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 1422
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    .line 1423
    monitor-enter p1

    const/4 v0, 0x0

    .line 1425
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1427
    :try_start_1
    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1428
    invoke-virtual {v1, v3, v2}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "ManageApplications"

    const-string v0, "Click disabled app"

    .line 1430
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    monitor-exit p1

    return-void

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1435
    iget-boolean v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->controlEnabled:Z

    if-eqz v1, :cond_4

    const-string v1, "com.samsung.knox.securefolder"

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1436
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 1440
    :cond_1
    new-instance v1, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;

    invoke-direct {v1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->setCanDrawOverlay(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 1442
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    if-eqz p0, :cond_3

    .line 1443
    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 1445
    :cond_3
    monitor-exit p1

    goto :goto_3

    .line 1437
    :cond_4
    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    .line 1445
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method private toggleSwitchUsageAccess(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 7

    if-eqz p1, :cond_5

    .line 1525
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    .line 1526
    monitor-enter p1

    const/4 v0, 0x0

    .line 1528
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1530
    :try_start_1
    new-instance v0, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1531
    invoke-virtual {v1, v3, v2}, Lcom/android/settings/applications/AppStateUsageBridge;->getUsageInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "ManageApplications"

    const-string v0, "Click disabled app"

    .line 1533
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    monitor-exit p1

    return-void

    :cond_0
    :goto_0
    move-object v4, v0

    if-eqz v4, :cond_4

    .line 1537
    iget-boolean v0, v4, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    if-nez v0, :cond_1

    goto :goto_2

    .line 1540
    :cond_1
    new-instance v0, Lcom/android/settings/applications/UsageAccessDetails;

    invoke-direct {v0}, Lcom/android/settings/applications/UsageAccessDetails;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move v6, v2

    move-object v2, v3

    move v3, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/applications/UsageAccessDetails;->setHasAccess(Landroid/content/Context;Ljava/lang/String;ILcom/android/settings/applications/AppStateUsageBridge$UsageState;Z)V

    .line 1542
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    if-eqz p0, :cond_3

    .line 1543
    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 1545
    :cond_3
    monitor-exit p1

    goto :goto_3

    .line 1538
    :cond_4
    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    .line 1545
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method private toggleSwitchWifiAccess(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 1604
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    .line 1605
    monitor-enter p1

    const/4 v0, 0x0

    .line 1607
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1609
    :try_start_1
    new-instance v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1610
    invoke-virtual {v1, v3, v2}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->getWifiSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1615
    :try_start_2
    iget-boolean v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    if-nez v1, :cond_0

    .line 1616
    monitor-exit p1

    return-void

    :catch_0
    const-string p0, "ManageApplications"

    const-string v0, "Click disabled app"

    .line 1612
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    monitor-exit p1

    return-void

    .line 1619
    :cond_0
    new-instance v1, Lcom/android/settings/wifi/ChangeWifiStateDetails;

    invoke-direct {v1}, Lcom/android/settings/wifi/ChangeWifiStateDetails;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->setCanChangeWifiState(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 1621
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    if-eqz p0, :cond_2

    .line 1622
    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 1624
    :cond_2
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method private toggleSwitchWriteSettings(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 1450
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    .line 1451
    monitor-enter p1

    const/4 v0, 0x0

    .line 1453
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1455
    :try_start_1
    new-instance v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1456
    invoke-virtual {v1, v3, v2}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "ManageApplications"

    const-string v0, "Click disabled app"

    .line 1458
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    monitor-exit p1

    return-void

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1462
    iget-boolean v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    if-nez v1, :cond_1

    goto :goto_2

    .line 1465
    :cond_1
    new-instance v1, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;

    invoke-direct {v1}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->setCanWriteSettings(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 1467
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    if-eqz p0, :cond_3

    .line 1468
    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 1470
    :cond_3
    monitor-exit p1

    goto :goto_3

    .line 1463
    :cond_4
    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    .line 1470
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method static updateSearchKeywordColorSpan(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/widget/TextView;)Landroid/text/SpannableString;
    .locals 10

    .line 4535
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4536
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-static {}, Lcom/android/settingslib/applications/AppUtils;->getKeyword()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " "

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4538
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ForegroundColorSpan;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ForegroundColorSpan;

    .line 4539
    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 4540
    invoke-virtual {v0, v6}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4543
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4544
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 4545
    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    move v5, v4

    .line 4549
    :cond_1
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v6, v3, v7}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4551
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([C)V

    .line 4557
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 4558
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 4559
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    .line 4561
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 4564
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    if-gez v6, :cond_4

    goto :goto_1

    .line 4570
    :cond_4
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    sget v9, Lcom/android/settings/R$color;->sec_highlight_text_color:I

    invoke-virtual {p0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v6, v5

    add-int/2addr v5, v7

    const/16 v9, 0x21

    invoke-virtual {v0, v8, v6, v5, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4573
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 4576
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_1

    goto :goto_1

    :cond_5
    return-object v0
.end method


# virtual methods
.method createHeader()V
    .locals 6

    .line 978
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 979
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->pinned_header:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 992
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->sec_filter_order_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 993
    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSwitchInSelectDialogView:Landroid/view/View;

    .line 994
    sget v3, Lcom/android/settings/R$id;->dialog_switch_section:I

    .line 995
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    .line 996
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 997
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSwitchInSelectDialogView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->group_filter_container:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterContainer:Landroid/widget/LinearLayout;

    .line 998
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSwitchInSelectDialogView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->group_filter:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRadioGroupFilter:Landroid/widget/RadioGroup;

    .line 999
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSwitchInSelectDialogView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->group_order:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRadioGroupOrder:Landroid/widget/RadioGroup;

    .line 1001
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSwitchInSelectDialogView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->filter_all:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 1002
    sget v4, Lcom/android/settings/R$string;->sec_all_text_app:I

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 1003
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSwitchInSelectDialogView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->filter_enable:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 1004
    sget v4, Lcom/android/settings/R$string;->sec_enable_text_app:I

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 1005
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSwitchInSelectDialogView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->filter_disable:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 1006
    sget v4, Lcom/android/settings/R$string;->sec_disable_text_app:I

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 1008
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSwitchInSelectDialogView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->order_name:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 1009
    sget v4, Lcom/android/settings/R$string;->sec_sort_by_name:I

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 1010
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSwitchInSelectDialogView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->order_size:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 1011
    sget v4, Lcom/android/settings/R$string;->sec_sort_by_size:I

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 1012
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSwitchInSelectDialogView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->order_last_used:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 1013
    sget v4, Lcom/android/settings/R$string;->sec_sort_by_last_used:I

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 1014
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSwitchInSelectDialogView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->order_last_updated:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 1015
    sget v4, Lcom/android/settings/R$string;->sec_sort_by_last_updated:I

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 1017
    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v4, 0xf

    if-eqz v2, :cond_0

    if-eq v2, v4, :cond_0

    .line 1018
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/settings/R$layout;->sec_apps_filter_spinner:I

    .line 1019
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mPinnedHeader:Landroid/view/View;

    .line 1020
    invoke-virtual {v0, v4}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 1021
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 1023
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mPinnedHeader:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->filter_spinner:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    .line 1024
    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->semSetRoundedCorners(I)V

    .line 1025
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/Spinner;->semSetRoundedCornerColor(II)V

    .line 1026
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    .line 1027
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1028
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1029
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1033
    :cond_0
    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object v0

    .line 1034
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getDefaultFilterType(I)I

    move-result v0

    .line 1038
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eqz v1, :cond_1

    if-eq v1, v4, :cond_1

    .line 1039
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 1051
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1053
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 1054
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 1055
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1057
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1056
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1058
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_3
    add-int/2addr v3, v1

    goto :goto_0

    .line 1062
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1063
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 1064
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 1070
    :cond_5
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_6

    .line 1071
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 1072
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 1073
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 1075
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->disableFilter(I)V

    .line 1079
    :cond_6
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 1080
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 1083
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setCompositeFilter()V

    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 1729
    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    packed-switch p0, :pswitch_data_0

    .line 1756
    :pswitch_0
    sget p0, Lcom/android/settings/R$string;->help_uri_apps:I

    return p0

    .line 1753
    :pswitch_1
    sget p0, Lcom/android/settings/R$string;->help_uri_media_management_apps:I

    return p0

    .line 1751
    :pswitch_2
    sget p0, Lcom/android/settings/R$string;->help_uri_alarms_and_reminders:I

    return p0

    .line 1749
    :pswitch_3
    sget p0, Lcom/android/settings/R$string;->help_uri_manage_external_storage:I

    return p0

    .line 1747
    :pswitch_4
    sget p0, Lcom/android/settings/R$string;->help_uri_apps_wifi_access:I

    return p0

    .line 1745
    :pswitch_5
    sget p0, Lcom/android/settings/R$string;->help_uri_apps_overlay:I

    return p0

    .line 1743
    :pswitch_6
    sget p0, Lcom/android/settings/R$string;->help_uri_apps_manage_sources:I

    return p0

    .line 1741
    :pswitch_7
    sget p0, Lcom/android/settings/R$string;->help_uri_apps_write_settings:I

    return p0

    .line 1739
    :pswitch_8
    sget p0, Lcom/android/settings/R$string;->help_uri_apps_overlay:I

    return p0

    .line 1737
    :pswitch_9
    sget p0, Lcom/android/settings/R$string;->help_uri_apps_high_power:I

    return p0

    .line 1733
    :pswitch_a
    sget p0, Lcom/android/settings/R$string;->help_url_usage_access:I

    return p0

    .line 1735
    :pswitch_b
    sget p0, Lcom/android/settings/R$string;->help_uri_apps_storage:I

    return p0

    .line 1731
    :pswitch_c
    sget p0, Lcom/android/settings/R$string;->help_uri_notifications:I

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 550
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    packed-switch p1, :pswitch_data_0

    .line 583
    :pswitch_0
    const-class p0, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 580
    :pswitch_1
    const-class p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 577
    :pswitch_2
    const-class p0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 575
    :pswitch_3
    const-class p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 569
    :pswitch_4
    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFromSecuritySettings:Z

    if-eqz p0, :cond_0

    .line 570
    const-class p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 572
    :cond_0
    const-class p0, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 563
    :pswitch_5
    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFromPowerUsageSettings:Z

    if-eqz p0, :cond_1

    .line 564
    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 566
    :cond_1
    const-class p0, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 561
    :pswitch_6
    const-class p0, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 552
    :pswitch_7
    const-class p0, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 1104
    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v0, 0xdd

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0x777

    return p0

    :pswitch_2
    const/16 p0, 0x752

    return p0

    :pswitch_3
    const/16 p0, 0x74d

    return p0

    :pswitch_4
    const/16 p0, 0x71e

    return p0

    :pswitch_5
    const/16 p0, 0x152

    return p0

    :pswitch_6
    const/16 p0, 0x346

    return p0

    :pswitch_7
    const/16 p0, 0x328

    return p0

    :pswitch_8
    return v0

    :pswitch_9
    const/16 p0, 0xb8

    return p0

    :pswitch_a
    const/16 p0, 0x5f

    return p0

    :pswitch_b
    const/16 p0, 0xb6

    return p0

    :pswitch_c
    const/16 p0, 0x85

    return p0

    :pswitch_d
    const/16 p0, 0x41

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 4618
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const-string/jumbo p0, "top_level_apps"

    return-object p0

    .line 4623
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFromSecuritySettings:Z

    if-eqz p0, :cond_1

    const-string/jumbo p0, "top_level_security_and_privacy"

    return-object p0

    :cond_1
    const-string/jumbo p0, "top_level_general"

    return-object p0

    :cond_2
    const-string/jumbo p0, "top_level_notifications"

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 1205
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 1211
    iget p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_1

    const/4 p3, 0x6

    if-eq p2, p3, :cond_1

    const/4 p3, 0x7

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 1215
    :cond_0
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_1

    .line 1213
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 2044
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2047
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2049
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 2048
    invoke-static {v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getApplicationPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string p0, "ManageApplications"

    const-string p1, "Cannot find position for child, skipping onClick handling"

    .line 2052
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2055
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getApplicationCount()I

    move-result v1

    if-le v1, v0, :cond_9

    .line 2056
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2058
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 2062
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 2063
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    .line 2066
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    .line 2067
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x5

    const/16 v3, 0x41

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    .line 2068
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    const/16 v1, 0xedb

    .line 2069
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 2071
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v4

    .line 2069
    invoke-static {v3, v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 2073
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    const/16 v1, 0xf28

    .line 2074
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 2076
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v4

    .line 2074
    invoke-static {v3, v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 2078
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    const/16 v1, 0xf29

    .line 2079
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 2081
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v4

    .line 2079
    invoke-static {v3, v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_1

    :cond_5
    const/16 v2, 0xd

    if-eq v1, v2, :cond_7

    const/16 v2, 0xc

    if-eq v1, v2, :cond_7

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    const/16 v2, 0xb

    if-eq v1, v2, :cond_7

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    goto :goto_0

    :cond_6
    if-ne v1, v4, :cond_8

    .line 2087
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    .line 2088
    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationClickEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    goto :goto_1

    .line 2085
    :cond_7
    :goto_0
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mClickHolder:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    .line 2092
    :cond_8
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startApplicationDetailsActivity(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 2095
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, v4}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    nop

    :cond_9
    :goto_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 2036
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 2038
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setVisibilityDefaultSearch(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 605
    const-class v0, Lcom/android/settings/Settings$NotificationReviewPermissionsActivity;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->enableAutoFlowLogging(Z)V

    .line 608
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    .line 609
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 610
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 613
    invoke-static {v3}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v4

    const-string v5, "ManageApplications"

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/android/settings/Utils;->isFrpChallengeRequired(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p0, "Refusing to start because device is not provisioned"

    .line 614
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    return-void

    .line 619
    :cond_0
    move-object v4, v3

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyEventListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;)V

    .line 620
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->launchedBySearch()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsPageLaunchedBySearch:Z

    .line 623
    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUserManager:Landroid/os/UserManager;

    .line 624
    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 627
    new-instance v4, Lcom/samsung/android/settings/Booster;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/samsung/android/settings/Booster;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mBooster:Lcom/samsung/android/settings/Booster;

    const/16 v6, 0xbb8

    .line 628
    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/Booster;->start(I)V

    .line 631
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 632
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    const-string v8, "fromFragment"

    .line 635
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v8, v7

    :goto_0
    if-eqz v8, :cond_2

    const-string v9, "security_settings"

    .line 636
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v2

    goto :goto_1

    :cond_2
    move v9, v1

    :goto_1
    iput-boolean v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFromSecuritySettings:Z

    if-eqz v8, :cond_3

    const-string v9, "power_usage"

    .line 637
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v2

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_2
    iput-boolean v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFromPowerUsageSettings:Z

    .line 640
    invoke-static {v4, v6}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getTitleResId(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v8

    if-eqz v6, :cond_4

    const-string v9, "classname"

    .line 641
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_4
    move-object v9, v7

    :goto_3
    if-nez v9, :cond_5

    .line 643
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 647
    :cond_5
    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUpdatedListCount:I

    .line 648
    iput-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightTargetPackageName:Ljava/lang/String;

    .line 649
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 651
    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightTargetPackageName:Ljava/lang/String;

    .line 652
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    iput v10, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHighlightTargetPackageUid:I

    .line 656
    :cond_6
    const-class v10, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x4

    if-eqz v10, :cond_8

    if-eqz v6, :cond_7

    const-string/jumbo v0, "volumeUuid"

    .line 657
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 658
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    const-string/jumbo v0, "storageType"

    .line 659
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    const/4 v0, 0x3

    .line 660
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    goto :goto_4

    .line 663
    :cond_7
    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 666
    :goto_4
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    goto/16 :goto_6

    .line 669
    :cond_8
    const-class v10, Lcom/android/settings/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 670
    iput v11, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 672
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_6

    .line 674
    :cond_9
    const-class v10, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v0, 0x5

    .line 675
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 677
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_6

    .line 679
    :cond_a
    const-class v10, Lcom/android/settings/Settings$OverlaySettingsActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v0, 0x6

    .line 680
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 682
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    .line 684
    invoke-direct {p0, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->reportIfRestrictedSawIntent(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 685
    :cond_b
    const-class v10, Lcom/android/settings/Settings$WriteSettingsActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v0, 0x7

    .line 686
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 688
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_6

    .line 690
    :cond_c
    const-class v10, Lcom/android/settings/Settings$ManageExternalSourcesActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 692
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const/16 v0, 0x8

    .line 694
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    goto/16 :goto_6

    .line 695
    :cond_d
    const-class v10, Lcom/android/settings/Settings$GamesStorageActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/16 v0, 0x9

    .line 696
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 698
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    goto/16 :goto_6

    .line 701
    :cond_e
    const-class v10, Lcom/android/settings/Settings$ChangeWifiStateActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 703
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const/16 v0, 0xa

    .line 705
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    goto/16 :goto_6

    .line 706
    :cond_f
    const-class v10, Lcom/android/settings/Settings$ManageExternalStorageActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 708
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const/16 v0, 0xb

    .line 710
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    goto/16 :goto_6

    .line 711
    :cond_10
    const-class v10, Lcom/android/settings/Settings$MediaManagementAppsActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 713
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const/16 v0, 0xd

    .line 715
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    goto/16 :goto_6

    .line 716
    :cond_11
    const-class v10, Lcom/android/settings/Settings$AlarmsAndRemindersActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 718
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const/16 v0, 0xc

    .line 720
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    goto/16 :goto_6

    .line 721
    :cond_12
    const-class v10, Lcom/android/settings/Settings$NotificationAppListActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 723
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 722
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    goto :goto_5

    .line 736
    :cond_13
    const-class v0, Lcom/android/settings/applications/appinfo/AppLocaleDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0xe

    .line 737
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    goto :goto_6

    :cond_14
    const-string v0, "AppSetting"

    .line 740
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 741
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const/16 v0, 0xf

    .line 742
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    goto :goto_6

    .line 746
    :cond_15
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_MANAGE_UNKNOWN_APPS:Z

    if-eqz v0, :cond_16

    const-class v0, Lcom/android/settings/Settings$ManageUnknownSourceAppsActivity;

    .line 747
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x10

    .line 748
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    goto :goto_6

    .line 752
    :cond_16
    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    goto :goto_6

    .line 724
    :cond_17
    :goto_5
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const-string/jumbo v10, "usagestats"

    .line 726
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    .line 725
    invoke-static {v10}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 727
    new-instance v10, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v10}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v10, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 728
    sget v10, Lcom/android/settings/R$id;->sort_order_recent_notification:I

    iput v10, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 729
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 732
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "review_permissions_notification_state"

    invoke-static {v0, v9, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_18
    :goto_6
    if-eqz v6, :cond_19

    const-string v0, "android.intent.extra.USER_ID"

    .line 756
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_7

    :cond_19
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    :goto_7
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageItemUserID:I

    .line 759
    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object v0

    .line 760
    iget v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-virtual {v0, v9}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getDefaultFilterType(I)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    const-string v0, "profile"

    if-eqz v6, :cond_1a

    .line 761
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v2, :cond_1a

    move v9, v2

    goto :goto_8

    :cond_1a
    move v9, v1

    .line 762
    :goto_8
    iput-boolean v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsPersonalOnly:Z

    const/4 v9, 0x2

    if-eqz v6, :cond_1b

    .line 763
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_1b

    move v0, v2

    goto :goto_9

    :cond_1b
    move v0, v1

    .line 764
    :goto_9
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    .line 766
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v3, v0}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    const-string v0, "(Secure folder) or (App Separation)"

    .line 767
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    .line 769
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsSecureOrSeparationUserId:Z

    :cond_1d
    if-eqz v6, :cond_1e

    const-string/jumbo v0, "workId"

    .line 772
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_a

    :cond_1e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    :goto_a
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    .line 773
    iget-boolean v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-eqz v6, :cond_1f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-ne v0, v6, :cond_1f

    .line 774
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    .line 778
    :cond_1f
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    invoke-virtual {v0, v6}, Lcom/android/settingslib/applications/ApplicationsState;->setWorkUserId(I)V

    .line 782
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageItemUserID:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 783
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    .line 784
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageItemUserID:I

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Secure folder Storage) set mIsWorkOnly and mWorkUserId : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_20
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "expand_search_view"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mExpandSearch:Z

    if-eqz p1, :cond_21

    .line 792
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    const-string v10, "sortOrder"

    invoke-virtual {p1, v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 793
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const-string v10, "showSystem"

    invoke-virtual {p1, v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const-string v0, "filterType"

    .line 795
    invoke-virtual {p1, v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterType:I

    .line 796
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mExpandSearch:Z

    .line 801
    :cond_21
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHideAppList:Ljava/lang/String;

    .line 802
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v0, v2, :cond_22

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_22

    .line 803
    sput-boolean v2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHideApp:Z

    .line 804
    sget-object p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHideAppList:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHideNotificationList:[Ljava/lang/String;

    if-nez p1, :cond_22

    const-string p1, "Hide app notification list is null"

    .line 806
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    sput-boolean v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mHideApp:Z

    .line 813
    :cond_22
    sget p1, Lcom/android/settings/R$string;->invalid_size_value:I

    invoke-virtual {v3, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 817
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$2;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$2;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsDialogCallback:Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;

    .line 826
    new-instance p1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsDialogCallback:Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;

    invoke-direct {p1, v0, v6}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;-><init>(Landroid/content/Context;Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    if-lez v8, :cond_23

    .line 830
    invoke-virtual {v3, v8}, Landroid/app/Activity;->setTitle(I)V

    :cond_23
    const-string p1, ":settings:fragment_args_key"

    .line 834
    invoke-virtual {v4, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 835
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, ";"

    .line 836
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 837
    array-length v0, p1

    if-ne v0, v9, :cond_24

    .line 838
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 839
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    .line 840
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "searched package name : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uid : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-direct {p0, v7}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startApplicationDetailsActivity(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 842
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 843
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 851
    :cond_24
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 1645
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1649
    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1652
    sget v0, Lcom/android/settings/R$menu;->sec_manage_apps:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1655
    sget p2, Lcom/android/settings/R$id;->search_app_list_menu:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1657
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 1658
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 1659
    sget v0, Lcom/android/settings/R$string;->sec_app_search_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1660
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    const-string p2, ""

    .line 1662
    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->setKeyword(Ljava/lang/CharSequence;)V

    .line 1663
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Landroidx/appcompat/widget/SearchView;

    sget v0, Lcom/android/settings/R$id;->search_plate:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    .line 1666
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    .line 1667
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 1666
    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1669
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_search_magnifier_icon_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/16 p2, 0xa

    .line 1670
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1673
    iget-boolean p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mExpandSearch:Z

    if-eqz p2, :cond_2

    .line 1674
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1678
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 886
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSystemAlertWindowEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    sget p2, Lcom/android/settings/R$layout;->manage_applications_apps_unsupported:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    .line 888
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 889
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    return-object p0

    .line 894
    :cond_0
    sget v0, Lcom/android/settings/R$layout;->sec_manage_applications_apps:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    .line 897
    sget v0, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    const/16 v0, 0xf

    .line 900
    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 901
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 904
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    .line 906
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->empty_view_text:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyViewText:Landroid/widget/TextView;

    .line 907
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 908
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 912
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->app_noti_sub_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mAppNotiSubTitle:Landroid/widget/LinearLayout;

    .line 913
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 914
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 916
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 920
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->apps_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 922
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-direct {p1, v0, p0, v5, p3}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz p3, :cond_2

    const-string v0, "hasEntries"

    .line 926
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fputmHasReceivedLoadEntries(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)V

    .line 927
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    const-string v0, "hasBridge"

    .line 928
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fputmHasReceivedBridgeCallback(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)V

    .line 930
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 931
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 932
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 931
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 933
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 936
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 937
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    .line 938
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->isFastScrollEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    .line 939
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 940
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v0, v4}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 941
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 942
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;

    invoke-direct {p1, p0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration-IA;)V

    .line 943
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 944
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;Landroid/graphics/drawable/Drawable;)V

    .line 945
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 946
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    .line 947
    instance-of v0, p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz v0, :cond_3

    .line 948
    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 954
    :cond_3
    instance-of p1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p1, :cond_4

    .line 957
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz p1, :cond_4

    .line 959
    iput-boolean v3, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 964
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->createHeader()V

    .line 966
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {p1, p3}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 973
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    const/4 v0, 0x0

    .line 1724
    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1194
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 1196
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 1199
    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    .line 1200
    invoke-static {}, Lcom/android/settingslib/applications/AppIconCacheManager;->getInstance()Lcom/android/settingslib/applications/AppIconCacheManager;

    invoke-static {}, Lcom/android/settingslib/applications/AppIconCacheManager;->release()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2101
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {p1, p3}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->getFilter(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 2102
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setCompositeFilter()V

    .line 2103
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setFilter(Lcom/android/settings/applications/manageapplications/AppFilterItem;)V

    .line 2105
    sget-boolean p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 2106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Selecting filter "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {p3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getTitle()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ManageApplications"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_0
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 2110
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->isFastScrollEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p2, 0x54

    if-ne p1, p2, :cond_1

    .line 2119
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-eqz p0, :cond_1

    .line 2120
    sget p1, Lcom/android/settings/R$id;->search_app_list_menu:I

    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2122
    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1706
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyViewText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->no_applications:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1707
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setUnvisiblePrefs(Z)V

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1688
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    const/16 p1, 0x777

    const/16 v0, 0x1fc3

    .line 1689
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x41

    const/16 v0, 0x3f2

    .line 1691
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 1693
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyViewText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->sec_app_search_no_result:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1694
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setUnvisiblePrefs(Z)V

    const/4 p1, 0x1

    .line 1695
    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchExpanded:Z

    return p1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1875
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 1876
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1878
    sget v1, Lcom/android/settings/R$id;->sort_order:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1879
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1880
    sget v0, Lcom/android/settings/R$string;->sec_sort_order:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1881
    sget v0, Lcom/android/settings/R$array;->sort_order_entries:I

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    new-instance v3, Lcom/android/settings/applications/manageapplications/ManageApplications$3;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$3;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    invoke-virtual {p1, v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1913
    sget v0, Lcom/android/settings/R$string;->okay:I

    new-instance v1, Lcom/android/settings/applications/manageapplications/ManageApplications$4;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$4;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1923
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 1924
    new-instance v1, Lcom/android/settings/applications/manageapplications/ManageApplications$5;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$5;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;I)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1930
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1931
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

    .line 1932
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_5

    .line 1940
    :cond_0
    sget v1, Lcom/android/settings/R$id;->show_system:I

    if-eq v0, v1, :cond_b

    sget v3, Lcom/android/settings/R$id;->hide_system:I

    if-ne v0, v3, :cond_1

    goto/16 :goto_4

    .line 1949
    :cond_1
    sget p1, Lcom/android/settings/R$id;->reset_app_preferences:I

    if-ne v0, p1, :cond_3

    const/16 p1, 0x41

    const/16 v0, 0xef8

    .line 1951
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 1955
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1956
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-eqz p1, :cond_2

    .line 1957
    sget v0, Lcom/android/settings/R$id;->search_app_list_menu:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1959
    invoke-interface {p1}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1964
    :cond_2
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->buildResetDialog()V

    return v2

    .line 1966
    :cond_3
    sget p1, Lcom/android/settings/R$id;->advanced:I

    if-ne v0, p1, :cond_5

    .line 1967
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v0, 0x2

    if-ne p1, v2, :cond_4

    .line 1968
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    .line 1969
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->configure_notification_settings:I

    .line 1970
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1971
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1972
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1973
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    .line 1975
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1977
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return v2

    .line 1982
    :cond_5
    sget p1, Lcom/android/settings/R$id;->manage_memory:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    .line 1983
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/applications/ProcessStatsSummary;

    .line 1984
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->memory_settings_title:I

    .line 1985
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1986
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1987
    invoke-virtual {p1, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1988
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v2

    .line 1991
    :cond_6
    sget p1, Lcom/android/settings/R$id;->manage_perms:I

    if-ne v0, p1, :cond_8

    .line 1993
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1994
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.action.ACTION_MANAGE_PERMISSIONS_CHN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 1996
    :cond_7
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2000
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 2003
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_2
    return v2

    .line 2006
    :cond_8
    sget p1, Lcom/android/settings/R$id;->special_access:I

    if-ne v0, p1, :cond_9

    .line 2007
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;

    .line 2008
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->special_access:I

    .line 2009
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 2010
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 2011
    invoke-virtual {p1, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 2012
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v2

    .line 2014
    :cond_9
    sget p1, Lcom/android/settings/R$id;->perms_usage:I

    if-ne v0, p1, :cond_a

    .line 2015
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.deviceagent"

    const-string v1, "com.samsung.deviceagent.MainActivity"

    .line 2016
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2019
    :try_start_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 2022
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_3
    return v2

    :cond_a
    return v1

    .line 1942
    :cond_b
    :goto_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-ne p1, v1, :cond_c

    const p1, 0x8cb5

    .line 1943
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NSTE0018"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    :cond_c
    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    .line 1948
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 2030
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1715
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/16 p1, 0x1e25

    .line 1716
    invoke-static {p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    .line 1719
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 2141
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->filterSearch(Ljava/lang/String;)V

    .line 2143
    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->setKeyword(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 590
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 593
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchExpanded:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageApplications"

    const-string v1, "onResume() prefs visible true"

    .line 594
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyViewText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->no_applications:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 596
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setUnvisiblePrefs(Z)V

    const/4 v0, 0x0

    .line 597
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchExpanded:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1160
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1161
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1162
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    const-string v1, "sortOrder"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1163
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v0

    const-string v1, "filterType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1164
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const-string v1, "showSystem"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1165
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_0

    .line 1166
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "expand_search_view"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 1169
    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmHasReceivedLoadEntries(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z

    move-result v0

    const-string v1, "hasEntries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1170
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmHasReceivedBridgeCallback(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z

    move-result v0

    const-string v1, "hasBridge"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1171
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1140
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 1144
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 1146
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->app_notifications_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 1151
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateLoading()V

    :cond_1
    const-string p0, ""

    .line 1154
    invoke-static {p0}, Lcom/android/settingslib/applications/AppUtils;->setKeyword(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1177
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 1178
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 1179
    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    .line 1183
    sget v1, Lcom/android/settings/R$id;->search_app_list_menu:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1185
    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1189
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->stop()V

    return-void
.end method

.method public setHasDisabled(Z)V
    .locals 1

    .line 2157
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2164
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterContainer:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2166
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterContainer:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method setVisibilityDefaultSearch(Z)V
    .locals 1

    .line 1864
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-eqz p0, :cond_0

    const/16 v0, 0xb

    .line 1865
    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1867
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    .line 1761
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    .line 1782
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v0, :cond_1

    .line 1783
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1784
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v3, Lcom/android/settings/R$id;->manage_memory:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1786
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v3, Lcom/android/settings/R$id;->manage_memory:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1790
    :goto_0
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v0, :cond_2

    .line 1791
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v3, Lcom/android/settings/R$id;->manage_perms:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1793
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v3, Lcom/android/settings/R$id;->manage_perms:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1796
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1797
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v3, "com.samsung.deviceagent"

    const-string v4, "com.samsung.deviceagent.MainActivity"

    invoke-static {v0, v3, v4}, Lcom/android/settings/Utils;->isActivityExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v0, :cond_3

    .line 1799
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v3, Lcom/android/settings/R$id;->perms_usage:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1801
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v3, Lcom/android/settings/R$id;->perms_usage:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1804
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v3, Lcom/android/settings/R$id;->special_access:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1806
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v3, Lcom/android/settings/R$id;->sort_order:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_4
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1808
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v3, Lcom/android/settings/R$id;->sort_order_alpha:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1809
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v3, Lcom/android/settings/R$id;->sort_order_size:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1811
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v3, Lcom/android/settings/R$id;->show_system:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const/4 v6, 0x5

    const/16 v7, 0xe

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eq v5, v6, :cond_6

    if-eq v5, v7, :cond_6

    if-eq v5, v4, :cond_6

    if-eqz v5, :cond_6

    move v5, v1

    goto :goto_5

    :cond_6
    move v5, v2

    :goto_5
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1816
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v5, Lcom/android/settings/R$id;->hide_system:I

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eq v8, v6, :cond_7

    if-eq v8, v7, :cond_7

    if-eq v8, v4, :cond_7

    if-eqz v8, :cond_7

    move v8, v1

    goto :goto_6

    :cond_7
    move v8, v2

    :goto_6
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1822
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_APPS_MANAGE_SOURCES_DENY_ALL:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v8, 0x8

    if-ne v0, v8, :cond_8

    .line 1823
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1824
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1827
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v3, Lcom/android/settings/R$id;->reset_app_preferences:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eqz v5, :cond_a

    iget-boolean v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-nez v8, :cond_9

    if-eq v5, v6, :cond_9

    if-eq v5, v4, :cond_9

    if-eq v5, v7, :cond_9

    goto :goto_7

    :cond_9
    move v4, v2

    goto :goto_8

    :cond_a
    :goto_7
    move v4, v1

    :goto_8
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1834
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v0, v7, :cond_c

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_c

    .line 1835
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v4, Lcom/android/settings/R$id;->search_app_list_menu:I

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1837
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v4

    if-lez v4, :cond_b

    .line 1838
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9

    .line 1840
    :cond_b
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1847
    :cond_c
    :goto_9
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v4, Lcom/android/settings/R$id;->sort_order_recent_notification:I

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1848
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    sget v4, Lcom/android/settings/R$id;->sort_order_frequent_notification:I

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1851
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_d

    .line 1852
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1856
    :cond_d
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1858
    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_e
    return-void
.end method
