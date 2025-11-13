.class public final Lcom/android/systemui/qs/animator/QsTransitionAnimator;
.super Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# static fields
.field public static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

.field public final mCarriers:Ljava/util/ArrayList;

.field public final mCustomizerMainController:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

.field public final mDetailAnimListener:Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;

.field public mDetailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

.field public mDetailCollapseAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mDetailContents:Ljava/util/ArrayList;

.field public final mDetailController:Lcom/android/systemui/qs/SecQSDetailController;

.field public mDetailHideAnimSet:Landroid/animation/AnimatorSet;

.field public final mDetailHideAnimators:Ljava/util/ArrayList;

.field public mDetailShowAnimSet:Landroid/animation/AnimatorSet;

.field public final mDetailShowAnimators:Ljava/util/ArrayList;

.field public mDetailView:Landroid/view/View;

.field public final mHandler:Landroid/os/Handler;

.field public mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field public mHeaderDateButtonContainer:Landroid/view/View;

.field public final mHeaderIcons:Landroid/view/ViewGroup;

.field public mHideSystemIconAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public mNSSL:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mPanelAnimListener:Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;

.field public final mPanelContents:Ljava/util/ArrayList;

.field public mPanelExpanded:Z

.field public mPanelHideAnimSet:Landroid/animation/AnimatorSet;

.field public final mPanelHideAnimators:Ljava/util/ArrayList;

.field public mPanelShowAnimSet:Landroid/animation/AnimatorSet;

.field public final mPanelShowAnimators:Ljava/util/ArrayList;

.field public final mPlmn:Landroid/view/View;

.field public final mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

.field public mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

.field public mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e0f5c29    # 0.14f

    const v2, 0x3fab851f    # 1.34f

    const v3, 0x3ebd70a4    # 0.37f

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/qs/SecQSDetailController;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/qs/SecQSPanelController;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;",
            "Lcom/android/systemui/shade/ShadeHeaderController;",
            "Lcom/android/systemui/qs/SecQSDetailController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;-><init>()V

    new-instance p1, Lcom/android/systemui/util/ConfigurationState;

    sget-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ASSET_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->THEME_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->UI_MODE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimators:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimators:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimators:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimators:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCarriers:Ljava/util/ArrayList;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;-><init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelAnimListener:Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;

    new-instance p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;-><init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailAnimListener:Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;

    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/net/Uri;

    const-string p3, "animator_duration_scale"

    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iput-object p4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerMainController:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    iput-object p6, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object p1, p5, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const p2, 0x7f0a0bef

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeaderIcons:Landroid/view/ViewGroup;

    const p1, 0x7f0a0258

    iget-object p2, p5, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPlmn:Landroid/view/View;

    return-void
.end method

