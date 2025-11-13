.class public final synthetic Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/qs/QSPanelHost;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->makeCloneBar()V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->getDefaultBarOrderList()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    const-string v1, "BarOrderRepository"

    const-string v2, "resetBarOrder"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->toFilteredNonEditBars(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->setBarOrder(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->sendOrderStatusLog()V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->setCollapsedBarRow(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->sendCollapsedRowStatusLog()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
