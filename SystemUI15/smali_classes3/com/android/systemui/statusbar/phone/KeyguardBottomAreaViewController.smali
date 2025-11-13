.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/pluginlock/PluginLockBottomAreaCallback;
.implements Lcom/android/systemui/Dumpable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/flags/FeatureFlagsClassic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;",
            "Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;",
            "Lcom/android/systemui/flags/FeatureFlagsClassic;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    sget-object p0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isLockscreenLandscapeEnabled:Z

    return-void
.end method


# virtual methods
.method public cancelIndicationAreaAnim()V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "An operation is not implemented: Not yet implemented"

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getShortCutAreaViews()Ljava/util/ArrayList;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-object p0
.end method

.method public launchAffordance(Z)V
    .locals 0

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    return-void
.end method

.method public onViewAttached()V
    .locals 0

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onViewDetached()V
    .locals 0

    return-void
.end method

.method public setAffordanceAlpha(F)V
    .locals 0

    return-void
.end method

.method public setDozing(Z)V
    .locals 0

    return-void
.end method

.method public setNowBarVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setUserSetupComplete$1(Z)V
    .locals 0

    return-void
.end method

.method public showShortcutAnimation(Z)V
    .locals 0

    return-void
.end method

.method public updateIndicationPosition()V
    .locals 0

    return-void
.end method
