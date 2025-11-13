.class public final Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/FullscreenLightRevealAnimation;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final contentResolver:Landroid/content/ContentResolver;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

.field public final isUnfoldHandled:Z

.field public overlayAddReason:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

.field public final threadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

.field public final unfoldProgressHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlagsClassic;Landroid/content/ContentResolver;Landroid/os/Handler;Ljavax/inject/Provider;Ljavax/inject/Provider;Landroid/hardware/devicestate/DeviceStateManager;Lcom/android/systemui/util/concurrency/ThreadFactory;Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/flags/FeatureFlagsClassic;",
            "Landroid/content/ContentResolver;",
            "Landroid/os/Handler;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            "Lcom/android/systemui/util/concurrency/ThreadFactory;",
            "Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController$Factory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    iput-object p3, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->contentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->unfoldProgressHandler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->threadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

    new-instance p1, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener;

    invoke-direct {p1, p0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener;-><init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->isUnfoldHandled:Z

    sget-object p1, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;->UNFOLD:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->overlayAddReason:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    return-void
.end method


# virtual methods
.method public final calculateRevealAmount(Ljava/lang/Float;)F
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->overlayAddReason:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    sget-object p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-object v2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;->FOLD:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    if-ne v0, p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_1
    return v1
.end method

.method public final executeInBackground(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->unfoldProgressHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$sam$java_lang_Runnable$0;

    invoke-direct {v0, p1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final onScreenTurningOn(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$onScreenTurningOn$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$onScreenTurningOn$1;-><init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->executeInBackground(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
