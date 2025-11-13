.class public final Lcom/android/systemui/shade/NotificationPanelViewController$16;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeViewStateProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKeyguardTouchAnimator()Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    return-object p0
.end method

.method public final getLockscreenShadeDragProgress()F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result p0

    return p0
.end method

.method public final getPanelViewExpandedHeight()F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    return p0
.end method

.method public final shouldHeadsUpBeVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible$1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
