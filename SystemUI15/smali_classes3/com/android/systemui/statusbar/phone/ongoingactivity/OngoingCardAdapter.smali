.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final boldFifthUnitWidth:I

.field public final boldFourthUnitWidth:I

.field public final boldSixthUnitWidth:I

.field public final customChipSidePadding:I

.field public final fifthUnitWidth:I

.field public final fourthUnitWidth:I

.field public getMediaCardView:Lkotlin/jvm/functions/Function1;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public mCardExpandContents:Landroid/view/ViewGroup;

.field public mCardParentLayout:Landroid/view/ViewGroup;

.field public final mContext:Landroid/content/Context;

.field public mDummyExpandedInfo:Landroid/widget/FrameLayout;

.field public mDummyNotiParentLayout:Landroid/widget/LinearLayout;

.field public mDummyRemoteContainer:Landroid/widget/FrameLayout;

.field public mDummySmallIcon:Landroid/widget/ImageView;

.field public mDummyTextSize:F

.field public final remoteHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final sixthUnitWidth:I

.field public final topHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/media/SecMediaHost;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->remoteHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c25

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->customChipSidePadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c2b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->topHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c2a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyTextSize:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c14

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c28

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->sixthUnitWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c1b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->fifthUnitWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c1c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->fourthUnitWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c17

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->boldSixthUnitWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c15

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->boldFifthUnitWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c16

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->boldFourthUnitWidth:I

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "OCA.bindview START"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "{OngoingActivityCardStackAdapter}"

    const-string v1, "bindView : ongoingActivity is null ##"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->initNormalNotificationView(Landroid/view/View;)V

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->getOngoingCardWidth(Landroid/content/Context;)I

    move-result v6

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const-string v3, "MediaOngoingActivity"

    const-string v5, "bindView is not support media ongoing data"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_9

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mCardExpandContents:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mCardExpandContents:Landroid/view/ViewGroup;

    if-eqz v12, :cond_9

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mPromotedOngoingView:Landroid/view/View;

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    goto :goto_0

    :cond_3
    move-object v8, v7

    :goto_0
    if-eqz v8, :cond_4

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    if-nez v5, :cond_5

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->remoteHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v8, v8, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mInteractionHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    invoke-virtual {v3, v5, v7, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object v5

    :cond_5
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_6

    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardRemoteContainer;

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardRemoteContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v5, v3, v3}, Landroid/view/View;->measure(II)V

    iget-object v8, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    if-nez v8, :cond_7

    move v11, v4

    goto :goto_2

    :cond_7
    move v11, v3

    :goto_2
    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mCardExpandContents:Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v10, v5

    goto :goto_3

    :cond_8
    move-object v10, v7

    :goto_3
    iget v13, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    move-object v5, v8

    move v7, v9

    move v8, v13

    move-object v9, v10

    move v10, v3

    invoke-static/range {v5 .. v11}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;->addGradientBackground(Landroid/content/Context;IIILandroid/graphics/drawable/Drawable;ZZ)V

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v5, -0x2

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_9
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->updateOngoingChronometer(Landroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)V

    :goto_4
    if-nez p2, :cond_a

    invoke-virtual {v1, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_5

    :cond_a
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->inflateDummyChipView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)V

    return-void
.end method

.method public final getCount()I
    .locals 0

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    return p0
.end method

.method public final getDetachedMediaView()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getMediaCardView:Lkotlin/jvm/functions/Function1;

    const-string v1, "MediaOngoingActivity"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "getMediaCard. lambda is not initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0

    :cond_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    if-nez v0, :cond_1

    const-string p0, "getDetachedMediaView getMediaCard is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->initNormalNotificationView(Landroid/view/View;)V

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    sget-object p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    const/4 v0, 0x0

    const v1, 0x7f0d0399

    if-le p2, p1, :cond_2

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getDetachedMediaView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->inflateDummyChipView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)V

    return-object p2

    :cond_1
    const-string p0, "MediaOngoingActivity"

    const-string p1, "getView. Cannot get media View"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->bindView(Landroid/view/View;I)V

    return-object p2
.end method

