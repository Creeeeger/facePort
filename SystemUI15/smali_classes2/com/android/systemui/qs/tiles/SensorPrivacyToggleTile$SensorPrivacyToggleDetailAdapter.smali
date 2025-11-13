.class public abstract Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# instance fields
.field public mDetailSummary:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;

    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d03b4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0701

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;->getDetailSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public abstract getDetailSummary()Ljava/lang/String;
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x63e

    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final setToggleState(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v1, :cond_0

    new-instance p1, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;)V

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getSensorId()I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getSensorId()I

    move-result v4

    check-cast v3, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->setSensorBlocked(IIZ)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setToggleState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;->getDetailSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
