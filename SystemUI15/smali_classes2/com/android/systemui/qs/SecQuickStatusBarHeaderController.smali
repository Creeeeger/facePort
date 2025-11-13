.class public final Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mListening:Z

.field public final mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQuickStatusBarHeader;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/qs/SecQuickQSPanelController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    return-void
.end method


# virtual methods
.method public final onInit()V
    .locals 0

    return-void
.end method

.method public final onViewAttached()V
    .locals 0

    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->setListening(Z)V

    return-void
.end method

.method public final setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->setListening(Z)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateContentsPadding()V

    return-void
.end method
