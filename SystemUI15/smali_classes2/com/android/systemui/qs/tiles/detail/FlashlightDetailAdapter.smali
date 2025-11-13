.class public final Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field public final mFlashlightTile:Lcom/android/systemui/qs/tiles/FlashlightTile;

.field public final mIsLowBattery:Z

.field public final mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mSlider:Landroid/widget/SeekBar;

.field public final mState:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

.field public final mUiHandler:Landroid/os/Handler;

.field public mWarningTextView:Landroid/widget/TextView;

.field public final torchLevelChangedListener:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$3;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Lcom/android/systemui/util/SettingsHelper;ZLandroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mWarningTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mIsLowBattery:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->torchLevelChangedListener:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$3;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mFlashlightTile:Lcom/android/systemui/qs/tiles/FlashlightTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mState:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-boolean p7, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mIsLowBattery:Z

    iput-object p8, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mUiHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d02f8

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0d21

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mWarningTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mContext:Landroid/content/Context;

    const p3, 0x7f1310da

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const v0, 0x7f130efc

    invoke-virtual {p2, v0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mWarningTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p2, 0x7f0a0458

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->torchLevelChangedListener:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$3;

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    new-instance p3, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mState:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p2, p2, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    new-instance p3, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77

    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f130e3e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mState:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final setToggleState(Z)V
    .locals 5

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isFlashlightTileBlocked()Z

    move-result v0

    const-string v1, "FlashlightDetailAdapter"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mFlashlightTile:Lcom/android/systemui/qs/tiles/FlashlightTile;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    const-string/jumbo p1, "setToggleState blocked"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mIsLowBattery:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f1306d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "flashlight"

    const-string v3, "QPDE1008"

    const-string v4, "location"

    invoke-static {v0, v3, v4, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setToggleState "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    new-instance v0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