.method public static makeTransitionAnimator(Landroid/view/View;IFZ)Landroid/animation/Animator;
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p2, v3, v4

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, v0, v4

    sget-object p2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    sget v1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->SCALE_DOWN_RATIO:F

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    new-array v6, v2, [F

    aput v5, v6, v4

    invoke-static {p2, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, v0, v2

    sget-object p2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-eqz p3, :cond_1

    move v1, v3

    :cond_1
    new-array p3, v2, [F

    aput v1, p3, v4

    invoke-static {p2, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v0, p3

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method


# virtual methods
.method public final clearCustomizerView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerMainController:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->close()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda5;-><init>()V

    iget-object v0, v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->this$0:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setCustomizerShowing(Z)V

    :cond_1
    return-void
.end method

.method public final clearDetailView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;->hideDetailAnimEnd()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda5;-><init>()V

    iget-object v0, v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->this$0:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailOpening(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailShowing(Z)V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    if-eqz p0, :cond_5

    invoke-static {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailClosing(Z)V

    :cond_5
    return-void
.end method

.method public final destroyQSViews()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearDetailView()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearCustomizerView()V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCarriers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "QsTransitionAnimator ============================================= "

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    const-string v2, " mPanelContents "

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->gatherStateOfViews(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    const-string v2, " mDetailContents "

    invoke-static {v0, v2, v1, v3}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->gatherStateOfViews(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCarriers:Ljava/util/ArrayList;

    const-string v1, " mCarriers "

    invoke-static {v0, v1, p0, v3}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->gatherStateOfViews(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    const-string p0, "============================================================== "

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "animator_duration_scale"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAnimationRemoved()Z

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final onPanelClosed$1()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearDetailView()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearCustomizerView()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->restorePanelView()V

    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailClosing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCollapseAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHideSystemIconAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerMainController:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->setPosition(F)V

    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailOpening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailShowing(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailClosing(Z)V

    goto :goto_0

    :cond_3
    cmpl-float p1, p1, v0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isDetailVisible()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearDetailView()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    sput p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isDetailVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearDetailView()V

    :cond_0
    sget-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isCustomizerShowing:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearCustomizerView()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->restorePanelView()V

    :cond_2
    return-void
.end method

.method public final restorePanelView()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCarriers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->destroyQSViews()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-void
.end method

.method public final setQsExpanded(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->qsExpanded:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelExpanded:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->restorePanelView()V

    :cond_0
    return-void
.end method

.method public final showQsPanel(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-eqz p1, :cond_2

    const/high16 p1, 0x40000

    goto :goto_1

    :cond_2
    const/high16 p1, 0x60000

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    return-void
.end method

.method public final showQsPanelForCustomizer(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeaderIcons:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/16 v4, 0x15e

    invoke-static {v1, v4, v2, v3}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IFZ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    new-instance v1, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;Z)V

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x15e

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->showQsPanel(Z)V

    return-void
.end method

.method public final transitionDetail(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-boolean v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mAnimatorsInitialiezed:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailOpening(Z)V

    goto/16 :goto_4

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailShowing(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailClosing(Z)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelExpanded:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v3, 0x64

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCarriers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v6, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

    invoke-interface {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;->hideDetailAnimEnd()V

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailClosing(Z)V

    :goto_3
    return-void

    :cond_7
    :goto_4
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->showQsPanel(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    sget v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->SCALE_DOWN_RATIO:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_5
    return-void
.end method

.method public final updateAnimators()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->destroyQSViews()V

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCarriers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->getHeader()Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-eqz v3, :cond_2

    const v4, 0x7f0a0993

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/SecQuickQSPanel;

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    const v4, 0x7f0a0990

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeaderDateButtonContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v3}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0996

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/SecQSPanel;

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mNSSL:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mNSSL:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v3, v3, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    const v4, 0x7f0a095c

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCarriers:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPlmn:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCarriers:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPlmn:Landroid/view/View;

    const v5, 0x7f0a0254

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCarriers:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPlmn:Landroid/view/View;

    const v5, 0x7f0a0255

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCarriers:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPlmn:Landroid/view/View;

    const v5, 0x7f0a0256

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x15e

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    if-ne v4, v7, :cond_3

    move v7, v0

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    iget-object v8, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimators:Ljava/util/ArrayList;

    invoke-static {v4, v5, v6, v7}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IFZ)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCarriers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimators:Ljava/util/ArrayList;

    invoke-static {v4, v5, v6, v1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IFZ)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimators:Ljava/util/ArrayList;

    invoke-static {v4, v5, v7, v0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IFZ)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCarriers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimators:Ljava/util/ArrayList;

    invoke-static {v4, v5, v7, v0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IFZ)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelAnimListener:Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimators:Ljava/util/ArrayList;

    const/16 v8, 0x1e0

    invoke-static {v4, v8, v7, v0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IFZ)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailAnimListener:Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimators:Ljava/util/ArrayList;

    const/16 v7, 0x12c

    invoke-static {v4, v7, v6, v1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IFZ)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    new-array v5, v2, [F

    fill-array-data v5, :array_0

    const-string v7, "alpha"

    invoke-virtual {v3, v4, v7, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v8

    new-array v8, v2, [F

    aput v5, v8, v1

    aput v6, v8, v0

    const-string/jumbo v5, "translationY"

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCollapseAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    new-array v8, v2, [F

    fill-array-data v8, :array_1

    invoke-virtual {v3, v4, v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeaderIcons:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    new-array v2, v2, [F

    aput v7, v2, v1

    aput v6, v2, v0

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHideSystemIconAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mAnimatorsInitialiezed:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updatePanelExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelExpanded:Z

    return-void
.end method
