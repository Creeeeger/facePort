.class public final synthetic Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/systemui/classifier/FalsingClassifier$Result;

    iget-boolean p0, p1, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getReason()Ljava/lang/String;

    sget-boolean p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;->onFalse()V

    return-void

    :pswitch_1
    check-cast p1, Lcom/android/systemui/classifier/FalsingClassifier;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingClassifier;->onSessionEnded()V

    return-void

    :pswitch_2
    check-cast p1, Lcom/android/systemui/classifier/FalsingClassifier;

    iget-object p0, p1, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mMotionEventListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/systemui/classifier/FalsingClassifier;->mMotionEventListener:Lcom/android/systemui/classifier/FalsingClassifier$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_3
    check-cast p1, Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;->onAdditionalTapRequired()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
