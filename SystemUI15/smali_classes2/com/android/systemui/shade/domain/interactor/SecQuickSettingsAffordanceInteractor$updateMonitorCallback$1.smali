.class public final Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$updateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$updateMonitorCallback$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDlsViewModeChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget p1, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->MAX_PANEL_AFFORDANCE_SHOW:I

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$updateMonitorCallback$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    const-string p1, "onDlsViewModeChanged"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->hideEffectIfNeeded(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 1

    sget v0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->MAX_PANEL_AFFORDANCE_SHOW:I

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$updateMonitorCallback$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    const-string v0, "onKeyguardBouncerStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->hideEffectIfNeeded(Ljava/lang/String;Z)V

    return-void
.end method
