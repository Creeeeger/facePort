.class public abstract Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "AbstractMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Profile;
    }
.end annotation


# static fields
.field static final blacklist PROFILE_PERSONAL:I = 0x0

.field static final blacklist PROFILE_WORK:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AbstractMultiProfilePagerAdapter"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentPage:I

.field private blacklist mInjector:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;

.field private blacklist mIsWaitingToEnableWorkProfile:Z

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

.field private blacklist mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

.field private final blacklist mPersonalProfileUserHandle:Landroid/os/UserHandle;

.field private final blacklist mWorkProfileUserHandle:Landroid/os/UserHandle;


# direct methods
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

.method static bridge synthetic blacklist -$$Nest$fputmIsWaitingToEnableWorkProfile(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mIsWaitingToEnableWorkProfile:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhasCrossProfileIntents(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Ljava/util/List;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->hasCrossProfileIntents(Ljava/util/List;II)Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentPage"    # I
    .param p3, "personalProfileUserHandle"    # Landroid/os/UserHandle;
    .param p4, "workProfileUserHandle"    # Landroid/os/UserHandle;

    .line 83
    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mContext:Landroid/content/Context;

    .line 85
    iput p2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;

    .line 87
    iput-object p3, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    .line 88
    iput-object p4, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 89
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 90
    .local v0, "userManager":Landroid/os/UserManager;
    new-instance v1, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Landroid/os/UserManager;)V

    iput-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mInjector:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;

    .line 111
    return-void
.end method

.method private blacklist hasAppsInOtherProfile(Lcom/android/internal/app/ResolverListAdapter;)Z
    .locals 7
    .param p1, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 573
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 574
    return v1

    .line 576
    :cond_0
    nop

    .line 577
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverListAdapter;->getResolversForUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 578
    .local v0, "resolversForIntent":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 579
    .local v3, "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 580
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget v5, v4, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_1

    iget v5, v4, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 582
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 584
    const/4 v1, 0x1

    return v1

    .line 586
    .end local v3    # "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 587
    :cond_2
    return v1
.end method

.method private blacklist hasCrossProfileIntents(Ljava/util/List;II)Z
    .locals 5
    .param p2, "source"    # I
    .param p3, "target"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;II)Z"
        }
    .end annotation

    .line 561
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 562
    .local v0, "packageManager":Landroid/content/pm/IPackageManager;
    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 563
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 564
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v3, p2, p3, v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Landroid/content/ContentResolver;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 566
    const/4 v2, 0x1

    return v2

    .line 568
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 569
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isSpinnerShowing(Landroid/view/View;)Z
    .locals 1
    .param p1, "emptyStateView"    # Landroid/view/View;

    .line 525
    const v0, 0x10204e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist maybeShowNoAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 6
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 440
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 441
    .local v0, "listUserHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    if-eqz v1, :cond_3

    .line 442
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 443
    invoke-direct {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->hasAppsInOtherProfile(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 444
    :cond_0
    const/16 v1, 0xa0

    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 446
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getMetricsCategory()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    .line 447
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    .line 448
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 449
    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    if-ne v0, v1, :cond_2

    .line 450
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showNoPersonalAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    goto :goto_1

    .line 452
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showNoWorkAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    goto :goto_1

    .line 454
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    if-nez v1, :cond_4

    .line 455
    invoke-direct {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showConsumerUserNoAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 457
    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist maybeShowNoCrossProfileIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Z
    .locals 5
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 393
    invoke-direct {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowNoCrossProfileIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 394
    return v1

    .line 396
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 397
    const/16 v0, 0x9e

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    .line 399
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getMetricsCategory()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showNoWorkToPersonalIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    goto :goto_0

    .line 403
    :cond_1
    const/16 v0, 0x9f

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getMetricsCategory()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showNoPersonalToWorkIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 409
    :goto_0
    return v2
.end method

.method private blacklist maybeShowWorkProfileOffEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Z
    .locals 6
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 416
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 417
    .local v0, "listUserHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mInjector:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;

    iget-object v3, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 418
    invoke-interface {v1, v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    const/16 v1, 0x9d

    .line 423
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getMetricsCategory()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 426
    new-instance v1, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/ResolverListAdapter;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showWorkProfileOffEmptyState(Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View$OnClickListener;)V

    .line 436
    return v3

    .line 420
    :cond_1
    :goto_0
    return v2
.end method

.method private blacklist rebuildTab(Lcom/android/internal/app/ResolverListAdapter;Z)Z
    .locals 1
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "doPostProcessing"    # Z

    .line 334
    invoke-direct {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowNoCrossProfileIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZ)V

    .line 336
    const/4 v0, 0x0

    return v0

    .line 338
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/internal/app/ResolverListAdapter;->rebuildList(Z)Z

    move-result v0

    return v0
.end method

.method private blacklist resetViewVisibilitiesForConsumerUserEmptyState(Landroid/view/View;)V
    .locals 2
    .param p1, "emptyStateView"    # Landroid/view/View;

    .line 545
    const v0, 0x10204e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 546
    const v0, 0x10204e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    const v0, 0x10204e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 548
    const v0, 0x10204e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 550
    return-void
.end method

.method private blacklist resetViewVisibilitiesForWorkProfileEmptyState(Landroid/view/View;)V
    .locals 2
    .param p1, "emptyStateView"    # Landroid/view/View;

    .line 537
    const v0, 0x10204e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    const v0, 0x10204e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 539
    const v0, 0x10204e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 540
    const v0, 0x10204e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 541
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 542
    return-void
.end method

.method private blacklist shouldShowNoCrossProfileIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Z
    .locals 5
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 343
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 344
    .local v0, "listUserHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->allowShowNoCrossProfileIntentsEmptyState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mInjector:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;

    .line 346
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getIntents()Ljava/util/List;

    move-result-object v2

    .line 347
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 346
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;->hasCrossProfileIntents(Ljava/util/List;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 344
    :goto_0
    return v1
.end method

.method private blacklist showConsumerUserNoAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 6
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 504
    nop

    .line 505
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->userHandleToPageIndex(Landroid/os/UserHandle;)I

    move-result v0

    .line 504
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    .line 506
    .local v0, "descriptor":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v2, 0x10204ea

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 507
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->getEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 508
    .local v1, "emptyStateView":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->resetViewVisibilitiesForConsumerUserEmptyState(Landroid/view/View;)V

    .line 510
    iget-object v3, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v4, 0x102057f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 511
    .local v3, "dividerView1":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 512
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 514
    :cond_0
    iget-object v4, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v5, 0x1020580

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 515
    .local v4, "dividerView2":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 516
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 519
    .end local v3    # "dividerView1":Landroid/view/View;
    .end local v4    # "dividerView2":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 521
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->markTabLoaded()V

    .line 522
    return-void
.end method

.method private blacklist showSpinner(Landroid/view/View;)V
    .locals 2
    .param p1, "emptyStateView"    # Landroid/view/View;

    .line 530
    const v0, 0x10204e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 531
    const v0, 0x10204e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    const v0, 0x10204e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 533
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 534
    return-void
.end method

.method private blacklist userHandleToPageIndex(Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const/4 v0, 0x0

    return v0

    .line 329
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method blacklist allowShowNoCrossProfileIntentsEmptyState()Z
    .locals 1

    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method blacklist clearInactiveProfileCache()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;

    iget v2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public blacklist destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .line 195
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 196
    return-void
.end method

.method abstract blacklist getActiveAdapterView()Landroid/view/ViewGroup;
.end method

.method public abstract blacklist getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
.end method

.method public abstract blacklist getAdapterForIndex(I)Ljava/lang/Object;
.end method

.method blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getCount()I
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method protected blacklist getCurrentPage()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    return v0
.end method

.method abstract blacklist getCurrentRootAdapter()Ljava/lang/Object;
.end method

.method public blacklist getCurrentUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method blacklist getFontScale()F
    .locals 2

    .line 680
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 681
    .local v0, "fontScale":F
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 682
    const v0, 0x3f99999a    # 1.2f

    .line 684
    :cond_0
    return v0
.end method

.method abstract blacklist getInactiveAdapterView()Landroid/view/ViewGroup;
.end method

.method public abstract blacklist getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
.end method

.method abstract blacklist getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
.end method

.method abstract blacklist getItemCount()I
.end method

.method abstract blacklist getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
.end method

.method abstract blacklist getMetricsCategory()Ljava/lang/String;
.end method

.method public blacklist getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;
.end method

.method public abstract blacklist getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;
.end method

.method public blacklist instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 188
    invoke-virtual {p0, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    .line 189
    .local v0, "profileDescriptor":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 190
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public bridge synthetic blacklist instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "workProfileUserHandle"    # Landroid/os/UserHandle;

    .line 130
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mInjector:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;

    invoke-interface {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public blacklist isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 214
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected blacklist isWaitingToEnableWorkProfile()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mIsWaitingToEnableWorkProfile:Z

    return v0
.end method

.method synthetic blacklist lambda$maybeShowWorkProfileOffEmptyState$0$com-android-internal-app-AbstractMultiProfilePagerAdapter(Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V
    .locals 4
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "v"    # Landroid/view/View;

    .line 428
    nop

    .line 429
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->userHandleToPageIndex(Landroid/os/UserHandle;)I

    move-result v0

    .line 428
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    .line 430
    .local v0, "descriptor":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->getEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showSpinner(Landroid/view/View;)V

    .line 431
    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

    if-eqz v1, :cond_0

    .line 432
    invoke-interface {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;->onSwitchOnWorkSelected()V

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mInjector:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)V

    .line 435
    return-void
.end method

.method protected blacklist markWorkProfileEnabledBroadcastReceived()V
    .locals 1

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mIsWaitingToEnableWorkProfile:Z

    .line 115
    return-void
.end method

.method blacklist rebuildActiveTab(Z)Z
    .locals 1
    .param p1, "doPostProcessing"    # Z

    .line 304
    const-string v0, "MultiProfilePagerAdapter#rebuildActiveTab"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildTab(Lcom/android/internal/app/ResolverListAdapter;Z)Z

    move-result v0

    .line 306
    .local v0, "result":Z
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 307
    return v0
.end method

.method blacklist rebuildInactiveTab(Z)Z
    .locals 2
    .param p1, "doPostProcessing"    # Z

    .line 315
    const-string v0, "MultiProfilePagerAdapter#rebuildInactiveTab"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 317
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 318
    const/4 v0, 0x0

    return v0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildTab(Lcom/android/internal/app/ResolverListAdapter;Z)Z

    move-result v0

    .line 321
    .local v0, "result":Z
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 322
    return v0
.end method

.method public blacklist semIsNeedSortingInRebuildList()Z
    .locals 1

    .line 669
    iget-boolean v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mNeedSortingInRebuildList:Z

    return v0
.end method

.method public blacklist semRebuildActiveTab(Z)Z
    .locals 1
    .param p1, "doPostProcessing"    # Z

    .line 690
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildTab(Lcom/android/internal/app/ResolverListAdapter;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist semSetNeedSortingInRebuildList(Z)V
    .locals 0
    .param p1, "needSort"    # Z

    .line 665
    iput-boolean p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mNeedSortingInRebuildList:Z

    .line 666
    return-void
.end method

.method blacklist semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "resId"    # I

    .line 673
    if-eqz p1, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 675
    .local v0, "defaultTextSize":I
    const/4 v1, 0x0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 677
    .end local v0    # "defaultTextSize":I
    :cond_0
    return-void
.end method

.method public blacklist setInjector(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;)V
    .locals 0
    .param p1, "injector"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;

    .line 126
    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mInjector:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;

    .line 127
    return-void
.end method

.method blacklist setOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    .line 134
    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mOnProfileSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    .line 135
    return-void
.end method

.method blacklist setOnSwitchOnWorkSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

    .line 138
    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

    .line 139
    return-void
.end method

.method protected blacklist setupContainerPadding(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .line 501
    return-void
.end method

.method abstract blacklist setupListAdapter(I)V
.end method

.method blacklist setupViewPager(Lcom/android/internal/widget/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Lcom/android/internal/widget/ViewPager;

    .line 151
    new-instance v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    .line 174
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .line 175
    iget v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 176
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;

    iget v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method blacklist shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z
    .locals 3
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 591
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 592
    .local v0, "count":I
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 594
    invoke-virtual {p0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 592
    :goto_0
    return v1
.end method

.method blacklist showEmptyResolverListEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 1
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 383
    invoke-direct {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->maybeShowNoCrossProfileIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    return-void

    .line 386
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->maybeShowWorkProfileOffEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    return-void

    .line 389
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->maybeShowNoAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 390
    return-void
.end method

.method protected blacklist showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;

    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 462
    return-void
.end method

.method protected blacklist showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 8
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;
    .param p4, "buttonOnClick"    # Landroid/view/View$OnClickListener;

    .line 466
    nop

    .line 467
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->userHandleToPageIndex(Landroid/os/UserHandle;)I

    move-result v0

    .line 466
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    .line 468
    .local v0, "descriptor":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v2, 0x10204ea

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->getEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 470
    .local v1, "emptyStateView":Landroid/view/ViewGroup;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->resetViewVisibilitiesForWorkProfileEmptyState(Landroid/view/View;)V

    .line 471
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 473
    const v4, 0x10204e5

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 474
    .local v4, "container":Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupContainerPadding(Landroid/view/View;)V

    .line 476
    const v5, 0x10204e9

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 477
    .local v5, "titleView":Landroid/widget/TextView;
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    const v6, 0x10204e8

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 480
    .local v6, "subtitleView":Landroid/widget/TextView;
    if-eqz p3, :cond_0

    .line 481
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    :goto_0
    const v7, 0x1050461

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 488
    const v7, 0x1050460

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 490
    const v7, 0x10204e4

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 491
    .local v7, "button":Landroid/widget/Button;
    if-eqz p4, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 492
    invoke-virtual {v7, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->markTabLoaded()V

    .line 495
    return-void
.end method

.method protected blacklist showListView(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 3
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 553
    nop

    .line 554
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->userHandleToPageIndex(Landroid/os/UserHandle;)I

    move-result v0

    .line 553
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    .line 555
    .local v0, "descriptor":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v2, 0x10204ea

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v2, 0x10204e3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 557
    .local v1, "emptyStateView":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 558
    return-void
.end method

.method protected abstract blacklist showNoPersonalAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
.end method

.method protected abstract blacklist showNoPersonalToWorkIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
.end method

.method protected abstract blacklist showNoWorkAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
.end method

.method protected abstract blacklist showNoWorkToPersonalIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
.end method

.method protected abstract blacklist showWorkProfileOffEmptyState(Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View$OnClickListener;)V
.end method
