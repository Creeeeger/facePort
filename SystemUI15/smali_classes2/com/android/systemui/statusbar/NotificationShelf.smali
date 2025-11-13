.class public Lcom/android/systemui/statusbar/NotificationShelf;
.super Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;
.implements Lcom/android/systemui/statusbar/notification/stack/AmbientState$KeyguardNotiExpandListener;


# static fields
.field public static final BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

.field public static final ICON_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SHELF_SCROLL:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;


# instance fields
.field public mActualWidth:F

.field public mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public mAnimationsEnabled:Z

.field public mCanInteract:Z

.field public final mClipRect:Landroid/graphics/Rect;

.field public mCornerAnimationDistance:F

.field public mEnableNotificationClipping:Z

.field public mHasItemsInStableShelf:Z

.field public mHideBackground:Z

.field public mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public mIndexOfFirstViewInShelf:I

.field public mInteractive:Z

.field public mNotGoneIndex:I

.field public mPaddingBetweenElements:I

.field public mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

.field public mScrollFastThreshold:I

.field public mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

.field public mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

.field public mShowNotificationShelf:Z

.field public mStatusBarState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-string v0, "BaseValue"

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SourceType;->from(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/NotificationShelf;->BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    const-string v0, "ShelfScroll"

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SourceType;->from(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/NotificationShelf;->SHELF_SCROLL:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mActualWidth:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mActualWidth:F

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    sget-object p1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    const-string p2, "NotificationShelf"

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    return-void
.end method


# virtual methods
.method public final createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;)V

    return-object v0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    const-class v2, Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "NotificationShelf"

    invoke-static {v1, v0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addHeaderLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hasItemsInStableShelf"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v1, "NotificationShelfIcon"

    invoke-static {v1, v0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addHeaderLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    :goto_1
    if-eqz v2, :cond_2

    sget-object v3, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    iget v4, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "iconAppearAmount"

    invoke-static {v0, v3, v4}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "clampedAppearAmount"

    invoke-static {v0, v4, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "visibleState"

    invoke-static {v0, v4, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "justAdded"

    invoke-static {v0, v4, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "needsCannedAnimation"

    invoke-static {v0, v4, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "iconColor"

    invoke-static {v0, v4, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "noAnimations"

    invoke-static {v0, v3, v2}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "method"

    invoke-static {v0, v3, v2}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method public getAmountInShelf(ILcom/android/systemui/statusbar/notification/row/ExpandableView;ZZZF)F
    .locals 9

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    iget v0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v2, v1

    :goto_0
    int-to-float v2, v0

    add-float/2addr v2, p1

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x0

    if-eqz p5, :cond_2

    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_2

    :cond_1
    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_2
    int-to-float v0, v0

    add-float v4, p1, v0

    cmpl-float v4, v4, p6

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-ltz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-nez v4, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_3
    cmpg-float v4, p1, p6

    if-gez v4, :cond_5

    sub-float v4, p1, p6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v7, 0x3a83126f    # 0.001f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_5

    sub-float v4, p6, p1

    div-float v0, v4, v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v6, v0

    if-eqz p5, :cond_4

    sub-float/2addr v1, p1

    div-float/2addr v4, v1

    goto :goto_1

    :cond_4
    sub-float/2addr p6, v1

    div-float v4, p6, v2

    :goto_1
    invoke-static {v4, v5, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    sub-float p1, v6, p1

    goto :goto_3

    :cond_5
    move p1, v6

    :goto_2
    move v0, p1

    goto :goto_3

    :cond_6
    move p1, v5

    goto :goto_2

    :goto_3
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p6

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    move-object v1, v2

    goto :goto_4

    :cond_7
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v1, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    :goto_4
    if-nez v1, :cond_8

    goto/16 :goto_10

    :cond_8
    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v4, p1, v4

    if-gtz v4, :cond_b

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    iget v8, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentTranslation:F

    add-float/2addr v7, v8

    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v7, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    iget v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v8, v8

    sub-float/2addr v4, v8

    cmpl-float v4, v7, v4

    if-ltz v4, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    move v4, v5

    goto :goto_7

    :cond_b
    :goto_6
    move v4, v6

    :goto_7
    cmpl-float v7, p1, v4

    const/4 v8, 0x1

    if-nez v7, :cond_e

    if-nez p3, :cond_c

    if-eqz p4, :cond_d

    :cond_c
    if-nez p5, :cond_d

    move v7, v8

    goto :goto_8

    :cond_d
    move v7, v3

    :goto_8
    iput-boolean v7, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    :cond_e
    if-nez p5, :cond_10

    if-nez p3, :cond_f

    if-eqz p4, :cond_10

    sget p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-virtual {p6, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v1, p6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    iput-boolean v8, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    :cond_10
    :goto_9
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result p3

    if-eqz p3, :cond_12

    iget-boolean p3, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    if-nez p3, :cond_12

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p1

    if-eqz p1, :cond_11

    move p1, v6

    goto :goto_b

    :cond_11
    move p1, v5

    goto :goto_b

    :cond_12
    iget p3, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float p3, p3, v4

    if-eqz p3, :cond_13

    move p3, v8

    goto :goto_a

    :cond_13
    move p3, v3

    :goto_a
    iput-boolean p3, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    :goto_b
    iput v4, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    instance-of p3, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p3, :cond_1d

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p3

    iget-object p4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    if-nez p4, :cond_14

    goto :goto_c

    :cond_14
    iget-object p4, p4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    :goto_c
    if-nez v2, :cond_15

    goto/16 :goto_10

    :cond_15
    sget-object p4, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    check-cast p4, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p4, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p4

    invoke-virtual {v2, p4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    iget-boolean p4, p2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz p4, :cond_16

    iget-boolean p4, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    if-nez p4, :cond_16

    goto :goto_d

    :cond_16
    iget-boolean p4, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsMinimized:Z

    if-eqz p4, :cond_17

    iget-object p4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    iget-boolean p4, p4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    if-eqz p4, :cond_17

    iget p4, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-ne p4, v8, :cond_1a

    :cond_17
    cmpl-float p4, p1, v5

    if-nez p4, :cond_18

    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating$1(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_1a

    :cond_18
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result p3

    if-nez p3, :cond_1a

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result p3

    if-nez p3, :cond_1a

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result p3

    iget-object p4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float p4, v3

    cmpl-float p3, p3, p4

    if-lez p3, :cond_19

    goto :goto_d

    :cond_19
    move p3, v3

    goto :goto_e

    :cond_1a
    :goto_d
    move p3, v8

    :goto_e
    iput-boolean p3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz p3, :cond_1b

    goto :goto_f

    :cond_1b
    move v5, p1

    :goto_f
    iput v5, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    iget-object p4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    iget p4, p4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float p4, p4

    div-float/2addr p4, p3

    sub-float/2addr p1, p4

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    iget-boolean p1, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    if-eqz p1, :cond_1c

    iget-boolean p1, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransformingInShelf:Z

    if-nez p1, :cond_1c

    iput v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_1c
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result p0

    if-eqz p0, :cond_1d

    iput-boolean v8, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    :cond_1d
    :goto_10
    return v0
.end method

.method public final getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    iget p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mActualWidth:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    float-to-int p2, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    return-void
.end method

.method public final getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    return-object p0
.end method

.method public final hasNoContentHeight()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hideBackground()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    return p0
.end method

.method public isXInView(FFFF)Z
    .locals 0

    sub-float/2addr p3, p2

    cmpg-float p0, p3, p1

    if-gtz p0, :cond_0

    add-float/2addr p4, p2

    cmpg-float p0, p1, p4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isYInView(FFFF)Z
    .locals 0

    sub-float/2addr p3, p2

    cmpg-float p0, p3, p1

    if-gtz p0, :cond_0

    add-float/2addr p4, p2

    cmpg-float p0, p1, p4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final needsOutline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->needsOutline()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateResources$3()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onFinishInflate()V

    const v0, 0x7f0a02d1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping$1()V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    sget-object v0, Lcom/android/systemui/statusbar/NotificationShelf;->BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p0, v2, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateResources$3()V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1300f3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    neg-int p3, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p3, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    iput p1, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateShelfLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconsPaddingEnd()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateShelfTextArea()V

    return-void
.end method

.method public final pointInView(FFF)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mActualWidth:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    sub-float v2, v0, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    int-to-float v1, v1

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v3, v3

    invoke-virtual {p0, p1, p3, v2, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->isXInView(FFFF)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p2, p3, v1, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->isYInView(FFFF)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public final setFakeShadowIntensity(IFFI)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFakeShadowIntensity(IFFI)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (hideBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " notGoneIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hasItemsInStableShelf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " interactive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " animationsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " showNotificationShelf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " indexOfFirstViewInShelf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateActualWidth(FF)V
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2, v0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    :goto_0
    float-to-int p2, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iput p2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualWidth:I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    if-eqz v0, :cond_2

    iput p2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mActualWidth:F

    return-void
.end method

.method public final updateAppearance()V
    .locals 27

    move-object/from16 v7, p0

    const/4 v8, 0x1

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v9

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v11, -0x1

    iput v11, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mCurrentScrollVelocity:F

    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandingVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v13, v8

    :goto_1
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    if-eqz v1, :cond_3

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelTracking:Z

    if-nez v0, :cond_3

    move v14, v8

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    const/16 v16, 0x0

    move/from16 v4, v16

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/16 v15, 0x8

    if-ge v6, v1, :cond_18

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->needsClippingToShelf()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    if-ne v11, v15, :cond_5

    :cond_4
    move-object v11, v3

    move/from16 v26, v6

    move-object/from16 v21, v10

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v12, 0x0

    move v10, v2

    move v13, v4

    move v14, v5

    goto/16 :goto_15

    :cond_5
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    move-result v11

    if-eqz v11, :cond_6

    instance-of v11, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v11, :cond_6

    iget-object v11, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v11, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    if-eqz v11, :cond_6

    move v11, v8

    goto :goto_4

    :cond_6
    move v11, v0

    :goto_4
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getTranslationZ()F

    goto :goto_5

    :cond_7
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Z:I

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v15

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    if-eq v0, v8, :cond_9

    :cond_8
    const/16 v18, 0x0

    goto :goto_6

    :cond_9
    if-ne v1, v10, :cond_8

    move/from16 v18, v8

    :goto_6
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iget v8, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v8, v8

    sub-float/2addr v0, v8

    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    check-cast v8, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    instance-of v12, v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move/from16 v20, v0

    if-eqz v12, :cond_a

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-eqz v18, :cond_a

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_a

    iget v0, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    move-object/from16 v21, v1

    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    move/from16 v20, v0

    goto :goto_7

    :cond_a
    move-object/from16 v21, v1

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v22, v21

    move v1, v6

    move-object/from16 v21, v10

    move v10, v2

    move-object/from16 v2, v22

    move/from16 v23, v11

    move-object v11, v3

    move v3, v13

    move/from16 v24, v13

    move v13, v4

    move v4, v14

    move/from16 v25, v14

    move v14, v5

    move/from16 v5, v18

    move/from16 v26, v6

    move/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationShelf;->getAmountInShelf(ILcom/android/systemui/statusbar/notification/row/ExpandableView;ZZZF)F

    move-result v0

    move-object/from16 v1, v22

    if-nez v15, :cond_d

    if-eqz v18, :cond_b

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    if-nez v2, :cond_b

    goto :goto_9

    :cond_b
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating$1(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    cmpl-float v2, v9, v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    :goto_8
    int-to-float v2, v2

    add-float/2addr v2, v9

    goto :goto_a

    :cond_c
    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v2, v2

    sub-float v2, v9, v2

    goto :goto_a

    :cond_d
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    goto :goto_8

    :goto_a
    invoke-virtual {v7, v1, v2, v10}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I

    move-result v2

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_10

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    add-float v4, v13, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor(ZZ)I

    if-nez v10, :cond_f

    if-nez v15, :cond_e

    goto :goto_c

    :cond_e
    :goto_b
    const/4 v0, 0x1

    goto :goto_d

    :cond_f
    :goto_c
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    goto :goto_b

    :goto_d
    add-int/lit8 v2, v10, 0x1

    goto :goto_e

    :cond_10
    move v2, v10

    move v4, v13

    :goto_e
    if-eqz v12, :cond_17

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-nez v0, :cond_11

    instance-of v0, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_11

    move-object v0, v3

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_f

    :cond_11
    const/4 v0, 0x0

    :goto_f
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-eqz v6, :cond_12

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    if-ne v3, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_10

    :cond_12
    const/4 v1, 0x0

    :goto_10
    cmpg-float v6, v19, v9

    if-gez v6, :cond_13

    iget-object v6, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eq v3, v8, :cond_13

    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/Roundable;

    if-eq v3, v8, :cond_13

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/Roundable;

    if-ne v3, v6, :cond_14

    :cond_13
    const/4 v12, 0x0

    goto :goto_13

    :cond_14
    if-nez v0, :cond_13

    if-nez v1, :cond_13

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsing:Z

    if-nez v1, :cond_13

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    if-nez v1, :cond_13

    iget v1, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v1, v1

    add-float v1, v19, v1

    iget v6, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mCornerAnimationDistance:F

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    mul-float/2addr v6, v0

    sub-float v0, v9, v6

    cmpl-float v8, v19, v0

    if-ltz v8, :cond_15

    sub-float v19, v19, v0

    div-float v19, v19, v6

    invoke-static/range {v19 .. v19}, Landroid/util/MathUtils;->saturate(F)F

    move-result v8

    goto :goto_11

    :cond_15
    move/from16 v8, v16

    :goto_11
    sget-object v10, Lcom/android/systemui/statusbar/NotificationShelf;->SHELF_SCROLL:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    const/4 v12, 0x0

    invoke-interface {v3, v8, v10, v12}, Lcom/android/systemui/statusbar/notification/Roundable;->requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    cmpl-float v8, v1, v0

    if-ltz v8, :cond_16

    sub-float/2addr v1, v0

    div-float/2addr v1, v6

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    goto :goto_12

    :cond_16
    move/from16 v0, v16

    :goto_12
    invoke-interface {v3, v0, v10, v12}, Lcom/android/systemui/statusbar/notification/Roundable;->requestBottomRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    :goto_13
    move/from16 v0, v23

    :goto_14
    const/4 v1, 0x1

    goto :goto_16

    :cond_17
    const/4 v12, 0x0

    move-object v3, v11

    goto :goto_13

    :goto_15
    move v2, v10

    move-object v3, v11

    move v4, v13

    move v5, v14

    goto :goto_14

    :goto_16
    add-int/lit8 v6, v26, 0x1

    move v8, v1

    move-object/from16 v10, v21

    move/from16 v13, v24

    move/from16 v14, v25

    const/4 v11, -0x1

    goto/16 :goto_3

    :cond_18
    move v10, v2

    move-object v11, v3

    move v13, v4

    move v14, v5

    const/4 v12, 0x0

    move v1, v12

    :goto_17
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result v2

    if-ge v1, v2, :cond_1a

    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v3, :cond_19

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v7, v2, v3, v4}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I

    :cond_19
    const/4 v2, 0x1

    add-int/2addr v1, v2

    goto :goto_17

    :cond_1a
    invoke-virtual {v7, v14}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipTopAmount(I)V

    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-ge v14, v1, :cond_1e

    iget-boolean v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-eqz v1, :cond_1e

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v13, v1

    if-gez v2, :cond_1b

    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-eqz v2, :cond_1e

    :cond_1b
    cmpl-float v1, v13, v1

    if-nez v1, :cond_1c

    if-eqz v11, :cond_1c

    iget-boolean v1, v11, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v1, :cond_1c

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v1

    if-nez v1, :cond_1e

    :cond_1c
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mQsEditMode:Z

    if-nez v2, :cond_1e

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    if-nez v2, :cond_1e

    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    cmpl-float v2, v2, v16

    if-eqz v2, :cond_1e

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNotificationAsCard()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-nez v1, :cond_1d

    cmpl-float v1, v13, v16

    if-lez v1, :cond_1d

    goto :goto_18

    :cond_1d
    move v1, v12

    goto :goto_19

    :cond_1e
    :goto_18
    const/4 v1, 0x1

    :goto_19
    sget-object v2, Lcom/android/app/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v3, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    sget v2, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmpl-float v3, v13, v16

    if-nez v3, :cond_1f

    goto :goto_1a

    :cond_1f
    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIconsOnLockscreen:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v13, v3}, Landroid/util/MathUtils;->min(FF)F

    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    const/high16 v4, -0x31000000

    cmpl-float v3, v3, v4

    if-nez v3, :cond_20

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingStart()I

    :cond_20
    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_21

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    :cond_21
    :goto_1a
    if-eqz v1, :cond_22

    const/4 v2, 0x4

    goto :goto_1b

    :cond_22
    move v2, v12

    :goto_1b
    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    sget-object v3, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getSpeedBumpIndex$1()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->calculateIconXTranslations()V

    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mBgViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v12

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1c

    :cond_23
    iget v3, v2, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingBetweenIcons:I

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mBgViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    iget-object v3, v7, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iput v2, v3, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBgWidth:I

    move v2, v12

    :goto_1d
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_28

    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_24

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v15, :cond_25

    :cond_24
    :goto_1e
    const/4 v3, 0x1

    goto :goto_21

    :cond_25
    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mShelfIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_26

    iget-object v5, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    if-nez v5, :cond_26

    const/4 v5, 0x1

    goto :goto_1f

    :cond_26
    move v5, v12

    :goto_1f
    const v6, 0x7f0a02de

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_27

    const/4 v8, 0x1

    goto :goto_20

    :cond_27
    move v8, v12

    :goto_20
    if-eqz v5, :cond_24

    if-nez v8, :cond_24

    invoke-virtual {v3}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v8, Lcom/android/systemui/statusbar/NotificationShelf$1;

    invoke-direct {v8, v7, v3, v5, v4}, Lcom/android/systemui/statusbar/NotificationShelf$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {v5, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    new-instance v4, Lcom/android/systemui/statusbar/NotificationShelf$2;

    invoke-direct {v4, v7, v3, v5, v8}, Lcom/android/systemui/statusbar/NotificationShelf$2;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v3, v6, v8}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_1e

    :goto_21
    add-int/2addr v2, v3

    goto :goto_1d

    :cond_28
    const/4 v3, 0x1

    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_29

    if-ne v1, v3, :cond_29

    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    check-cast v2, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    if-eqz v2, :cond_29

    if-eqz v0, :cond_29

    goto :goto_22

    :cond_29
    move v12, v1

    :goto_22
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-eqz v0, :cond_2a

    goto :goto_23

    :cond_2a
    move v8, v12

    goto :goto_24

    :cond_2b
    :goto_23
    move v8, v3

    :goto_24
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eq v0, v8, :cond_2e

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v0, :cond_2c

    goto :goto_26

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->needsOutline()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v15, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;

    goto :goto_25

    :cond_2d
    const/4 v15, 0x0

    :goto_25
    invoke-virtual {v7, v15}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_2e
    :goto_26
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2f

    iput v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    :cond_2f
    return-void
.end method

.method public final updateBackgroundColors()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundColors()V

    sget-object p0, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;->Companion:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final updateIconsPaddingEnd()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextArea:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mIconContainerPaddingEnd:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    :cond_1
    return-void
.end method

.method public final updateInteractiveness()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCanInteract:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public final updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I
    .locals 6

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iget v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v5, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    if-eqz v5, :cond_2

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsHeadsUpEntry:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v2

    :goto_2
    if-eqz v1, :cond_5

    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean p3, p3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-eqz p3, :cond_8

    :cond_5
    cmpl-float p3, v0, p2

    if-lez p3, :cond_7

    if-nez v2, :cond_7

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mEnableNotificationClipping:Z

    if-eqz p3, :cond_6

    sub-float p2, v0, p2

    float-to-int p2, p2

    goto :goto_3

    :cond_6
    move p2, v3

    :goto_3
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_9
    return v3
.end method

.method public final updateResources$3()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    const v1, 0x7f070b33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    const v1, 0x7f0b00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    const v1, 0x7f070bb3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f070bb2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v3, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const v1, 0x7f070f21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    const v1, 0x7f050044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    const v1, 0x7f070b2f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCornerAnimationDistance:F

    const v1, 0x7f050077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mEnableNotificationClipping:Z

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverrideIconColor:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mIconContainerPaddingEnd:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconsPaddingEnd()V

    return-void
.end method

.method public final updateState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 11

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLargeScreenShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;

    if-nez v0, :cond_4

    iget-boolean v4, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    iget-object v5, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isPrimaryBouncerInTransit()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->aboutToShowBouncerProgress(F)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-boolean v5, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSmallScreen:Z

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_0

    :cond_1
    invoke-interface {v3, v4}, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;->getNotificationContentAlpha(F)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-boolean v4, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-eqz v4, :cond_3

    iget v4, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    invoke-static {v4}, Lcom/android/systemui/animation/ShadeInterpolation;->getNotifContentAlpha(F)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_0

    :cond_3
    iget v4, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    sub-float v4, v2, v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    iget v5, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    sub-float v5, v2, v5

    iget-object v6, v4, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_4
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_10

    if-eqz v0, :cond_10

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-nez v4, :cond_5

    return-void

    :cond_5
    iget v8, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget v9, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    iget v9, v9, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    if-eq v9, v5, :cond_6

    iget v9, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    iget v10, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    goto :goto_1

    :cond_6
    move v9, v6

    :goto_1
    add-float/2addr v8, v9

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    iput v9, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v7

    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    iput v7, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    iget-boolean v9, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    if-eqz v9, :cond_9

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v9

    if-nez v9, :cond_9

    iget v9, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    iget-object v10, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isPrimaryBouncerInTransit()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {v9}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->aboutToShowBouncerProgress(F)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_2

    :cond_7
    iget-boolean v10, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSmallScreen:Z

    if-eqz v10, :cond_8

    invoke-static {v9}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_2

    :cond_8
    invoke-interface {v3, v9}, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;->getNotificationContentAlpha(F)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_2

    :cond_9
    iget-boolean v3, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-eqz v3, :cond_a

    iget v3, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    invoke-static {v3}, Lcom/android/systemui/animation/ShadeInterpolation;->getNotifContentAlpha(F)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_2

    :cond_a
    iget v3, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    sub-float v3, v2, v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    iget v9, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    sub-float v9, v2, v9

    iget-object v10, v3, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_b

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_b
    :goto_2
    sget v3, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    sget-object v3, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getSpeedBumpIndex$1()I

    move-result v3

    if-nez v3, :cond_c

    move v3, v5

    goto :goto_3

    :cond_c
    move v3, v7

    :goto_3
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    iget-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v3, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v9, -0x1

    if-eq v3, v9, :cond_d

    iget v9, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    :cond_d
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    if-eq v3, v5, :cond_f

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-eqz v3, :cond_e

    goto :goto_4

    :cond_e
    iget v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    iget v9, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    add-int/2addr v3, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v9, v10

    int-to-float v3, v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    iget v4, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    sub-float/2addr v7, v4

    div-float/2addr v7, v3

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v3, v7, v3

    if-gez v3, :cond_f

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    :cond_f
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    xor-int/2addr v3, v5

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    if-eqz v4, :cond_12

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v4, :cond_12

    if-lez v3, :cond_12

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    sub-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz p1, :cond_12

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    goto :goto_5

    :cond_10
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-nez p1, :cond_11

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    const/16 p1, 0x40

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    :cond_11
    move v8, v6

    :cond_12
    :goto_5
    iget p1, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    iget v3, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    add-float/2addr p1, v3

    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v3, :cond_15

    if-nez v0, :cond_13

    goto :goto_6

    :cond_13
    iget-boolean p2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz p2, :cond_14

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    goto/16 :goto_9

    :cond_14
    iget p0, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    goto/16 :goto_9

    :cond_15
    :goto_6
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight$1()I

    move-result v0

    iget v3, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    add-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_16

    iget v3, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mNotificationScrimTop:F

    iget v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpl-float p1, v3, p1

    if-lez p1, :cond_16

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_16
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-eqz p1, :cond_17

    goto :goto_7

    :cond_17
    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iget p1, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p1, p1

    sub-float/2addr p0, p1

    iget p1, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExtraTopInsetForFullShadeTransition:F

    add-float/2addr p0, p1

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    goto :goto_9

    :cond_18
    :goto_7
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNavBarHeight(Landroid/content/Context;)I

    move-result v0

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v4, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v3, v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v3}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getNotificationBottomPadding(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p0, v0

    iget v0, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    add-int/2addr p0, v0

    int-to-float p0, p0

    iget v0, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mQsExpansionFraction:F

    const v3, 0x3f4ccccd    # 0.8f

    cmpg-float v4, v0, v3

    if-gez v4, :cond_19

    move v0, v6

    goto :goto_8

    :cond_19
    sub-float/2addr v0, v3

    const v3, 0x3e4ccccd    # 0.2f

    div-float/2addr v0, v3

    :goto_8
    sub-float v0, v2, v0

    mul-float/2addr v0, p0

    sub-float/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    iget p0, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    cmpl-float p0, p0, v2

    if-nez p0, :cond_1a

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    :cond_1a
    :goto_9
    return-void
.end method
