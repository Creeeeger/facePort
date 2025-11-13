.class public final Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final context:Landroid/content/Context;

.field public maxOverScrollAmount:I

.field public final nsslControllerProvider:Lkotlin/jvm/functions/Function0;

.field public final qSProvider:Lkotlin/jvm/functions/Function0;

.field public releaseOverScrollAnimator:Landroid/animation/Animator;

.field public releaseOverScrollDuration:J

.field public final scrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public transitionToFullShadeDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e2e147b    # 0.17f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070755

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;->transitionToFullShadeDistance:I

    const p4, 0x7f070758

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;->maxOverScrollAmount:I

    const p4, 0x7f0b0083

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-long p3, p3

    iput-wide p3, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;->releaseOverScrollDuration:J

    new-instance p3, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$1;-><init>(Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;)V

    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$2;-><init>(Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;)V

    const-string p0, "SplitShadeLockscreenOverScroller"

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final finishAnimations$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;->releaseOverScrollAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;->releaseOverScrollAnimator:Landroid/animation/Animator;

    return-void
.end method
