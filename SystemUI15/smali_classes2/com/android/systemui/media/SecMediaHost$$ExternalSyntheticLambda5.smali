.class public final synthetic Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaHost;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/media/SecMediaHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/media/SecMediaHost;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/systemui/media/SecMediaPlayerData;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p1, p0}, Lcom/android/systemui/media/SecMediaHost;->iteratePlayers(Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    iget-boolean p0, p0, Lcom/android/systemui/media/SecMediaHost;->mLocalListening:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/SecMediaControlPanel;->setListening(Z)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/android/systemui/media/SecMediaPlayerData;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    invoke-static {p1, v0}, Lcom/android/systemui/media/SecMediaHost;->iteratePlayers(Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_3
    check-cast p1, Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
