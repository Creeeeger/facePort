.class public final Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;
.super Lcom/android/systemui/keyguard/animator/ViewAnimationController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public isTapAnimationRunning:Z

.field public final restoreSpringAnimRunnable:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$restoreSpringAnimRunnable$1;

.field public final restoreSpringAnimationList:Ljava/util/List;

.field public final tapAffordanceViews:Ljava/util/List;

.field public final tapSpringAnimationList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->tapAffordanceViews:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->tapSpringAnimationList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->restoreSpringAnimationList:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$restoreSpringAnimRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$restoreSpringAnimRunnable$1;-><init>(Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->restoreSpringAnimRunnable:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$restoreSpringAnimRunnable$1;

    return-void
.end method
