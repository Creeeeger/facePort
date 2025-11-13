.class public final synthetic Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/SecQSPanelController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSPanelController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/SecQSPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/SecQSPanelController;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mQSCMainViewController:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    iget-boolean v1, v0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->isShown:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->show(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mBarOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->initValuesAndApply(Landroid/content/Context;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
