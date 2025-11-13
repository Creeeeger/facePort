.class public final Lcom/android/systemui/keyguard/ui/view/layout/sections/ClockSection;
.super Lcom/android/systemui/keyguard/shared/model/KeyguardSection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/ui/view/layout/sections/ClockSection$Companion;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/view/layout/sections/ClockSection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/view/layout/sections/ClockSection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Landroid/content/Context;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel;Ldagger/Lazy;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;-><init>()V

    return-void
.end method


# virtual methods
.method public final addViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

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

.method public final removeViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    return-void
.end method
