.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

.field public blursDisabledForAppLaunch:Z

.field public blursDisabledForUnlock:Z

.field public final brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

.field public final context:Landroid/content/Context;

.field public final dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public isBlurred:Z

.field public isClosed:Z

.field public keyguardAnimator:Landroid/animation/Animator;

.field public final keyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public lastAppliedBlur:I

.field public final listeners:Ljava/util/List;

.field public final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public root:Landroid/view/View;

.field public scrimsVisible:Z

.field public final shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

.field public final splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public transitionToFullShadeProgress:F

.field public final wallpaperController:Lcom/android/systemui/util/WallpaperController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/view/Choreographer;Lcom/android/systemui/util/WallpaperController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/SplitShadeStateController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wallpaperController:Lcom/android/systemui/util/WallpaperController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p9, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-object p10, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->context:Landroid/content/Context;

    iput-object p11, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->listeners:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    new-instance p3, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    new-instance p3, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    new-instance p3, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    new-instance p4, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    const-class p6, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p12, p6, p0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    check-cast p5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {p5, p3}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-interface {p2, p4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    new-instance p2, Lcom/android/systemui/statusbar/NotificationShadeDepthController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    check-cast p8, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p3, p8, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    if-eq p3, p2, :cond_0

    iput-object p2, p8, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    :cond_0
    iget-object p2, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p3, 0x43480000    # 200.0f

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    invoke-virtual {p10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    check-cast p11, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {p11}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    new-instance p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$2;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    check-cast p13, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p13, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic getBrightnessMirrorSpring$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getShadeExpansion$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getUpdateBlurCallback$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final animateBlur(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isBlurred:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shouldApplyShadeBlur()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput v0, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    move-result p0

    float-to-int p0, p0

    iget p1, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    if-ne p1, p0, :cond_1

    goto :goto_1

    :cond_1
    iput p0, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    iget-object p1, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance p2, Landroid/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, "StatusBarWindowBlurController:"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p1, "shadeExpansion: 0.0"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shouldApplyShadeBlur()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shouldApplyShadeBlur: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget p1, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->radius:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shadeAnimation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget p1, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->radius:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "brightnessMirrorRadius: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "wakeAndUnlockBlur: 0.0"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForAppLaunch:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "blursDisabledForAppLaunch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "qsPanelExpansion: 0.0"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->transitionToFullShadeProgress:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "transitionToFullShadeProgress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->lastAppliedBlur:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "lastAppliedBlur: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 0

    return-void
.end method

.method public final setBlursDisabledForAppLaunch(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForAppLaunch:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForAppLaunch:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->radius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_4
    return-void
.end method

.method public final shouldApplyShadeBlur()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    return v2

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-nez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
