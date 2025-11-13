.class public final Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;
.super Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/safetycenter/SafetyCenterManager;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;)V
    .locals 15

    move-object v14, p0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/safetycenter/SafetyCenterManager;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;)V

    iput-object v0, v14, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;

    return-void
.end method


# virtual methods
.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;

    return-object p0
.end method

.method public final getIconRes(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f080ecf

    return p0

    :cond_0
    const p0, 0x7f080ece

    return p0
.end method

.method public final getRestriction()Ljava/lang/String;
    .locals 0

    const-string p0, "disallow_microphone_toggle"

    return-object p0
.end method

.method public final getSensorId()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1310db

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
