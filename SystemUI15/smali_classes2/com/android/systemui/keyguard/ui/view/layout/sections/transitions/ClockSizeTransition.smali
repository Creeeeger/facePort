.class public final Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition;
.super Landroid/transition/TransitionSet;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition;->Companion:Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;)V
    .locals 2

    invoke-direct {p0}, Landroid/transition/TransitionSet;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    sget-object v0, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Type;->SmartspaceVisibility:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Type;

    iget-object v1, p1, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;->type:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Type;

    if-eq v1, v0, :cond_0

    new-instance v0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$ClockFaceOutTransition;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$ClockFaceOutTransition;-><init>(Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;)V

    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    new-instance v0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$ClockFaceInTransition;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$ClockFaceInTransition;-><init>(Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;)V

    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$SmartspaceMoveTransition;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$SmartspaceMoveTransition;-><init>(Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;)V

    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    return-void
.end method
