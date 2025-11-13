.class public abstract Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "AbstractMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CompositeEmptyStateProvider;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$MyUserIdProvider;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Profile;
    }
.end annotation


# static fields
.field static final blacklist PROFILE_PERSONAL:I = 0x0

.field static final blacklist PROFILE_WORK:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AbstractMultiProfilePagerAdapter"


# instance fields
.field private final blacklist mCloneUserHandle:Landroid/os/UserHandle;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentPage:I

.field private final blacklist mEmptyStateProvider:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

.field private blacklist mLoadedPages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNeedSortingInRebuildList:Z

.field private blacklist mOnProfileSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

.field private final blacklist mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

.field private final blacklist mWorkProfileUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic blacklist $r8$lambda$VlEe-l4IBckwOaGlgN3bJ3hrC_Y(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->lambda$showEmptyResolverListEmptyState$1(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$okKXmWw0k61XyKhbqEYp1Jbw2Eo(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->lambda$showEmptyResolverListEmptyState$0(Lcom/android/internal/app/ResolverListAdapter;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLoadedPages(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mOnProfileSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentPage(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;ILcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    iput-object p6, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCloneUserHandle:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mEmptyStateProvider:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    iput-object p4, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    return-void
.end method

.method private blacklist hasAppsInOtherProfile(Lcom/android/internal/app/ResolverListAdapter;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    nop

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverListAdapter;->getResolversForUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget v5, v4, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_1

    iget v5, v4, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    return v1
.end method

.method private blacklist isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    invoke-interface {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$showEmptyResolverListEmptyState$0(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 2

    nop

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->userHandleToPageIndex(Landroid/os/UserHandle;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->getEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showSpinner(Landroid/view/View;)V

    return-void
.end method

.method private synthetic blacklist lambda$showEmptyResolverListEmptyState$1(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;->getButtonClickListener()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/ResolverListAdapter;)V

    invoke-interface {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;->onClick(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$TabControl;)V

    return-void
.end method

.method private blacklist rebuildTab(Lcom/android/internal/app/ResolverListAdapter;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldSkipRebuild(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZ)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/internal/app/ResolverListAdapter;->rebuildList(Z)Z

    move-result v0

    return v0
.end method

.method private blacklist resetViewVisibilitiesForEmptyState(Landroid/view/View;)V
    .locals 2

    const v0, 0x10204f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x10204f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x10204f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x10204f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private blacklist shouldSkipRebuild(Lcom/android/internal/app/ResolverListAdapter;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mEmptyStateProvider:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;->getEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;->shouldSkipDataRebuild()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist showSpinner(Landroid/view/View;)V
    .locals 2

    const v0, 0x10204f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x10204f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x10204f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private blacklist userHandleToPageIndex(Landroid/os/UserHandle;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method blacklist clearInactiveProfileCache()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;

    iget v2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method abstract blacklist getActiveAdapterView()Landroid/view/ViewGroup;
.end method

.method public abstract blacklist getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
.end method

.method public abstract blacklist getAdapterForIndex(I)Ljava/lang/Object;
.end method

.method public blacklist getCloneUserHandle()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCloneUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method blacklist getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method protected blacklist getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    return v0
.end method

.method abstract blacklist getCurrentRootAdapter()Ljava/lang/Object;
.end method

.method public blacklist getCurrentUserHandle()Landroid/os/UserHandle;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method abstract blacklist getInactiveAdapterView()Landroid/view/ViewGroup;
.end method

.method public abstract blacklist getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
.end method

.method public abstract blacklist getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
.end method

.method abstract blacklist getItemCount()I
.end method

.method abstract blacklist getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
.end method

.method public blacklist getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;
.end method

.method public abstract blacklist getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;
.end method

.method public blacklist instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public bridge synthetic blacklist instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public blacklist isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist rebuildActiveTab(Z)Z
    .locals 1

    const-string v0, "MultiProfilePagerAdapter#rebuildActiveTab"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildTab(Lcom/android/internal/app/ResolverListAdapter;Z)Z

    move-result v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v0
.end method

.method blacklist rebuildInactiveTab(Z)Z
    .locals 2

    const-string v0, "MultiProfilePagerAdapter#rebuildInactiveTab"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildTab(Lcom/android/internal/app/ResolverListAdapter;Z)Z

    move-result v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v0
.end method

.method public blacklist semIsNeedSortingInRebuildList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mNeedSortingInRebuildList:Z

    return v0
.end method

.method public blacklist semSetNeedSortingInRebuildList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mNeedSortingInRebuildList:Z

    return-void
.end method

.method blacklist setOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mOnProfileSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    return-void
.end method

.method protected blacklist setupContainerPadding(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method abstract blacklist setupListAdapter(I)V
.end method

.method blacklist setupViewPager(Lcom/android/internal/widget/ViewPager;)V
    .locals 2

    new-instance v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    iget v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;

    iget v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method blacklist shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method blacklist showEmptyResolverListEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mEmptyStateProvider:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;->getEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;->onEmptyStateShown()V

    const/4 v1, 0x0

    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;->getButtonClickListener()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/ResolverListAdapter;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected blacklist showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Landroid/view/View$OnClickListener;)V
    .locals 11

    nop

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->userHandleToPageIndex(Landroid/os/UserHandle;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v2, 0x10204f6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->getEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->resetViewVisibilitiesForEmptyState(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v4, 0x10204f1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupContainerPadding(Landroid/view/View;)V

    const v5, 0x10204f5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;->getTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v7, 0x10204f4

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;->getSubtitle()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v9, 0x1020004

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-interface {p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;->useDefaultEmptyView()Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v3

    goto :goto_2

    :cond_2
    move v10, v2

    :goto_2
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    const v10, 0x10204f0

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    if-eqz p3, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v10, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v10, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->markTabLoaded()V

    return-void
.end method

.method protected blacklist showListView(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 4

    nop

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->userHandleToPageIndex(Landroid/os/UserHandle;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v2, 0x10204f6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v2, 0x1020594

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v2, 0x10204ef

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
