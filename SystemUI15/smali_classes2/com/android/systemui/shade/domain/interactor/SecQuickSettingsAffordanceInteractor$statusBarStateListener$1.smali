.class public final Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$statusBarStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$statusBarStateListener$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExpandedChanged(Z)V
    .locals 1

    sget v0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->MAX_PANEL_AFFORDANCE_SHOW:I

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$statusBarStateListener$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    const-string v0, "onExpandedChanged"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->hideEffectIfNeeded(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStatePreChange(II)V
    .locals 3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "onStatePreChange "

    const-string v2, " > "

    invoke-static {p1, p2, v1, v2}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->MAX_PANEL_AFFORDANCE_SHOW:I

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$statusBarStateListener$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->hideEffectIfNeeded(Ljava/lang/String;Z)V

    return-void
.end method
