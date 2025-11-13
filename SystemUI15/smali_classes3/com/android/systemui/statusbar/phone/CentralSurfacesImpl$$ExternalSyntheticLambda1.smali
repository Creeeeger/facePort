.class public final synthetic Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/view/IRemoteAnimationRunner;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    check-cast p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideWithAnimation(Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object v2, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda17;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/qs/SecQSDetailController;->showDetail(ZLcom/android/systemui/qs/SecQSPanelControllerBase$Record;)V

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->flipPageWithTile(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
