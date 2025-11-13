.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$onConfigChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$onConfigChanged$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$onConfigChanged$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v2

    iget v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgress:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegments:[Landroid/os/Parcelable;

    array-length v4, v4

    if-lez v4, :cond_1

    const-string/jumbo v4, "tintedProgress"

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    int-to-float v3, v3

    iget v5, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressMax:I

    if-lez v5, :cond_0

    const/16 v6, 0x64

    int-to-float v6, v6

    mul-float/2addr v3, v6

    int-to-float v5, v5

    div-float/2addr v3, v5

    :cond_0
    move v8, v3

    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegments:[Landroid/os/Parcelable;

    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegmentIcon:Landroid/graphics/drawable/Icon;

    iget v10, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressColor:I

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;-><init>(Landroid/content/Context;[Landroid/os/Parcelable;FLandroid/graphics/drawable/Icon;I)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->makeImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$onConfigChanged$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->updateBottomCardShadow()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$onConfigChanged$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->getCardStackLocationOnScreen()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mExpandedView:Landroid/view/ViewGroup;

    const v3, 0x7f0a0876

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
