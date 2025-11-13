.class public final synthetic Lcom/android/systemui/qs/buttons/QSEditButton$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSEditButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSEditButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSEditButton$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/buttons/QSEditButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSEditButton$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/buttons/QSEditButton;

    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSEditButton;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Lcom/android/systemui/qs/buttons/QSEditButton$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSEditButton$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/buttons/QSEditButton;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSCustomizerRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1017"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
