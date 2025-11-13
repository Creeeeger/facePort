.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final IGNORED_EXT_KEYCODE:[Ljava/lang/Integer;

.field public final backActionInteractor:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;

.field public final context:Landroid/content/Context;

.field public final displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public mIsKeyDownInDozing:Ljava/lang/Boolean;

.field public mKeyUpCountInDozing:I

.field public final mediaSessionLegacyHelperWrapper:Lcom/android/systemui/media/controls/util/MediaSessionLegacyHelperWrapper;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final shadeController:Lcom/android/systemui/shade/ShadeController;

.field public final statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final sysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/media/controls/util/MediaSessionLegacyHelperWrapper;Lcom/android/systemui/back/domain/interactor/BackActionInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->sysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->context:Landroid/content/Context;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->shadeController:Lcom/android/systemui/shade/ShadeController;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->mediaSessionLegacyHelperWrapper:Lcom/android/systemui/media/controls/util/MediaSessionLegacyHelperWrapper;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->backActionInteractor:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x7e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, v6

    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v1, 0x59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v1, 0xde

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v1, 0xa4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->IGNORED_EXT_KEYCODE:[Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final dispatchMenuKeyEvent()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v0, v0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    invoke-virtual {v0}, Lcom/android/systemui/power/shared/model/WakefulnessModel;->isAwake()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDismissOnMenuPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->shadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->makeExpandedInvisible()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
