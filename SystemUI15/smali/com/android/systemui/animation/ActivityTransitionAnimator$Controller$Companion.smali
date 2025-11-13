.class public final Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;

    invoke-direct {v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;->$$INSTANCE:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromView(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;)Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;
    .locals 10

    instance-of v0, p0, Lcom/android/systemui/animation/LaunchableView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Skipping animation as view "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not attached to a ViewGroup"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "ActivityTransitionAnimator"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v9, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An ActivityTransitionAnimator.Controller was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic fromView$default(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;Landroid/view/View;Ljava/lang/Integer;I)Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;
    .locals 1

    and-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p2, v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, v0, v0, v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;->fromView(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;)Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    move-result-object p0

    return-object p0
.end method
