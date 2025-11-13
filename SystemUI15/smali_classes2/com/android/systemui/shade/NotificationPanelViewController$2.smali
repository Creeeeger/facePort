.class public final Lcom/android/systemui/shade/NotificationPanelViewController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/PanelTransitionStateListener;


# instance fields
.field public mPanelState:I

.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->mPanelState:I

    return-void
.end method


# virtual methods
.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->mPanelState:I

    iget p1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->state:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->mPanelState:I

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->mPanelState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isPanelExpanded()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard$1()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateEntrySetRead()V

    :cond_0
    return-void
.end method
