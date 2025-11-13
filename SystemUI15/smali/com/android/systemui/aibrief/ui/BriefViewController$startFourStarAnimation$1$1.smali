.class public final Lcom/android/systemui/aibrief/ui/BriefViewController$startFourStarAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic $this_apply:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aibrief/ui/BriefViewController;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$startFourStarAnimation$1$1;->this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;

    iput-object p2, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$startFourStarAnimation$1$1;->$this_apply:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$startFourStarAnimation$1$1;->this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$startFourStarAnimation$1$1;->$this_apply:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, v0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->access$dismissAnimation(Lcom/android/systemui/aibrief/ui/BriefViewController;Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$startFourStarAnimation$1$1;->this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;

    invoke-static {p0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->access$translationAnimation(Lcom/android/systemui/aibrief/ui/BriefViewController;)V

    return-void
.end method
