.class public final Lcom/android/keyguard/KeyguardStatusViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field static final TAG:Ljava/lang/String; = "KeyguardStatusViewController"


# instance fields
.field public final mClipBounds:Landroid/graphics/Rect;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardStatusViewController$4;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public mIsDLSViewEnabledSupplier:Ljava/util/function/Supplier;

.field public final mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

.field public final mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

.field public final mKeyguardStatusAlignmentTransitionListener:Lcom/android/keyguard/KeyguardStatusViewController$1;

.field public mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

.field public final mKeyguardStatusViewAlphaChangeControllerWrapper:Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

.field public final mLockscreenShadeTransitonCallback:Lcom/android/keyguard/KeyguardStatusViewController$3;

.field public final mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

.field public mPluginAODManagerLazy:Ldagger/Lazy;

.field public mSplitShadeEnabled:Ljava/lang/Boolean;

.field public mStatusArea:Landroid/view/View;

.field public mStatusAreaHeightAnimator:Landroid/animation/ValueAnimator;

.field public final mStatusAreaLayoutChangeListener:Lcom/android/keyguard/KeyguardStatusViewController$2;

.field public mStatusViewCentered:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    sput-object v0, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;Lcom/android/keyguard/KeyguardStatusView;Lcom/android/keyguard/KeyguardSliceViewController;Lcom/android/keyguard/KeyguardClockSwitchController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V
    .locals 9

    move-object v0, p0

    move-object v1, p3

    invoke-direct {p0, p3}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusArea:Landroid/view/View;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusAreaHeightAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mSplitShadeEnabled:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusViewCentered:Ljava/lang/Boolean;

    new-instance v2, Lcom/android/keyguard/KeyguardStatusViewController$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardStatusViewController$1;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusAlignmentTransitionListener:Lcom/android/keyguard/KeyguardStatusViewController$1;

    new-instance v2, Lcom/android/keyguard/KeyguardStatusViewController$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardStatusViewController$2;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusAreaLayoutChangeListener:Lcom/android/keyguard/KeyguardStatusViewController$2;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mIsDLSViewEnabledSupplier:Ljava/util/function/Supplier;

    new-instance v1, Lcom/android/keyguard/KeyguardStatusViewController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardStatusViewController$3;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mLockscreenShadeTransitonCallback:Lcom/android/keyguard/KeyguardStatusViewController$3;

    new-instance v1, Lcom/android/keyguard/KeyguardStatusViewController$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardStatusViewController$4;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardStatusViewController$4;

    new-instance v1, Lcom/android/keyguard/KeyguardStatusViewController$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardStatusViewController$5;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v4, p9

    iput-object v4, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    new-instance v8, Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object/from16 v1, p11

    iget-object v7, v1, Lcom/android/keyguard/logging/KeyguardLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v6, 0x1

    move-object v1, v8

    move-object v3, p6

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/KeyguardVisibilityHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;ZLcom/android/systemui/log/LogBuffer;)V

    iput-object v8, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusViewAlphaChangeControllerWrapper:Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "KeyguardStatusView:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mDarkAmount: 0.0"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  visibility: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getVisibility()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    if-eqz p0, :cond_5

    const-string p2, "KeyguardSliceView:"

    const-string v0, "  mTitle: "

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "null"

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  mRow: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_2
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  mTextColor: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTextColor:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  mDarkAmount: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    const-string v1, "  mHasHeader: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_5
    return-void
.end method

.method public final getClockView()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mClockContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    :goto_0
    return-object v0
.end method

.method public final getHeight()I
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-eqz v0, :cond_3

    iget-object p0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContentsContainerList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v0, 0x7fffffff

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v0

    :cond_2
    :goto_1
    return v1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public final onInit()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardStatusView;

    const v2, 0x7f0a0c22

    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getView()Lcom/android/keyguard/KeyguardClockSwitch;

    move-result-object v0

    new-instance v2, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KeyguardStatusViewController#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    sget-object p0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    const v1, 0x7f0a05c8

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusArea:Landroid/view/View;

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusAreaLayoutChangeListener:Lcom/android/keyguard/KeyguardStatusViewController$2;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardStatusViewController$4;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusAreaLayoutChangeListener:Lcom/android/keyguard/KeyguardStatusViewController$2;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardStatusViewController$4;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final refreshTime()V
    .locals 5

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "KeyguardClockSwitchController"

    const-string v4, "refresh"

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceSession;->requestSmartspaceUpdate()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getClock()Lcom/android/systemui/plugins/clocks/ClockController;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onTimeTick()V

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onTimeTick()V

    :cond_1
    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusViewAlphaChangeControllerWrapper:Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;->updateAlpha(F)V

    :cond_1
    return-void
.end method

