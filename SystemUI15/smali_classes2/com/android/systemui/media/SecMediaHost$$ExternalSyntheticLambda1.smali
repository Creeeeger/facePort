.class public final synthetic Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->updateResources()V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaType;->getSupportOAChip()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerOAPlayed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerOAPlayed:Z

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-boolean p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    :cond_3
    :goto_1
    return-void

    :pswitch_2
    check-cast p1, Landroid/view/View;

    check-cast p1, Lcom/android/systemui/media/QSMediaCornerRoundedView;

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/systemui/media/QSMediaCornerRoundedView;->mIsCornerRound:Z

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
