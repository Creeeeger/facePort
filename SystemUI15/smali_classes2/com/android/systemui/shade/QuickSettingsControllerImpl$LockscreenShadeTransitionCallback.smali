.class public final Lcom/android/systemui/shade/QuickSettingsControllerImpl$LockscreenShadeTransitionCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$LockscreenShadeTransitionCallback;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$LockscreenShadeTransitionCallback;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;)V

    return-void
.end method


# virtual methods
.method public final onPulseExpansionFinished()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$LockscreenShadeTransitionCallback;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimateNextNotificationBounds:Z

    const-wide/16 v1, 0x1c0

    iput-wide v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationBoundsAnimationDuration:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationBoundsAnimationDelay:J

    iput-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsPulseExpansionResettingAnimator:Z

    return-void
.end method

.method public final setTransitionToFullShadeAmount(F)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$LockscreenShadeTransitionCallback;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setQsExpansion(F)V

    :cond_0
    return-void
.end method

.method public final setTransitionToFullShadeAmount(FZJ)V
    .locals 0

    sget-object p2, Lcom/android/systemui/LsRune;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$LockscreenShadeTransitionCallback;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelExpandedForFingerPrint:Z

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelExpandedForFingerPrint:Z

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setPanelExpandingStarted(Z)V

    :goto_1
    return-void
.end method
