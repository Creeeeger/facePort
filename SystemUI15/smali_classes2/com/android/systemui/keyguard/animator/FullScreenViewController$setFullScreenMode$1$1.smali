.class public final Lcom/android/systemui/keyguard/animator/FullScreenViewController$setFullScreenMode$1$1;
.super Lcom/android/systemui/keyguard/animator/FullScreenViewController$CustomAnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $enabled:Z

.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/FullScreenViewController;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/keyguard/animator/FullScreenViewController;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController$setFullScreenMode$1$1;->$enabled:Z

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController$setFullScreenMode$1$1;->this$0:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/FullScreenViewController$CustomAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController$setFullScreenMode$1$1;->$enabled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController$CustomAnimatorListenerAdapter;->isCancelled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController$setFullScreenMode$1$1;->this$0:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullScreenModeShown:Z

    :cond_0
    return-void
.end method