.method public final setClipBounds(Landroid/graphics/Rect;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v3}, Landroid/widget/GridLayout;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v4}, Landroid/widget/GridLayout;->getY()F

    move-result v4

    sub-float/2addr p1, v4

    float-to-int p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/widget/GridLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public final setKeyguardStatusViewVisibility(IIZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v3, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    iget-object v4, v3, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Landroid/view/View;

    iget-object v3, v3, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v4, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;)V

    iget-object v4, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    iget-object v6, v4, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v6, Landroid/view/View;

    iget-object v4, v4, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v6, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :goto_2
    iget-object v4, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mIsDLSViewEnabledSupplier:Ljava/util/function/Supplier;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v8

    goto :goto_3

    :cond_5
    move v4, v7

    :goto_3
    iget-object v9, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iput-object v10, v9, Lcom/android/keyguard/KeyguardVisibilityHelper;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v11, v9, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v12, v11

    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v13, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    iput-boolean v7, v9, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    const/16 v14, 0x8

    const/4 v15, 0x2

    if-eqz v4, :cond_7

    if-ne v2, v15, :cond_7

    if-ne v1, v8, :cond_7

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v14}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;->accept(I)V

    :cond_6
    :goto_4
    move v3, v14

    goto/16 :goto_6

    :cond_7
    if-nez p3, :cond_8

    if-ne v2, v8, :cond_8

    if-ne v1, v8, :cond_9

    :cond_8
    if-eqz p4, :cond_a

    :cond_9
    iput-boolean v8, v9, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xa0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v9, v6, v5, v4}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;Landroid/view/View;Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    if-eqz p3, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-wide v3, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-wide v3, v11, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDuration:J

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    :cond_a
    if-ne v2, v15, :cond_b

    if-ne v1, v8, :cond_b

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v7}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;->accept(I)V

    goto :goto_4

    :cond_b
    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v1, v8, :cond_11

    if-eqz p3, :cond_d

    iput-boolean v8, v9, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;

    const/4 v11, 0x1

    invoke-direct {v3, v9, v6, v5, v11}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;Landroid/view/View;Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-boolean v3, v9, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateYPos:Z

    if-eqz v3, :cond_c

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    const/16 v4, 0x7d

    int-to-long v4, v4

    iget-object v11, v9, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iput-wide v4, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    int-to-long v14, v7

    iput-wide v14, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    sget-object v7, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->cancelAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)V

    invoke-static {v6, v7, v3, v11, v8}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_c
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_5
    const/16 v3, 0x8

    goto :goto_6

    :cond_d
    iget-boolean v3, v9, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLastOccludedState:Z

    if-eqz v3, :cond_f

    if-nez v13, :cond_f

    if-eqz v4, :cond_e

    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;->accept(I)V

    move v3, v2

    goto :goto_6

    :cond_e
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v7}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;->accept(I)V

    goto :goto_5

    :cond_f
    iget-object v3, v9, Lcom/android/keyguard/KeyguardVisibilityHelper;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldAnimateInKeyguard()Z

    move-result v4

    if-eqz v4, :cond_10

    iput-boolean v8, v9, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    iget-object v2, v9, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    iget-object v4, v9, Lcom/android/keyguard/KeyguardVisibilityHelper;->mSetVisibleEndRunnable:Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animateInKeyguard$1(Landroid/view/View;Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;)V

    goto :goto_5

    :cond_10
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v5, v7}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;->accept(I)V

    goto :goto_5

    :cond_11
    move v3, v14

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v5, v3}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;->accept(I)V

    :goto_6
    iput-boolean v13, v9, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLastOccludedState:Z

    sget-boolean v2, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v2, :cond_15

    if-nez p3, :cond_14

    if-nez v1, :cond_12

    goto :goto_8

    :cond_12
    iget-object v0, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v14

    goto :goto_7

    :cond_13
    move v14, v3

    :goto_7
    invoke-virtual {v10, v14}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    goto :goto_9

    :cond_14
    :goto_8
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    :cond_15
    :goto_9
    return-void
.end method

