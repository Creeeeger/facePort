.class public final Lcom/android/systemui/qs/QSContainerImplController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSContainerImplController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSContainerImplController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImplController$1;->this$0:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController$1;->this$0:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-static {p0}, Lcom/android/systemui/qs/QSContainerImplController;->access$000(Lcom/android/systemui/qs/QSContainerImplController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSContainerImpl;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources(Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)V

    return-void
.end method
