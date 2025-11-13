.class public final Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final directionY:Z

.field public hasEverBeenPaused:Z

.field public isPaused:Z

.field public final makePauseHarderToTrigger:Z

.field public final motionPauseListener:Lcom/android/systemui/navigationbar/gestural/MotionPauseListener;

.field public previousVelocity:Ljava/lang/Float;

.field public slowStartTime:J

.field public final speedFast:F

.field public final speedSlow:F

.field public final speedSomewhatFast:F

.field public final speedVerySlow:F

.field public final tag:Ljava/lang/String;

.field public final timer:Lcom/android/systemui/navigationbar/util/ScopeTimer;

.field public final velocityProvider:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/navigationbar/gestural/MotionPauseListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->makePauseHarderToTrigger:Z

    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->motionPauseListener:Lcom/android/systemui/navigationbar/gestural/MotionPauseListener;

    iput-boolean p4, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->directionY:Z

    const-string p2, "MotionPauseDetector"

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0709c6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedVerySlow:F

    const p2, 0x7f0709c4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedSlow:F

    const p2, 0x7f0709c5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedSomewhatFast:F

    const p2, 0x7f0709c3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedFast:F

    new-instance p1, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;

    invoke-direct {p1}, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->velocityProvider:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;

    new-instance p1, Lcom/android/systemui/navigationbar/util/ScopeTimer;

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/navigationbar/util/ScopeTimer;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->timer:Lcom/android/systemui/navigationbar/util/ScopeTimer;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZLcom/android/systemui/navigationbar/gestural/MotionPauseListener;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;-><init>(Landroid/content/Context;ZLcom/android/systemui/navigationbar/gestural/MotionPauseListener;Z)V

    return-void
.end method


# virtual methods
.method public final updatePaused(Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->isPaused:Z

    if-eq v0, p2, :cond_4

    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->isPaused:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMotionPauseChanged, paused="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", reason="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "updatePaused, "

    invoke-static {p2, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->tag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->hasEverBeenPaused:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->isPaused:Z

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->isPaused:Z

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->hasEverBeenPaused:Z

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->motionPauseListener:Lcom/android/systemui/navigationbar/gestural/MotionPauseListener;

    if-eqz p1, :cond_3

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    iget-boolean v0, p1, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->gestureDetected:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean p2, p1, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isPaused:Z

    iget-object p2, p1, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    const-string v0, "onMotionPauseDetected, AccessibilityButtonLongClick"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-class v0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/NavBarHelper;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavBarHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    return-void
.end method
