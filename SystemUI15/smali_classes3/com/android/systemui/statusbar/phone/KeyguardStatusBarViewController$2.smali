.class public final Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemEventAnimationBegin(ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    return-object p0
.end method

.method public final onSystemEventAnimationFinish(ZZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    return-object p0
.end method