.method public setProperty(Lcom/android/systemui/statusbar/notification/AnimatableProperty;FZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    sget-object v0, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    return-void
.end method

.method public final setStatusAccessibilityImportance(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public final setTranslationY$1(F)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mStatusViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mStatusViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateAlignment(Landroidx/constraintlayout/widget/ConstraintLayout;ZZZ)V
    .locals 7

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardClockSwitchController;->setSplitShadeCentered(Z)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusViewCentered:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, p3, :cond_1

    return-void

    :cond_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusViewCentered:Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    if-eqz p3, :cond_3

    move p3, v0

    goto :goto_1

    :cond_3
    const p3, 0x7f0a096a

    :goto_1
    const v4, 0x7f0a05ca

    const/4 v5, 0x7

    invoke-virtual {v2, v4, v5, p3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    if-nez p4, :cond_4

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void

    :cond_4
    iget-object p3, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object p4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/16 v4, 0x46

    invoke-virtual {p3, p4, v4}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    new-instance p3, Landroid/transition/ChangeBounds;

    invoke-direct {p3}, Landroid/transition/ChangeBounds;-><init>()V

    if-eqz p2, :cond_5

    const p4, 0x7f0a0c22

    invoke-virtual {p3, p4, v1}, Landroid/transition/ChangeBounds;->excludeTarget(IZ)Landroid/transition/Transition;

    const-class p4, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, p4, v1}, Landroid/transition/ChangeBounds;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    const-class p4, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, p4, v1}, Landroid/transition/ChangeBounds;->excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;

    :cond_5
    sget-object p4, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p4}, Landroid/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    const-wide/16 v4, 0x168

    invoke-virtual {p3, v4, v5}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardClockSwitchController;->getClock()Lcom/android/systemui/plugins/clocks/ClockController;

    move-result-object p4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusAlignmentTransitionListener:Lcom/android/keyguard/KeyguardStatusViewController$1;

    if-eqz p4, :cond_9

    invoke-interface {p4}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getConfig()Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->getHasCustomPositionUpdatedAnimation()Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    const p4, 0x7f0a0658

    invoke-virtual {p0, p4}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p4

    if-nez p4, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    new-instance p4, Landroid/transition/TransitionSet;

    invoke-direct {p4}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {p4, p3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    new-instance p3, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;

    invoke-direct {p3, v3}, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    const-wide/16 v5, 0x3e8

    invoke-virtual {p3, v5, v6}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    invoke-virtual {p3, p0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    invoke-virtual {p4, p3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    if-eqz p2, :cond_7

    const-class p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p4, p0, v1}, Landroid/transition/TransitionSet;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    const-class p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p4, p0, v1}, Landroid/transition/TransitionSet;->excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;

    :cond_7
    invoke-virtual {p4, v4}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    invoke-static {p1, p4}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p3, v4}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    invoke-static {p1, p3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p3, v4}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    invoke-static {p1, p3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :goto_3
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final updatePosition(IIFZLjava/util/List;)V
    .locals 7

    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    int-to-float p2, p2

    invoke-virtual {p0, v0, p2, p4}, Lcom/android/keyguard/KeyguardStatusViewController;->setProperty(Lcom/android/systemui/statusbar/notification/AnimatableProperty;FZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContentsContainerList:Ljava/util/List;

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_4

    if-eqz p5, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    move p2, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    iget v6, v4, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    :cond_1
    iget p2, v4, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    invoke-virtual {v3, p2}, Landroid/view/View;->setX(F)V

    iget p2, v4, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v3, p2}, Landroid/view/View;->setY(F)V

    move p2, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v1, p2

    goto :goto_3

    :cond_4
    iget-object p5, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-eqz p5, :cond_7

    iget-object v0, p5, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/view/View;

    iget-object p5, p5, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result p5

    int-to-float v3, p1

    cmpl-float p5, p5, v3

    if-nez p5, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p5

    cmpl-float p5, p5, p2

    if-eqz p5, :cond_7

    :cond_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setX(F)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    if-eqz v1, :cond_9

    iget-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p5, p2, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p5, :cond_8

    goto :goto_4

    :cond_8
    const-string p5, "PluginAODManager"

    const-string v0, "onFaceWidgetPositionChanged"

    invoke-static {p5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p2, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->onFaceWidgetPositionChanged()V

    :cond_9
    :goto_4
    iget-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardClockSwitchController;->getClock()Lcom/android/systemui/plugins/clocks/ClockController;

    move-result-object p5

    sget-object v0, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p5, :cond_a

    invoke-interface {p5}, Lcom/android/systemui/plugins/clocks/ClockController;->getConfig()Lcom/android/systemui/plugins/clocks/ClockConfig;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/systemui/plugins/clocks/ClockConfig;->getUseAlternateSmartspaceAODTransition()Z

    move-result p5

    if-eqz p5, :cond_a

    invoke-virtual {p2, p1, v1, v0, p4}, Lcom/android/keyguard/KeyguardClockSwitchController;->updatePosition(IFLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    sget-object p1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/keyguard/KeyguardStatusViewController;->setProperty(Lcom/android/systemui/statusbar/notification/AnimatableProperty;FZ)V

    sget-object p1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/keyguard/KeyguardStatusViewController;->setProperty(Lcom/android/systemui/statusbar/notification/AnimatableProperty;FZ)V

    goto :goto_5

    :cond_a
    invoke-virtual {p2, p1, p3, v0, p4}, Lcom/android/keyguard/KeyguardClockSwitchController;->updatePosition(IFLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    sget-object p1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/keyguard/KeyguardStatusViewController;->setProperty(Lcom/android/systemui/statusbar/notification/AnimatableProperty;FZ)V

    sget-object p1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/keyguard/KeyguardStatusViewController;->setProperty(Lcom/android/systemui/statusbar/notification/AnimatableProperty;FZ)V

    :goto_5
    return-void
.end method
