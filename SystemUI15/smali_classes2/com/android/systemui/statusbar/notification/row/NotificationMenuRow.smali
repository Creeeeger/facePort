.class public final Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mAlpha:F

.field public mAnimating:Z

.field public mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

.field public final mContext:Landroid/content/Context;

.field public mDismissing:Z

.field public mFadeAnimator:Landroid/animation/ValueAnimator;

.field public mFeedbackItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

.field public final mHandler:Landroid/os/Handler;

.field public mHasPopped:Z

.field public mHorizSpaceForIcon:I

.field public final mIconLocation:[I

.field public final mIconPadding:I

.field public mIconsPlaced:Z

.field public mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

.field public mIsUserTouching:Z

.field public final mLeftMenuItems:Ljava/util/ArrayList;

.field public mMenuContainer:Landroid/widget/FrameLayout;

.field public mMenuFadedIn:Z

.field public final mMenuItemsByView:Ljava/util/Map;

.field public mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

.field public mMenuSnapped:Z

.field public mMenuSnappedOnLeft:Z

.field public mOnLeft:Z

.field public mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final mParentLocation:[I

.field public final mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

.field public final mRightMenuItems:Ljava/util/ArrayList;

.field public final mShouldShowMenu:Z

.field public mSnapping:Z

.field public mSnappingToDismiss:Z

.field public mSnoozeItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

.field public mTranslation:F

.field public mVertSpaceForIcons:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconLocation:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParentLocation:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mVertSpaceForIcons:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconPadding:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050042

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mShouldShowMenu:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    return-void
.end method


# virtual methods
.method public beginDrag()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUserTouching:Z

    return-void
.end method

.method public final canBeDismissed()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed$1()Z

    move-result p0

    return p0
.end method

.method public cancelDrag()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final createMenu(Landroid/view/ViewGroup;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createMenuViews(Z)V

    return-void
.end method

.method public final createMenuViews(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b88

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    const v1, 0x7f070b8d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mVertSpaceForIcons:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableSnooze()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    const v2, 0x7f130d45

    const v3, 0x7f0d0394

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/SecGutInflater;->createNotificationMenuItem(Landroid/content/Context;II)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d00fc

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/FeedbackInfo;

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    const/4 v6, -0x1

    invoke-direct {v3, v1, v4, v2, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFeedbackItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    check-cast v2, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    const v2, 0x7f130d43

    const v3, 0x7f0d0393

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/SecGutInflater;->createNotificationMenuItem(Landroid/content/Context;II)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFeedbackItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->populateMenuViews()V

    if-eqz p1, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->resetState(Z)V

    goto :goto_0

    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUserTouching:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->onSnapOpen()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final fadeInMenu(F)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissing:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAnimating:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuLocationChange()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v4, v5, v0

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;FZF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method public getDismissThreshold()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p0, v0

    return p0
.end method

.method public final getFeedbackMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mFeedbackItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    return-object p0
.end method

.method public final getHasPopped()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHasPopped:Z

    return p0
.end method

.method public final getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    return-object p0
.end method

.method public getMaximumSwipeDistance()F
    .locals 1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    int-to-float p0, p0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p0, v0

    return p0
.end method

.method public final getMenuItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    :goto_0
    return-object p0
.end method

.method public final getMenuSnapTarget()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getSpaceForMenu()I

    move-result p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-int p0, p0

    :goto_0
    return p0
.end method

.method public final getMenuView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getMinimumSwipeDistance()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed$1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_0
    const v0, 0x3e19999a    # 0.15f

    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    return p0
.end method

.method public getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public final getRevealAnimationOrigin()Landroid/graphics/Point;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mMenuView:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result p0

    sub-int/2addr p0, v1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p0, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getSnapBackThreshold()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getSpaceForMenu()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getMaximumSwipeDistance()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final getSnoozeMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    return-object p0
.end method

.method public getSpaceForMenu()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    mul-int/2addr p0, v0

    return p0
.end method

.method public getTranslation()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    return p0
.end method

.method public isDismissing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissing:Z

    return p0
.end method

.method public final isMenuLocationChange()Z
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconPadding:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz v2, :cond_4

    :cond_3
    return v4

    :cond_4
    return v3
.end method

.method public isMenuOnLeft()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    return p0
.end method

.method public isMenuSnapped()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    return p0
.end method

.method public isMenuSnappedOnLeft()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnappedOnLeft:Z

    return p0
.end method

.method public final isMenuVisible()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSnappedAndOnSameSide()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuSnapped()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuSnappedOnLeft()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSnapping()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    return p0
.end method

.method public isSnappingToDismiss()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnappingToDismiss:Z

    return p0
.end method

.method public final isSwipedEnoughToShowMenu()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getMinimumSwipeDistance()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getTranslation()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    if-eqz p0, :cond_0

    cmpl-float p0, v1, v0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_0
    neg-float p0, v0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isTowardsMenu(F)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    cmpg-float v0, p1, v1

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    if-nez p0, :cond_2

    cmpl-float p0, p1, v1

    if-ltz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserTouching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUserTouching:Z

    return p0
.end method

.method public final isWithinSnapMenuThreshold()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getTranslation()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getSnapBackThreshold()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getDismissThreshold()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_0

    cmpl-float p0, v0, v1

    if-lez p0, :cond_1

    cmpg-float p0, v0, v2

    if-gez p0, :cond_1

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_0
    neg-float p0, v1

    cmpg-float p0, v0, p0

    if-gez p0, :cond_1

    neg-float p0, v2

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v3
.end method

.method public final menuItemToExposeOnSnap()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParentLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconLocation:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParentLocation:[I

    aget v3, v5, v3

    sub-int/2addr v4, v3

    add-int/2addr v4, v0

    const/4 v0, 0x1

    aget v2, v2, v0

    aget v0, v5, v0

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-interface {v0, v1, v4, v2, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuClicked(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    :cond_1
    return-void
.end method

.method public final onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    return-void
.end method

.method public final onDismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->cancelDrag()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissing:Z

    return-void
.end method

.method public final onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuVisible()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createMenuViews(Z)V

    return-void
.end method

.method public final onParentHeightUpdate()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mVertSpaceForIcons:I

    if-ge v1, v2, :cond_2

    div-int/lit8 v1, v1, 0x2

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    int-to-float p0, v1

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    sub-int/2addr v2, p0

    div-int/lit8 v2, v2, 0x2

    int-to-float p0, v2

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onParentTranslationUpdate(F)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAnimating:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuFadedIn:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    sub-float/2addr p1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    sub-float v1, v2, p1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onSnapClosed()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->cancelDrag()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    return-void
.end method

.method public final onSnapOpen()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnappedOnLeft:Z

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->fadeInMenu(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuShown(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final onTouchEnd()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIsUserTouching:Z

    return-void
.end method

.method public final onTouchMove(F)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isTowardsMenu(F)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuLocationChange()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mShouldShowMenu:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3c

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->canBeDismissed()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getDismissThreshold()F

    move-result v1

    neg-float v2, v1

    cmpg-float v2, p1, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_4

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    :cond_4
    move v0, v3

    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnappingToDismiss:Z

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x29

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHasPopped:Z

    :cond_6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnappingToDismiss:Z

    :cond_7
    return-void
.end method

.method public final onTouchStart()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->beginDrag()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHasPopped:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnappingToDismiss:Z

    return-void
.end method

.method public final populateMenuViews()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_new_notif_dismiss"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    :goto_1
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getMenuView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuItemsByView:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final resetMenu()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->resetState(Z)V

    return-void
.end method

.method public final resetState(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuFadedIn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAnimating:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mSnapping:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mDismissing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuSnapped:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuLocation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuReset(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mLeftMenuItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setAppName(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mRightMenuItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setAppName(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setAppName(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    const v3, 0x7f130d42

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getContentDescription()Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getMenuView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMenuAlpha(F)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuFadedIn:Z

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mAlpha:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final setMenuClickListener(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    return-void
.end method

.method public final setMenuItems(Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public final setMenuLocation()V
    .locals 8

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mTranslation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result v3

    if-eq v0, v3, :cond_6

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isSnapping()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mOnLeft:Z

    if-eq v3, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->populateMenuViews()V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    mul-int/2addr v5, v1

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mHorizSpaceForIcon:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v7, v1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    goto :goto_1

    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mIconsPlaced:Z

    :cond_6
    :goto_3
    return-void
.end method

.method public final shouldShowGutsOnSnapOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final shouldShowMenu()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mShouldShowMenu:Z

    return p0
.end method

.method public final shouldSnapBack()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getTranslation()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getSnapBackThreshold()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuOnLeft()Z

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    cmpg-float p0, v0, v1

    if-gez p0, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    neg-float p0, v1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method
