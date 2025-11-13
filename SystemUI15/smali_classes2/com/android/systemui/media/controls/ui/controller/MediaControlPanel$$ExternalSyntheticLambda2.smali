.class public final synthetic Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->refreshState()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->getNumberOfFittedRecommendations()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-object v2, v1, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->mediaCoverContainers:Ljava/util/List;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v0, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    invoke-static {v2, v5, v7}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    if-ge v4, v0, :cond_1

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    invoke-static {v1, v5, v6}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mLogger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mUid:I

    iget-object v2, v2, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;->ACTION_SEEK:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {v2, v4, v3, v0, v1}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_3
    const/4 v0, 0x0

    const/16 v1, 0x2f8

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->logSmartspaceCardReported(III)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
