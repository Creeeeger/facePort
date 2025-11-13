.class public final Lcom/android/systemui/keyguard/ui/view/layout/sections/SmartspaceSection;
.super Lcom/android/systemui/keyguard/shared/model/KeyguardSection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final smartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardSmartspaceInteractor;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardSmartspaceInteractor;",
            "Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;",
            "Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/SmartspaceSection;->smartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    return-void
.end method


# virtual methods
.method public final addViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method

.method public final applyConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method

.method public final bindData(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method

.method public final onRebuildBegin()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/SmartspaceSection;->smartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->suppressDisconnects:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->disconnect()V

    return-void
.end method

.method public final onRebuildEnd()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/SmartspaceSection;->smartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->suppressDisconnects:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->disconnect()V

    return-void
.end method

.method public final removeViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method