.method public final inflateDummyChipView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)V
    .locals 8

    const-string v0, "OCA.inflateDummyChipView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;->getMediaCardUiType$default(Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;I)Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;->getMediaCardPrimaryInfoColor(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipView:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eqz v1, :cond_e

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummySmallIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummySmallIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummySmallIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummySmallIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyNotiParentLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyRemoteContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyRemoteContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_8
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const-string v1, "chip_sports_score"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v4, v1, Landroid/widget/TextView;

    if-eqz v4, :cond_9

    check-cast v1, Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f060531

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyRemoteContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_a
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->customChipSidePadding:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->topHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyRemoteContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1, v2, p1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyRemoteContainer:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    :cond_c
    if-nez v3, :cond_d

    goto/16 :goto_f

    :cond_d
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_f

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyRemoteContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyRemoteContainer:Landroid/widget/FrameLayout;

    if-nez v1, :cond_10

    goto :goto_5

    :cond_10
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyNotiParentLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_6
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_13

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummySmallIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_12

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_7

    :cond_12
    move-object v1, v3

    :goto_7
    if-nez v1, :cond_14

    :cond_13
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_14

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummySmallIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_14

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_14
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummySmallIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_15

    goto :goto_8

    :cond_15
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummySmallIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_17

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_9

    :cond_16
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_17
    :goto_9
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_18

    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_18
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_19

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/Chronometer;

    const-string p1, "%s"

    invoke-virtual {v1, p1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Chronometer;->hidden_semSetMilliSecondCount(I)V

    goto :goto_a

    :cond_19
    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryInfo:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    const-string/jumbo p1, "sec"

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    const/16 v6, 0x258

    invoke-static {p1, v6, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyTextSize:F

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyExpandedInfo:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    goto :goto_b

    :cond_1a
    move p1, v2

    :goto_b
    if-lez p1, :cond_1b

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyExpandedInfo:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_1b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f070c38

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070c37

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyNotiParentLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1c

    invoke-virtual {v6, v0, v2, p1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyNotiParentLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    :cond_1d
    if-nez v3, :cond_1e

    goto :goto_c

    :cond_1e
    const/4 p1, -0x2

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_c
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_1f

    goto :goto_d

    :cond_1f
    move v5, v2

    :goto_d
    instance-of p1, v1, Landroid/widget/Chronometer;

    if-eqz p1, :cond_28

    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    move-object p1, v1

    check-cast p1, Landroid/widget/Chronometer;

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x5

    if-gt v0, v3, :cond_21

    if-eqz v5, :cond_20

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->boldFourthUnitWidth:I

    goto :goto_e

    :cond_20
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->fourthUnitWidth:I

    goto :goto_e

    :cond_21
    invoke-virtual {p1}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x7

    if-gt v0, v3, :cond_23

    if-eqz v5, :cond_22

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->boldFifthUnitWidth:I

    goto :goto_e

    :cond_22
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->fifthUnitWidth:I

    goto :goto_e

    :cond_23
    invoke-virtual {p1}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, v4, :cond_25

    if-eqz v5, :cond_24

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->boldSixthUnitWidth:I

    goto :goto_e

    :cond_24
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->sixthUnitWidth:I

    goto :goto_e

    :cond_25
    move v0, v2

    :goto_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyExpandedInfo:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_26

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v3, v1, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_26
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyExpandedInfo:Landroid/widget/FrameLayout;

    if-nez p0, :cond_27

    goto :goto_f

    :cond_27
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_f

    :cond_28
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyExpandedInfo:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_29

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_29
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyExpandedInfo:Landroid/widget/FrameLayout;

    if-nez p0, :cond_2a

    goto :goto_f

    :cond_2a
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final initNormalNotificationView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0c03

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mCardParentLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a0c02

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mCardExpandContents:Landroid/view/ViewGroup;

    const v0, 0x7f0a03d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyNotiParentLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummySmallIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a03d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyExpandedInfo:Landroid/widget/FrameLayout;

    const v0, 0x7f0a03d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyRemoteContainer:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummySmallIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyExpandedInfo:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c21

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c2a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mDummyTextSize:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070c14

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    return-void
.end method
