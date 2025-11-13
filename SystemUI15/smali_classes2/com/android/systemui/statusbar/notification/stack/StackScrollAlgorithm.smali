.class public final Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mClipNotificationScrollToTop:Z

.field public mCollapsedSize:I

.field public final mContext:Landroid/content/Context;

.field public mEnableNotificationClipping:Z

.field public mFavoriteGap:Z

.field public mFavoriteGapHeight:F

.field public mGapHeight:F

.field public mGapHeightOnLockscreen:F

.field public mGroupExpandInterpolationY:F

.field public mHeadsUpAppearHeightBottom:I

.field mHeadsUpAppearStartAboveScreen:F

.field mHeadsUpInset:F

.field public final mHostView:Landroid/view/ViewGroup;

.field public mIsExpanded:Z

.field public mMaxGroupExpandedBottomGap:F

.field public mNotificationScrimPadding:F

.field public mOngoingGap:Z

.field public mOngoingGapHeight:F

.field public mOverExpansionAmount:F

.field public mPaddingBetweenElements:F

.field public mPinnedZTranslationExtra:I

.field public final mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "StackScrollAlgorithm"

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SourceType;->from(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mFavoriteGap:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mOverExpansionAmount:F

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mOngoingGap:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public static getNotificationChildrenStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3b

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v5, :cond_39

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v5, :cond_39

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderExpandedHeight:I

    goto :goto_1

    :cond_0
    move v7, v2

    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v8

    add-int/lit8 v9, v8, -0x1

    iget-boolean v10, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v10, :cond_1

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v12

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v13

    goto :goto_2

    :cond_1
    move v13, v8

    const/4 v12, 0x0

    :goto_2
    iget-boolean v14, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    const/4 v15, 0x1

    if-eqz v14, :cond_2

    iget-object v14, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v14

    if-nez v14, :cond_2

    move v14, v15

    goto :goto_3

    :cond_2
    move v14, v2

    :goto_3
    move/from16 v17, v2

    move/from16 v18, v17

    move/from16 v16, v15

    :goto_4
    if-ge v2, v6, :cond_2e

    iget-object v11, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v16, :cond_7

    if-gt v2, v15, :cond_4

    iget-boolean v15, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v15, :cond_4

    if-eqz v10, :cond_3

    int-to-float v7, v7

    iget v15, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v15, v15

    const/4 v0, 0x0

    invoke-static {v0, v15, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    add-float/2addr v15, v7

    float-to-int v7, v15

    :cond_3
    :goto_5
    move/from16 v0, v16

    move/from16 v16, v1

    goto/16 :goto_13

    :cond_4
    if-eqz v10, :cond_5

    int-to-float v0, v7

    iget v7, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    int-to-float v7, v7

    iget v15, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v15, v15

    invoke-static {v7, v15, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    add-float/2addr v7, v0

    float-to-int v7, v7

    goto :goto_5

    :cond_5
    iget-boolean v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v0, :cond_6

    iget v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    goto :goto_6

    :cond_6
    iget v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    :goto_6
    add-int/2addr v7, v0

    goto :goto_5

    :cond_7
    iget v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUntruncatedChildCount:I

    const/4 v15, 0x1

    if-le v0, v15, :cond_8

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingLowPriorityGroupHeader()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    if-eqz v10, :cond_c

    int-to-float v7, v7

    iget v15, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    move/from16 v16, v1

    iget v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderExpandedHeight:I

    add-int/2addr v15, v1

    int-to-float v1, v15

    const/4 v15, 0x0

    invoke-static {v15, v1, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    add-float/2addr v1, v7

    float-to-int v1, v1

    if-eqz v0, :cond_a

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mExpanderViewStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    move-object/from16 v19, v0

    move/from16 v20, v1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-static {v15, v0, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    move-object/from16 v0, v19

    move/from16 v1, v20

    goto :goto_8

    :cond_9
    move/from16 v20, v1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenCountViewStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    move-object/from16 v21, v1

    invoke-static {v0, v15, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    move-object/from16 v1, v21

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    goto :goto_9

    :cond_a
    move/from16 v20, v1

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mExpanderViewStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_a

    :cond_b
    move/from16 v7, v20

    goto/16 :goto_12

    :cond_c
    move/from16 v16, v1

    iget-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v1, :cond_d

    iget v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    goto :goto_b

    :cond_d
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v7, v1

    if-eqz v0, :cond_11

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mExpanderViewStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    iget-boolean v15, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v15, :cond_e

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_e
    const/4 v15, 0x0

    :goto_d
    invoke-virtual {v1, v15}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_c

    :cond_f
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenCountViewStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget-boolean v15, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v15, :cond_10

    const/4 v15, 0x0

    goto :goto_f

    :cond_10
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_f
    invoke-virtual {v1, v15}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_e

    :cond_11
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mExpanderViewStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v1, v15}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_10

    :cond_12
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenCountViewStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_11

    :cond_13
    :goto_12
    const/4 v0, 0x0

    :goto_13
    iget-object v1, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-boolean v15, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    iput-boolean v15, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v15

    iput v15, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    if-nez v2, :cond_16

    move/from16 v20, v0

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    if-le v15, v0, :cond_14

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    sub-int v0, v15, v0

    iput v0, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    iget-object v0, v11, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    move/from16 v21, v3

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomClipRounded:Z

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_14

    :cond_14
    move/from16 v21, v3

    goto :goto_14

    :cond_15
    move/from16 v21, v3

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    iget-object v3, v11, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomClipRounded:Z

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :goto_14
    move/from16 v17, v15

    goto :goto_15

    :cond_16
    move/from16 v20, v0

    move/from16 v21, v3

    if-eqz v18, :cond_17

    sub-int v0, v17, v15

    add-int/2addr v7, v0

    :cond_17
    :goto_15
    int-to-float v0, v7

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    iget-boolean v3, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    if-nez v3, :cond_1a

    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    if-eqz v3, :cond_18

    goto :goto_16

    :cond_18
    if-eqz v14, :cond_19

    iget-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mEnableShadowOnChildNotifications:Z

    if-eqz v3, :cond_19

    iget v3, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    goto :goto_17

    :cond_19
    int-to-float v3, v2

    const/high16 v22, 0x41200000    # 10.0f

    sub-float v3, v22, v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    goto :goto_17

    :cond_1a
    :goto_16
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    :goto_17
    iget-boolean v3, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    iget-boolean v3, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    if-eqz v18, :cond_1c

    if-eqz v10, :cond_1b

    const/4 v3, 0x0

    cmpl-float v18, v12, v3

    if-lez v18, :cond_1b

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    move/from16 v18, v14

    add-int/lit8 v14, v2, -0x1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v14

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v14, v3

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    sub-float/2addr v14, v3

    float-to-int v3, v14

    invoke-virtual {v11, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentClipTopAmount(I)V

    goto :goto_18

    :cond_1b
    move/from16 v18, v14

    iget v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverLappedSize:I

    sub-int v3, v15, v3

    iput v3, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    goto :goto_18

    :cond_1c
    move/from16 v18, v14

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {v11, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentClipTopAmount(I)V

    :goto_18
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingLowPriorityGroupHeader()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v3, :cond_1d

    if-nez v10, :cond_1d

    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentClipTopAmount(I)V

    :cond_1d
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    const v3, 0x3f6b851f    # 0.92f

    const v22, 0x3ecccccd    # 0.4f

    if-ge v2, v13, :cond_21

    if-eqz v10, :cond_20

    if-lez v2, :cond_20

    const/4 v14, 0x1

    if-ne v2, v14, :cond_1f

    iget-boolean v14, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mReduceTransparencyAndBlurOn:Z

    if-eqz v14, :cond_1e

    move/from16 v14, v22

    goto :goto_19

    :cond_1e
    const/high16 v14, 0x3f000000    # 0.5f

    :goto_19
    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v14

    goto :goto_1a

    :cond_1f
    move v14, v12

    :goto_1a
    invoke-virtual {v1, v14}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v3, v14, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleX(F)V

    goto :goto_1c

    :cond_20
    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v1, v14}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    invoke-virtual {v1, v14}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleX(F)V

    goto :goto_1c

    :cond_21
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v23, v12, v14

    if-nez v23, :cond_22

    if-gt v2, v9, :cond_22

    iget v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mActualHeight:I

    int-to-float v3, v3

    iget v14, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    sub-float/2addr v3, v14

    iget v14, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v14, v14

    div-float/2addr v3, v14

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    iget v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v14, 0x0

    invoke-static {v14, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleX(F)V

    goto :goto_1c

    :cond_22
    const/4 v14, 0x1

    if-ne v8, v14, :cond_24

    if-lez v2, :cond_24

    iget-boolean v14, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mReduceTransparencyAndBlurOn:Z

    if-eqz v14, :cond_23

    move/from16 v14, v22

    goto :goto_1b

    :cond_23
    const/high16 v14, 0x3f000000    # 0.5f

    :goto_1b
    invoke-virtual {v1, v14}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleX(F)V

    :cond_24
    :goto_1c
    iget v3, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    iput v3, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    iget-boolean v3, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentAlphaLocked(Z)V

    if-nez v2, :cond_26

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingLowPriorityGroupHeader()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v1, :cond_25

    move v1, v12

    :goto_1d
    const/4 v3, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_1e

    :cond_25
    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    int-to-float v1, v1

    goto :goto_1d

    :goto_1e
    invoke-static {v3, v14, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentAlpha(F)V

    const/4 v1, 0x1

    if-nez v10, :cond_28

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentAlphaLocked(Z)V

    goto :goto_1f

    :cond_26
    iget-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsMinimized:Z

    if-eqz v1, :cond_27

    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    if-nez v1, :cond_27

    if-nez v10, :cond_27

    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v1

    if-nez v1, :cond_27

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentAlpha(F)V

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentAlphaLocked(Z)V

    goto :goto_1f

    :cond_27
    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v11, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentAlpha(F)V

    :cond_28
    :goto_1f
    if-ge v2, v1, :cond_2b

    iget-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v1, :cond_2b

    if-eqz v10, :cond_2a

    add-int/lit8 v1, v2, 0x1

    if-ge v1, v6, :cond_29

    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    goto :goto_20

    :cond_29
    const/4 v1, 0x0

    :goto_20
    iget v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverLappedSize:I

    int-to-float v3, v3

    sub-int v1, v15, v1

    sub-int/2addr v15, v1

    int-to-float v1, v15

    invoke-static {v3, v1, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_21

    :cond_2a
    iget v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverLappedSize:I

    add-int/2addr v0, v7

    :goto_21
    move v7, v0

    const/4 v0, 0x1

    goto :goto_22

    :cond_2b
    add-int/2addr v7, v15

    const/4 v0, 0x0

    :goto_22
    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v1, :cond_2c

    move v1, v12

    goto :goto_23

    :cond_2c
    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    int-to-float v1, v1

    :goto_23
    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateInsignificantAlpha(F)V

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v16

    move/from16 v14, v18

    move/from16 v16, v20

    move/from16 v3, v21

    const/4 v15, 0x1

    move/from16 v18, v0

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_2e
    move/from16 v16, v1

    move/from16 v21, v3

    move/from16 v18, v14

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_30

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v2

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget-object v2, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget v15, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderExpandedHeight:I

    goto :goto_24

    :cond_2f
    const/4 v15, 0x0

    :goto_24
    int-to-float v2, v15

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    :cond_30
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    if-eqz v0, :cond_38

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-nez v0, :cond_31

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    iput-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    :cond_31
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    if-eqz v0, :cond_32

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getTranslationZ()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    goto :goto_25

    :cond_32
    if-eqz v18, :cond_33

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget v1, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    goto :goto_25

    :cond_33
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mMinimizedGroupHeader:Landroid/view/NotificationHeaderView;

    if-ne v0, v1, :cond_34

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    goto :goto_25

    :cond_34
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    :goto_25
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    const/4 v1, 0x0

    int-to-float v2, v1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    const v2, 0x1020464

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    const v3, 0x10202da

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_35

    iget v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_35
    if-eqz v2, :cond_36

    iget v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_36
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    const v3, 0x102033b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_37

    iget v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mTranslationYFactor:F

    iget v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v11, v6, v5

    mul-float/2addr v11, v3

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_26

    :cond_37
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_26
    if-eqz v2, :cond_3a

    iget v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mTranslationYFactor:F

    iget v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    sub-float v11, v6, v3

    mul-float/2addr v11, v0

    invoke-virtual {v2, v11}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_27

    :cond_38
    const/4 v1, 0x0

    goto :goto_27

    :cond_39
    move/from16 v16, v1

    move v1, v2

    move/from16 v21, v3

    :cond_3a
    :goto_27
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, p0

    move v2, v1

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_3b
    return-void
.end method

.method public static getPreviousGroupExpandFraction(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F
    .locals 3

    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserLocked:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public final childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mOngoingGap:Z

    if-eqz v0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    move v3, v4

    :cond_6
    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mFavoriteGap:Z

    return v3
.end method

.method public clampHunToTop(FFFLcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .locals 0

    add-float/2addr p1, p2

    iget p0, p4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iget p1, p4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    sub-float p1, p0, p1

    iget p2, p4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p2, p2

    sub-float/2addr p2, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    return-void
.end method

.method public computeCornerRoundnessForPinnedHun(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    const/4 p0, 0x0

    sub-float/2addr p2, p1

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    div-float/2addr p0, p3

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p4, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public getGapForLocation(FZ)F
    .locals 1

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isNeedsToExpandLocksNoti()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeightOnLockscreen:F

    return p0

    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mOngoingGap:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mOngoingGap:Z

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mOngoingGapHeight:F

    return p0

    :cond_2
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_3

    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeightOnLockscreen:F

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:F

    invoke-static {p2, p0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0

    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mFavoriteGap:Z

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mFavoriteGap:Z

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mFavoriteGapHeight:F

    return p0

    :cond_4
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:F

    return p0
.end method

.method public final initView(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    const v1, 0x7f070b8d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v1, 0x7f050077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mEnableNotificationClipping:Z

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    const v2, 0x7f070459

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    const v1, 0x7f070454

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpAppearStartAboveScreen:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070456

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v1, 0x7f070457

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    const v1, 0x7f070ba1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:F

    const v1, 0x7f070ba3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeightOnLockscreen:F

    const v1, 0x7f070ba0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mNotificationScrimPadding:F

    const v1, 0x7f070b97

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getQuickQsOffsetHeight(Landroid/content/Context;)I

    const p1, 0x7f070b31

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    const p1, 0x7f070b30

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    const p1, 0x7f070b3b

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mMaxGroupExpandedBottomGap:F

    const p1, 0x7f070ba8

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mOngoingGapHeight:F

    const p1, 0x7f070ba4

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mFavoriteGapHeight:F

    return-void
.end method

.method public maybeUpdateHeadsUpIsVisible(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;ZZZFF)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    cmpg-float p0, p5, p6

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    :cond_1
    return-void
.end method

.method public shouldHunBeVisibleWhenScrolled(ZZZZZ)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updatePulsingStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 5

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    move-object v0, v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget p0, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, p1

    if-nez p0, :cond_4

    :cond_3
    iput-object v0, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsingRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    :cond_4
    return-void
.end method

.method public updateViewWithShelf(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;FF)V
    .locals 2

    iget v0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v1

    if-nez v1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    add-float/2addr p4, p0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    add-float/2addr p4, p3

    invoke-static {v0, p4}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    iget p0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    cmpl-float p0, p0, p3

    if-ltz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isExpandAnimationRunning()Z

    move-result p0

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasExpandingChild()Z

    move-result p0

    if-nez p0, :cond_1

    move p0, p4

    goto :goto_1

    :cond_1
    move p0, p3

    :goto_1
    iput-boolean p0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    iput-boolean p4, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    iput-boolean p3, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    :cond_2
    return-void
.end method
