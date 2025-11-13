.class public final Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister$Companion;


# instance fields
.field public final iShellTransitions:Lcom/android/wm/shell/shared/IShellTransitions;

.field public final shellTransitions:Lcom/android/wm/shell/shared/ShellTransitions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/wm/shell/shared/IShellTransitions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/wm/shell/shared/IShellTransitions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionRegister;-><init>(Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/wm/shell/shared/IShellTransitions;)V

    return-void
.end method
