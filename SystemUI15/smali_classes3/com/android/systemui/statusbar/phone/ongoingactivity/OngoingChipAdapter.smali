.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final availableSpace:I

.field public final bgRadius:F

.field public final customChipSidePadding:I

.field public enableMaxWidth:I

.field public final expandedTextSize:F

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public final infoTextTotalMargin:I

.field public isKeyguardGoneNow:Z

.field public final mContext:Landroid/content/Context;

.field public final mMaxItemCount:I

.field public marqueePair:Lkotlin/Pair;

.field public final maxChipWidth:I

.field public final maximumWidth:I

.field public final notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public final notificationIconWidth:I

.field public final shadowWidth:I

.field public shouldShowChipOnly:Z

.field public final topHeight:I

.field public viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 12

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    const-string/jumbo p3, "{OngoingChipAdapter}"

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->TAG:Ljava/lang/String;

    const/4 p3, 0x2

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mMaxItemCount:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070c2b

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->topHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f070c26

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f070c18

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v3, 0x7f070c14

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->bgRadius:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v4, 0x7f070c2a

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->expandedTextSize:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v5, 0x7f070c13

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->availableSpace:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v6, 0x7f070c22

    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->maxChipWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v7, 0x7f070c25

    invoke-virtual {p3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->customChipSidePadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v8, 0x7f070c20

    invoke-virtual {p3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->shadowWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v9, 0x7f070c1f

    invoke-virtual {p3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->infoTextTotalMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v10, 0x7f070c35

    invoke-virtual {p3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->maximumWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v11, 0x7f070b36

    invoke-virtual {p3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->notificationIconWidth:I

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object p2

    iget p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->topHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->availableSpace:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->maxChipWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    mul-float/2addr p3, p2

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->bgRadius:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    mul-float/2addr p3, p2

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->expandedTextSize:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->customChipSidePadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->shadowWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->infoTextTotalMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->maximumWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->notificationIconWidth:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final getChipBg(II)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p1, p0, :cond_0

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    mul-int/lit8 p0, p0, 0x28

    div-int/lit8 p0, p0, 0x64

    invoke-virtual {p1, p0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final getItemCount()I
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mMaxItemCount:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final hasAvailableSpaceToExpand(I)Z
    .locals 7

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->shadowWidth:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->availableSpace:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getShowingIconCount()I

    move-result v3

    if-lez v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->notificationIconWidth:I

    add-int/2addr v0, v3

    :cond_1
    add-int/2addr v0, p1

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->enableMaxWidth:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->shouldShowChipOnly:Z

    const-string v4, "hasAvailableSpaceToExpand - enableMax:"

    const-string v5, " totalWidth"

    const-string v6, " call:"

    invoke-static {p1, v0, v4, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->enableMaxWidth:I

    if-lt p0, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;

    const-string v3, "onBindViewHolder() notificationArrayList.position = "

    invoke-static {v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_0

    const-string v0, "onBindViewHolder : ongoingActivity is null ##"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->getItemCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    sget-object v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    iget v10, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    invoke-static {v8, v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;->getMediaCardUiType$default(Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUtils;I)Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/ongoingactivity/media/OngoingMediaResourceUiType;->getMediaCardPrimaryInfoColor(Landroid/content/Context;)I

    move-result v8

    iget-object v9, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipView:Landroid/widget/RemoteViews;

    const/4 v11, 0x0

    const/16 v12, 0x8

    if-eqz v9, :cond_6

    if-ne v1, v6, :cond_6

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3, v11}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v6

    iget v6, v6, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v3, v4, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->customChipSidePadding:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v6

    iget v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->maxChipWidth:I

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->hasAvailableSpaceToExpand(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mNotiParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mRemoteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mRemoteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    const-string v6, "chip_sports_score"

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    instance-of v8, v6, Landroid/widget/TextView;

    if-eqz v8, :cond_1

    move-object v8, v6

    check-cast v8, Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f060531

    invoke-virtual {v7, v9}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->marqueePair:Lkotlin/Pair;

    :cond_1
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mRemoteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mRemoteContainer:Landroid/widget/FrameLayout;

    iget v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->customChipSidePadding:I

    invoke-virtual {v3, v5, v4, v5, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mRemoteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->topHeight:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mRemoteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->getChipBg(II)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->setChipBg(Landroid/view/View;ILandroid/content/res/ColorStateList;)V

    goto/16 :goto_e

    :cond_2
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mRemoteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mRemoteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mNotiParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipIcon:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_3

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_0

    :cond_3
    iget-object v3, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIcon:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_4

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_4
    :goto_0
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v3

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_5
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->setChipMode()V

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mNotiParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->topHeight:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mNotiParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->getChipBg(II)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->setChipBg(Landroid/view/View;ILandroid/content/res/ColorStateList;)V

    goto/16 :goto_e

    :cond_6
    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mRemoteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mRemoteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mNotiParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-ne v1, v6, :cond_a

    iget-object v9, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipIcon:Landroid/graphics/drawable/Icon;

    if-eqz v9, :cond_7

    iget-object v13, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_2

    :cond_7
    iget-object v9, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIcon:Landroid/graphics/drawable/Icon;

    if-eqz v9, :cond_8

    iget-object v13, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_8
    :goto_2
    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v9

    iget-object v13, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_9
    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_a
    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    if-ne v1, v6, :cond_1f

    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_b

    new-instance v6, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v9, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_b
    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_c

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9, v11}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Chronometer;

    const-string v9, "%s"

    invoke-virtual {v6, v9}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Landroid/widget/Chronometer;->hidden_semSetMilliSecondCount(I)V

    const/16 v9, 0x3e8

    invoke-virtual {v6, v9}, Landroid/widget/Chronometer;->hidden_semSetForceTickTime(I)V

    goto :goto_4

    :cond_c
    new-instance v6, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v9, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryInfo:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const-string/jumbo v9, "sec"

    invoke-static {v9, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    const/16 v11, 0x258

    invoke-static {v9, v11, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->expandedTextSize:F

    invoke-virtual {v6, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {v6, v4, v4}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    iget v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->maximumWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->infoTextTotalMargin:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->hasAvailableSpaceToExpand(I)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->setChipMode()V

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mNotiParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->topHeight:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mNotiParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->getChipBg(II)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->setChipBg(Landroid/view/View;ILandroid/content/res/ColorStateList;)V

    goto/16 :goto_e

    :cond_d
    iget v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->enableMaxWidth:I

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getShowingIconCount()I

    move-result v9

    if-lez v9, :cond_e

    move v9, v7

    goto :goto_5

    :cond_e
    move v9, v4

    :goto_5
    iget-object v11, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mExpandedInfo:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v11

    if-lez v11, :cond_f

    iget-object v11, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mExpandedInfo:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_f
    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const/16 v13, 0x12c

    if-ne v11, v13, :cond_10

    move v11, v7

    goto :goto_6

    :cond_10
    move v11, v4

    :goto_6
    iget-object v13, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mRootLayout:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    iget-object v14, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    invoke-virtual {v14, v13}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v13

    iget v13, v13, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    iget-object v15, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mRootLayout:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v12, 0x7f070c38

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v13

    invoke-static {v12}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v12

    iget-object v15, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mRootLayout:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v7, 0x7f070c37

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v13

    invoke-static {v7}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v7

    iget-object v13, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mNotiParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v12, v4, v7, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mNotiParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v12, -0x2

    iput v12, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v7, 0x1

    if-le v3, v7, :cond_11

    iget v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->chipOffset:I

    goto :goto_7

    :cond_11
    move v3, v4

    :goto_7
    if-eqz v9, :cond_12

    iget v7, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->notificationIconWidth:I

    goto :goto_8

    :cond_12
    move v7, v4

    :goto_8
    invoke-virtual {v6, v4, v4}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    iget v12, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->maximumWidth:I

    if-le v9, v12, :cond_13

    goto :goto_9

    :cond_13
    iget v9, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->infoTextExtra:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    sub-int/2addr v8, v3

    if-le v8, v12, :cond_14

    goto :goto_9

    :cond_14
    iget v12, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->minimumWidth:I

    if-le v8, v12, :cond_15

    move v12, v8

    :cond_15
    :goto_9
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    instance-of v3, v6, Landroid/widget/Chronometer;

    if-eqz v3, :cond_1e

    move-object v7, v6

    check-cast v7, Landroid/widget/Chronometer;

    invoke-virtual {v7}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x5

    if-gt v8, v9, :cond_17

    if-eqz v11, :cond_16

    iget v8, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->boldFourthUnitWidth:I

    goto :goto_a

    :cond_16
    iget v8, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->fourthUnitWidth:I

    goto :goto_a

    :cond_17
    invoke-virtual {v7}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x7

    if-gt v8, v9, :cond_19

    if-eqz v11, :cond_18

    iget v8, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->boldFifthUnitWidth:I

    goto :goto_a

    :cond_18
    iget v8, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->fifthUnitWidth:I

    goto :goto_a

    :cond_19
    invoke-virtual {v7}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/16 v9, 0x8

    if-gt v8, v9, :cond_1b

    if-eqz v11, :cond_1a

    iget v8, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->boldSixthUnitWidth:I

    goto :goto_a

    :cond_1a
    iget v8, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->sixthUnitWidth:I

    goto :goto_a

    :cond_1b
    move v8, v4

    :goto_a
    int-to-float v8, v8

    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mRootLayout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v14, v9}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v9

    iget v9, v9, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-eqz v8, :cond_1d

    if-le v8, v12, :cond_1c

    goto :goto_b

    :cond_1c
    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mExpandedInfo:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/Chronometer;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v9, v6, v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mExpandedInfo:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_c

    :cond_1d
    :goto_b
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->setChipMode()V

    goto :goto_c

    :cond_1e
    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mExpandedInfo:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mExpandedInfo:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_c
    if-nez v3, :cond_20

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->marqueePair:Lkotlin/Pair;

    goto :goto_d

    :cond_1f
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->setChipMode()V

    :cond_20
    :goto_d
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mNotiParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->topHeight:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mNotiParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->getChipBg(II)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->setChipBg(Landroid/view/View;ILandroid/content/res/ColorStateList;)V

    :goto_e
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->viewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->TAG:Ljava/lang/String;

    const-string v1, "onCreateViewHolder() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;

    const v1, 0x7f0d0397

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;)V

    return-object v0
.end method

.method public final setChipBg(Landroid/view/View;ILandroid/content/res/ColorStateList;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->bgRadius:F

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    move-object/from16 v4, p3

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->getItemCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->getItemCount()I

    move-result v6

    if-le v6, v5, :cond_3

    move/from16 v6, p2

    if-eq v6, v4, :cond_3

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070c20

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070c23

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-static {v7}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v4

    iget v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->topHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v2, v4, v7, v8}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v5}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v11, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v5, :cond_0

    move v3, v5

    :cond_0
    if-eqz v3, :cond_1

    int-to-float v2, v6

    move v11, v2

    :cond_1
    if-eqz v3, :cond_2

    :goto_0
    int-to-float v2, v4

    move v13, v2

    goto :goto_1

    :cond_2
    sub-int/2addr v4, v6

    goto :goto_0

    :goto_1
    int-to-float v14, v7

    iget v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->bgRadius:F

    const/4 v12, 0x0

    move v15, v2

    move/from16 v16, v2

    move-object/from16 v17, v8

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v2, v0, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method
