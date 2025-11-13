.class public final Lcom/android/systemui/animation/ActivityTransitionAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ANIMATION_DELAY_NAV_FADE_IN:J

.field public static final Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;

.field public static final DEBUG_TRANSITION_ANIMATION:Z

.field public static final DIALOG_TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

.field public static final INTERPOLATORS:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

.field public static final NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;


# instance fields
.field public callback:Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;

.field public final dialogToAppAnimator:Lcom/android/systemui/animation/TransitionAnimator;

.field public final disableWmTimeout:Z

.field public final lifecycleListener:Lcom/android/systemui/animation/ActivityTransitionAnimator$lifecycleListener$1;

.field public final listeners:Ljava/util/LinkedHashSet;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final transitionAnimator:Lcom/android/systemui/animation/TransitionAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;

    new-instance v0, Lcom/android/systemui/animation/TransitionAnimator$Timings;

    const-wide/16 v9, 0x96

    const-wide/16 v11, 0xb7

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x96

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/animation/TransitionAnimator$Timings;-><init>(JJJJJ)V

    sput-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    new-instance v1, Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-wide v14, v0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->totalDuration:J

    iget-wide v2, v0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDelay:J

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0xc8

    iget-wide v4, v0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDuration:J

    move-object v13, v1

    move-wide/from16 v16, v2

    move-wide/from16 v22, v4

    invoke-direct/range {v13 .. v23}, Lcom/android/systemui/animation/TransitionAnimator$Timings;-><init>(JJJJJ)V

    sput-object v1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DIALOG_TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    new-instance v1, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    sget-object v2, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    sget-object v3, Lcom/android/app/animation/Interpolators;->EMPHASIZED_COMPLEMENT:Landroid/view/animation/Interpolator;

    sget-object v4, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v7, v6, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    sput-object v1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DEBUG_TRANSITION_ANIMATION:Z

    const-wide/16 v1, 0x10a

    iget-wide v3, v0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->totalDuration:J

    sub-long/2addr v3, v1

    sput-wide v3, Lcom/android/systemui/animation/ActivityTransitionAnimator;->ANIMATION_DELAY_NAV_FADE_IN:J

    sget-object v0, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v7, v8, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 8

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;)V
    .locals 8

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;Lcom/android/systemui/animation/TransitionAnimator;)V
    .locals 8

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;)V
    .locals 8

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->transitionAnimator:Lcom/android/systemui/animation/TransitionAnimator;

    iput-object p4, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->dialogToAppAnimator:Lcom/android/systemui/animation/TransitionAnimator;

    iput-boolean p5, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->disableWmTimeout:Z

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->listeners:Ljava/util/LinkedHashSet;

    new-instance p1, Lcom/android/systemui/animation/ActivityTransitionAnimator$lifecycleListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$lifecycleListener$1;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->lifecycleListener:Lcom/android/systemui/animation/ActivityTransitionAnimator$lifecycleListener$1;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    sget-object p7, Lcom/android/systemui/animation/ActivityTransitionAnimator;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;

    if-eqz p2, :cond_1

    invoke-static {p7, p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;->access$defaultTransitionAnimator(Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;Ljava/util/concurrent/Executor;)Lcom/android/systemui/animation/TransitionAnimator;

    move-result-object p3

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/android/systemui/animation/TransitionAnimator;

    sget-object p2, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DIALOG_TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    sget-object p3, Lcom/android/systemui/animation/ActivityTransitionAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/systemui/animation/TransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/TransitionAnimator$Timings;Lcom/android/systemui/animation/TransitionAnimator$Interpolators;)V

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x0

    :cond_3
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/IShellTransitions;)V
    .locals 8

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/IShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/IShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;)V
    .locals 8

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/IShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/IShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;)V
    .locals 8

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/IShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/IShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;Z)V
    .locals 7

    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {v3, v0, p2, v1, v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;-><init>(Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/wm/shell/shared/IShellTransitions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/IShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;

    if-eqz p7, :cond_0

    invoke-static {v0, p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;->access$defaultTransitionAnimator(Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;Ljava/util/concurrent/Executor;)Lcom/android/systemui/animation/TransitionAnimator;

    move-result-object p3

    :cond_0
    move-object v4, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/android/systemui/animation/TransitionAnimator;

    sget-object p3, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DIALOG_TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    sget-object p7, Lcom/android/systemui/animation/ActivityTransitionAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    invoke-direct {p4, p1, p3, p7}, Lcom/android/systemui/animation/TransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/TransitionAnimator$Timings;Lcom/android/systemui/animation/TransitionAnimator$Interpolators;)V

    :cond_1
    move-object v5, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/IShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/ShellTransitions;)V
    .locals 8

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;)V
    .locals 8

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;)V
    .locals 8

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;Z)V
    .locals 7

    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {v3, p2, v0, v1, v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;-><init>(Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/wm/shell/shared/IShellTransitions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;

    if-eqz p7, :cond_0

    invoke-static {v0, p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;->access$defaultTransitionAnimator(Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;Ljava/util/concurrent/Executor;)Lcom/android/systemui/animation/TransitionAnimator;

    move-result-object p3

    :cond_0
    move-object v4, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/android/systemui/animation/TransitionAnimator;

    sget-object p3, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DIALOG_TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    sget-object p7, Lcom/android/systemui/animation/ActivityTransitionAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    invoke-direct {p4, p1, p3, p7}, Lcom/android/systemui/animation/TransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/TransitionAnimator$Timings;Lcom/android/systemui/animation/TransitionAnimator$Interpolators;)V

    :cond_1
    move-object v5, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/ActivityTransitionAnimator;-><init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/TransitionAnimator;Z)V

    return-void
.end method


# virtual methods
.method public final callOnIntentStartedOnMainThread(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Z)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/animation/ActivityTransitionAnimator$callOnIntentStartedOnMainThread$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/animation/ActivityTransitionAnimator$callOnIntentStartedOnMainThread$1;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    sget-boolean p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DEBUG_TRANSITION_ANIMATION:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Calling controller.onIntentStarted(willAnimate="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") [controller="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTransitionAnimator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {p1, p2}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->onIntentStarted(Z)V

    :goto_0
    return-void
.end method

.method public final createRunner(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;
    .locals 7

    invoke-interface {p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->isDialogLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->dialogToAppAnimator:Lcom/android/systemui/animation/TransitionAnimator;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->transitionAnimator:Lcom/android/systemui/animation/TransitionAnimator;

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;

    iget-object v4, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->callback:Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->lifecycleListener:Lcom/android/systemui/animation/ActivityTransitionAnimator$lifecycleListener$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;Lcom/android/systemui/animation/TransitionAnimator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;)V

    return-object v0
.end method

.method public final startIntentWithAnimation(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    move-object/from16 v3, p5

    const-string v4, "ActivityTransitionAnimator"

    const/4 v5, 0x0

    if-eqz v2, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v7, v1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->callback:Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;

    if-eqz v7, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator;->createRunner(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;

    move-result-object v14

    iget-object v15, v14, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

    iget-object v12, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    const/16 v16, 0x1

    if-eqz v8, :cond_1

    if-nez p4, :cond_1

    move/from16 v13, v16

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    if-nez v13, :cond_2

    new-instance v17, Landroid/view/RemoteAnimationAdapter;

    sget-object v8, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-wide v10, v8, Lcom/android/systemui/animation/TransitionAnimator$Timings;->totalDuration:J

    const/16 v8, 0x96

    int-to-long v8, v8

    sub-long v18, v10, v8

    move-object/from16 v8, v17

    move-object v9, v14

    move-object v6, v12

    move/from16 v20, v13

    move-wide/from16 v12, v18

    invoke-direct/range {v8 .. v13}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    goto :goto_1

    :cond_2
    move-object v6, v12

    move/from16 v20, v13

    move-object v8, v5

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v8, :cond_3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v9

    invoke-interface {v9, v0, v8, v5}, Landroid/app/IActivityTaskManager;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v5, "Unable to register the remote animation"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->getTransitionCookie()Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/shared/Flags;->returnAnimationFrameworkLibrary()V

    :cond_4
    invoke-interface {v3, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    if-eqz v0, :cond_7

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    move/from16 v3, v20

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_5
    move/from16 v3, v20

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    move/from16 v3, v20

    :goto_3
    move/from16 v5, v16

    :goto_4
    const-string v8, "launchResult="

    const-string v9, " willAnimate="

    const-string v10, " hideKeyguardWithAnimation="

    invoke-static {v8, v0, v9, v5, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/animation/ActivityTransitionAnimator;->callOnIntentStartedOnMainThread(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Z)V

    if-eqz v5, :cond_9

    iget-object v0, v15, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->timeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    iget-object v1, v15, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->onTimeout:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onTimeout$1;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, v15, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->onLongTimeout:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onLongTimeout$1;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    if-eqz v3, :cond_a

    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v7, v14}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_9
    iget-object v0, v14, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iget-object v0, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$dispose$1;

    invoke-direct {v1, v14}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$dispose$1;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_a
    :goto_5
    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActivityTransitionAnimator.callback must be set before using this animator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_6
    const-string v0, "Starting intent with no animation"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/animation/ActivityTransitionAnimator;->callOnIntentStartedOnMainThread(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Z)V

    :cond_d
    return-void
.end method

.method public final startPendingIntentWithAnimation(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLjava/lang/String;ZLcom/android/systemui/animation/ActivityTransitionAnimator$PendingIntentStarter;)V
    .locals 6

    new-instance v5, Lcom/android/systemui/animation/ActivityTransitionAnimator$startPendingIntentWithAnimation$1;

    invoke-direct {v5, p5}, Lcom/android/systemui/animation/ActivityTransitionAnimator$startPendingIntentWithAnimation$1;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$PendingIntentStarter;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/animation/ActivityTransitionAnimator;->startIntentWithAnimation(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method
