.class public final Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;
.super Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public anchorBottomOnStart:I

.field public final anchorChildren:Ljava/util/ArrayList;

.field public anchorHeightOnStart:I

.field public final anchorLayoutChangedListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$anchorLayoutChangedListener$1;

.field public anchorLeftOnStart:I

.field public anchorLocationOnStart:[I

.field public anchorRightOnStart:I

.field public anchorTopOnStart:I

.field public anchorView:Landroid/view/View;

.field public anchorWidthOnStart:I

.field public animStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

.field public final barController:Lcom/android/systemui/qs/bar/BarController;

.field public bottomLargeTileBar:Lcom/android/systemui/qs/bar/BottomLargeTileBar;

.field public bottomLargeTileBarView:Landroid/view/View;

.field public brightnessVolumeBar:Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

.field public brightnessVolumeBarView:Landroid/view/View;

.field public btTileView:Lcom/android/systemui/plugins/qs/QSTileView;

.field public buttonContainer:Landroid/view/ViewGroup;

.field public chunkTileBarView:Landroid/view/View;

.field public final coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

.field public final context:Landroid/content/Context;

.field public dataUsageBar:Lcom/android/systemui/qs/bar/DataUsageBar;

.field public dataUsageBarView:Landroid/view/View;

.field public detail:Lcom/android/systemui/qs/SecQSDetail;

.field public detailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

.field public detailContent:Landroid/view/View;

.field public detailHeaderText:Landroid/view/View;

.field public detailSummary:Landroid/view/View;

.field public final detailcontroller:Lcom/android/systemui/qs/SecQSDetailController;

.field public expandedFraction:F

.field public expandedMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

.field public heightDiff:I

.field public final hideAnimEndListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;

.field public hideDetailSpringAnimator:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

.field public isAnimating:Z

.field public final lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public final mediaAnchorLayoutChangedListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$mediaAnchorLayoutChangedListener$1;

.field public mediaPlayerBarView:Landroid/view/View;

.field public multiSIMBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

.field public multiSIMBarView:Landroid/view/View;

.field public networkSpeedContainer:Landroid/view/View;

.field public panelClosingAnchorHidingAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final panelViewList:Ljava/util/ArrayList;

.field public plmn:Landroid/view/View;

.field public privacyContainer:Landroid/view/View;

.field public qsPanel:Landroid/view/ViewGroup;

.field public final qsTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

.field public quickControlBar:Lcom/android/systemui/qs/bar/QuickControlBar;

.field public quickControlBarView:Landroid/view/View;

.field public quickHeader:Landroid/view/View;

.field public securityFooterBar:Lcom/android/systemui/qs/bar/SecurityFooterBar;

.field public securityFooterBarView:Landroid/view/View;

.field public final shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public final showAnimEndListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$showAnimEndListener$1;

.field public showDetailSpringAnimator:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

.field public smartLargeTileBarView:Landroid/view/View;

.field public smartViewLargeTileBar:Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;

.field public final springAnimList:Ljava/util/ArrayList;

.field public systemIconContainer:Landroid/view/View;

.field public final targetChildren:Ljava/util/ArrayList;

.field public targetHeightOnStart:I

.field public final targetLayoutChangedListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$targetLayoutChangedListener$1;

.field public targetLeftOnStart:I

.field public targetLocation:[I

.field public targetView:Landroid/view/View;

.field public targetWidthOnStart:I

.field public textXDiff:F

.field public textYDiff:F

.field public tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

.field public topLargeTileBar:Lcom/android/systemui/qs/bar/TopLargeTileBar;

.field public videoCallMicModeBar:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

.field public videoCallMicModeBarView:Landroid/view/View;

.field public widthDiff:I

.field public wifiTileView:Lcom/android/systemui/plugins/qs/QSTileView;

.field public xDiff:F

.field public yDiff:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/bar/ColoredBGHelper;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailcontroller:Lcom/android/systemui/qs/SecQSDetailController;

    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->barController:Lcom/android/systemui/qs/bar/BarController;

    iput-object p4, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    iput-object p5, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iput-object p6, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->qsTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    new-instance p1, Lcom/android/systemui/util/ConfigurationState;

    sget-object p2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    const/4 p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorLocationOnStart:[I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorChildren:Ljava/util/ArrayList;

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetLocation:[I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetChildren:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->springAnimList:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$anchorLayoutChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$anchorLayoutChangedListener$1;-><init>(Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorLayoutChangedListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$anchorLayoutChangedListener$1;

    new-instance p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$mediaAnchorLayoutChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$mediaAnchorLayoutChangedListener$1;-><init>(Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->mediaAnchorLayoutChangedListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$mediaAnchorLayoutChangedListener$1;

    new-instance p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$targetLayoutChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$targetLayoutChangedListener$1;-><init>(Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetLayoutChangedListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$targetLayoutChangedListener$1;

    new-instance p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$showAnimEndListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$showAnimEndListener$1;-><init>(Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->showAnimEndListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$showAnimEndListener$1;

    new-instance p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;-><init>(Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->hideAnimEndListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;

    return-void
.end method

.method public static getCenterPositionOnScreen(Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v3, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    add-int/2addr p0, v1

    filled-new-array {v3, p0}, [I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final aimingTarget()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->getCenterPositionOnScreen(Landroid/view/View;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorLocationOnStart:[I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorWidthOnStart:I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorHeightOnStart:I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iput v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorLeftOnStart:I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    iput v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorTopOnStart:I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    iput v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorRightOnStart:I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    iput v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorBottomOnStart:I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/systemui/qs/tileimpl/LargeTileView;

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->getCenterPositionOnScreen(Landroid/view/View;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetLocation:[I

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_6

    :cond_8
    move v0, v1

    :goto_6
    iput v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetWidthOnStart:I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_7

    :cond_9
    move v0, v1

    :goto_7
    iput v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetHeightOnStart:I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_8

    :cond_a
    move v0, v1

    :goto_8
    iput v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetLeftOnStart:I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    goto :goto_9

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3f6ac083    # 0.917f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetWidthOnStart:I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3f266666    # 0.65f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetHeightOnStart:I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3d29fbe7    # 0.0415f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetLeftOnStart:I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3e333333    # 0.175f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetLeftOnStart:I

    iget v4, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetWidthOnStart:I

    iget v5, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetHeightOnStart:I

    iget-object v6, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetLocation:[I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    aput v4, v6, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    aput v5, v6, v2

    :cond_e
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetLocation:[I

    aget v3, v0, v1

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorLocationOnStart:[I

    aget v1, v4, v1

    sub-int v1, v3, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->xDiff:F

    aget v0, v0, v2

    aget v2, v4, v2

    sub-int v4, v0, v2

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->yDiff:F

    iput v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->textXDiff:F

    int-to-float v1, v0

    iget v4, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetHeightOnStart:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->textYDiff:F

    const-string/jumbo v1, "targetLocation[0] "

    const-string v2, "   targetLocation[1] "

    const-string v4, "QsPopupAnimator"

    invoke-static {v3, v0, v1, v2, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetWidthOnStart:I

    iget v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorWidthOnStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->widthDiff:I

    iget v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetHeightOnStart:I

    iget v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorHeightOnStart:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->heightDiff:I

    iget v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->xDiff:F

    iget p0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->yDiff:F

    const-string v3, "aimingTarget "

    const-string v5, " "

    invoke-static {v3, v2, v5, p0, v5}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, v0, v5, v1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final clearAnimationState()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorLeftOnStart:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLeft(I)V

    iget v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorRightOnStart:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setRight(I)V

    iget v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorTopOnStart:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setTop(I)V

    iget v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorBottomOnStart:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBottom(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detail:Lcom/android/systemui/qs/SecQSDetail;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->qsPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailHeaderText:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailSummary:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->systemIconContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->showDetailSpringAnimator:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->hideDetailSpringAnimator:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelClosingAnchorHidingAnimator:Lcom/android/systemui/qs/TouchAnimator;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailPopupShowing:Z

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailContent:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getBGColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->setBackGroundDrawable(Landroid/view/View;I)V

    return-void
.end method

.method public final destroyQSViews()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorLayoutChangedListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$anchorLayoutChangedListener$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->mediaAnchorLayoutChangedListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$mediaAnchorLayoutChangedListener$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailContent:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetLayoutChangedListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$targetLayoutChangedListener$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v1

    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->clearAnimationState()V

    :cond_0
    sget-boolean v2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailPopupShowing:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailPopupShowing:Z

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailContent:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    invoke-virtual {v3}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getBGColor()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->setBackGroundDrawable(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->aimingTarget()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->clearAnimationState()V

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detail:Lcom/android/systemui/qs/SecQSDetail;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->qsTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    :cond_3
    return-void
.end method

.method public final onPanelClosed$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->buttonContainer:Landroid/view/ViewGroup;

    const/high16 v1, 0x20000

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->qsPanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->springAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->clearAnimationState()V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->animStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailOpening(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->animStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    if-eqz v0, :cond_5

    invoke-static {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailShowing(Z)V

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->animStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    if-eqz p0, :cond_6

    invoke-static {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailClosing(Z)V

    :cond_6
    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->expandedFraction:F

    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->expandedFraction:F

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailPopupShowing:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelClosingAnchorHidingAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->destroyQSViews()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->BOTTOM_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->barController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->bottomLargeTileBar:Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS_VOLUME:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->brightnessVolumeBar:Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->QS_MEDIA_PLAYER:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    goto :goto_2

    :cond_3
    move-object p1, v2

    :goto_2
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->expandedMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->MULTI_SIM_PREFERRED_SLOT:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    goto :goto_3

    :cond_4
    move-object p1, v2

    :goto_3
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->multiSIMBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->QUICK_CONTROL:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/QuickControlBar;

    if-eqz v1, :cond_5

    check-cast p1, Lcom/android/systemui/qs/bar/QuickControlBar;

    goto :goto_4

    :cond_5
    move-object p1, v2

    :goto_4
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->quickControlBar:Lcom/android/systemui/qs/bar/QuickControlBar;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->SECURITY_FOOTER:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/SecurityFooterBar;

    if-eqz v1, :cond_6

    check-cast p1, Lcom/android/systemui/qs/bar/SecurityFooterBar;

    goto :goto_5

    :cond_6
    move-object p1, v2

    :goto_5
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->securityFooterBar:Lcom/android/systemui/qs/bar/SecurityFooterBar;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->SMARTVIEW_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;

    if-eqz v1, :cond_7

    check-cast p1, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;

    goto :goto_6

    :cond_7
    move-object p1, v2

    :goto_6
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->smartViewLargeTileBar:Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->TILE_CHUNK_LAYOUT:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    if-eqz v1, :cond_8

    check-cast p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    goto :goto_7

    :cond_8
    move-object p1, v2

    :goto_7
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->TOP_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/TopLargeTileBar;

    if-eqz v1, :cond_9

    check-cast p1, Lcom/android/systemui/qs/bar/TopLargeTileBar;

    goto :goto_8

    :cond_9
    move-object p1, v2

    :goto_8
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->topLargeTileBar:Lcom/android/systemui/qs/bar/TopLargeTileBar;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->VIDEO_CALL_MIC_MODE:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    if-eqz v1, :cond_a

    check-cast p1, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    goto :goto_9

    :cond_a
    move-object p1, v2

    :goto_9
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->videoCallMicModeBar:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->DATAUSAGE:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    instance-of v0, p1, Lcom/android/systemui/qs/bar/DataUsageBar;

    if-eqz v0, :cond_b

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/qs/bar/DataUsageBar;

    :cond_b
    iput-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->dataUsageBar:Lcom/android/systemui/qs/bar/DataUsageBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->updateViews$4()V

    return-void
.end method

.method public final startPopupAnimation(Z)V
    .locals 6

    iget v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->xDiff:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->yDiff:F

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->animStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailOpening(Z)V

    :cond_0
    sput-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailPopupShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->isAnimating:Z

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->hideDetailSpringAnimator:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->showDetailSpringAnimator:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->animStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailShowing(Z)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->animStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailClosing(Z)V

    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->isAnimating:Z

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->showDetailSpringAnimator:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->hideDetailSpringAnimator:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_6
    :goto_0
    return-void
.end method

.method public final transitionDetail(Landroid/view/View;Z)V
    .locals 7

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    const-string/jumbo v1, "transitionDetail( "

    const-string v2, " ), isDetailShowing? "

    const-string v3, "QsPopupAnimator"

    invoke-static {v1, v2, v3, p2, v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v0, 0x3

    const-string v1, " "

    invoke-static {v0, v1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detail:Lcom/android/systemui/qs/SecQSDetail;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detail:Lcom/android/systemui/qs/SecQSDetail;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detail:Lcom/android/systemui/qs/SecQSDetail;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleX(F)V

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detail:Lcom/android/systemui/qs/SecQSDetail;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetLayoutChangedListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$targetLayoutChangedListener$1;

    const/4 v4, 0x1

    if-ne p2, v4, :cond_13

    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorChildren:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    if-eqz p2, :cond_7

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detail:Lcom/android/systemui/qs/SecQSDetail;

    if-eqz p2, :cond_8

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    if-eqz p1, :cond_12

    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorLayoutChangedListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$anchorLayoutChangedListener$1;

    if-eqz p2, :cond_9

    invoke-virtual {p2, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_9
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->mediaAnchorLayoutChangedListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$mediaAnchorLayoutChangedListener$1;

    if-eqz p2, :cond_a

    invoke-virtual {p2, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_a
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    instance-of p2, p1, Lcom/android/systemui/qs/tileimpl/LargeTileView;

    if-eqz p2, :cond_b

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_5
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    instance-of p2, p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_6

    :cond_c
    move-object p1, v0

    :goto_6
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move v1, v2

    :goto_7
    if-ge v1, p2, :cond_d

    iget-object v5, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_d
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_e
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detail:Lcom/android/systemui/qs/SecQSDetail;

    if-eqz p1, :cond_f

    const-string/jumbo p2, "target"

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_8

    :cond_f
    move-object p1, v0

    :goto_8
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_10
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_11

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_9
    if-ge v2, p1, :cond_12

    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->aimingTarget()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->updateAnimators()V

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->startPopupAnimation(Z)V

    goto :goto_a

    :cond_13
    if-nez p2, :cond_15

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    if-eqz p1, :cond_14

    invoke-virtual {p1, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_14
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->startPopupAnimation(Z)V

    :cond_15
    :goto_a
    return-void
.end method

.method public final updateAnimators()V
    .locals 7

    const/4 v0, 0x2

    const-string v1, "QsPopupAnimator"

    const-string/jumbo v2, "updateAnimators"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->updateViews$4()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->springAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/systemui/qs/tileimpl/LargeTileView;

    iget v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->xDiff:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->yDiff:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    new-instance v3, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v3, v4}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v4, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v4}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v6, 0x43960000    # 300.0f

    invoke-virtual {v4, v6}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v4

    const v6, 0x3f4eec1e

    invoke-virtual {v4, v6}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$1$1;

    invoke-direct {v4, v2, p0, v1}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$1$1;-><init>(FLcom/android/systemui/qs/animator/QsDetailPopupAnimator;Z)V

    invoke-virtual {v3, v4}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->showAnimEndListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$showAnimEndListener$1;

    invoke-virtual {v3, v4}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->removeEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->springAnimList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->showDetailSpringAnimator:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v4, v2}, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v3, v4}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v4, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v4}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v6, 0x43c80000    # 400.0f

    invoke-virtual {v4, v6}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v4

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v4, v6}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;

    invoke-direct {v4, v2, p0, v1, v3}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;-><init>(FLcom/android/systemui/qs/animator/QsDetailPopupAnimator;ZLcom/android/internal/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->springAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->hideDetailSpringAnimator:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    const-string v3, "alpha"

    if-eqz v2, :cond_0

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->systemIconContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelClosingAnchorHidingAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updateViews$4()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->bottomLargeTileBar:Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->bottomLargeTileBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->brightnessVolumeBar:Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->brightnessVolumeBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->expandedMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->mediaPlayerBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->multiSIMBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->multiSIMBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->quickControlBar:Lcom/android/systemui/qs/bar/QuickControlBar;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->quickControlBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->securityFooterBar:Lcom/android/systemui/qs/bar/SecurityFooterBar;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    move-object v0, v1

    :goto_5
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->securityFooterBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->smartViewLargeTileBar:Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    move-object v0, v1

    :goto_6
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->smartLargeTileBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->chunkTileBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->topLargeTileBar:Lcom/android/systemui/qs/bar/TopLargeTileBar;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/android/systemui/qs/bar/TopLargeTileBar;->mWifiTileView:Lcom/android/systemui/plugins/qs/QSTileView;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->topLargeTileBar:Lcom/android/systemui/qs/bar/TopLargeTileBar;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/android/systemui/qs/bar/TopLargeTileBar;->mBluetoothTileView:Lcom/android/systemui/plugins/qs/QSTileView;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->topLargeTileBar:Lcom/android/systemui/qs/bar/TopLargeTileBar;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/android/systemui/qs/bar/TopLargeTileBar;->mOtherTileViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->videoCallMicModeBar:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    move-object v0, v1

    :goto_9
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->videoCallMicModeBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->dataUsageBar:Lcom/android/systemui/qs/bar/DataUsageBar;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    move-object v0, v1

    :goto_a
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->dataUsageBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    const v2, 0x7f0a0996

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_b

    :cond_d
    move-object v0, v1

    :goto_b
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->qsPanel:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    const v2, 0x7f0a04d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_e
    move-object v0, v1

    :goto_c
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->quickHeader:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    const v2, 0x7f0a04e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_f
    move-object v0, v1

    :goto_d
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->buttonContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const v2, 0x7f0a0991

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_10
    move-object v2, v1

    :goto_e
    iput-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->networkSpeedContainer:Landroid/view/View;

    const v2, 0x7f0a0b42

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->systemIconContainer:Landroid/view/View;

    const v2, 0x7f0a0920

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_11
    move-object v2, v1

    :goto_f
    iput-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->privacyContainer:Landroid/view/View;

    const v2, 0x7f0a00dc

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_12
    move-object v0, v1

    :goto_10
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->plmn:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailcontroller:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detail:Lcom/android/systemui/qs/SecQSDetail;

    if-eqz v0, :cond_13

    const v2, 0x7f0a0963

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    :cond_13
    move-object v0, v1

    :goto_11
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailHeaderText:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detail:Lcom/android/systemui/qs/SecQSDetail;

    if-eqz v0, :cond_14

    const v2, 0x7f0a0962

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_12

    :cond_14
    move-object v0, v1

    :goto_12
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailSummary:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detail:Lcom/android/systemui/qs/SecQSDetail;

    if-eqz v0, :cond_15

    const v1, 0x7f0a0968

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_15
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailContent:Landroid/view/View;

    return-void
.end method
