.class public final Lcom/android/systemui/aibrief/ui/BriefViewController$showCircleAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic $finishRunner:Ljava/lang/Runnable;

.field final synthetic $it:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aibrief/ui/BriefViewController;Ljava/lang/Runnable;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$showCircleAnimation$1$1;->this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;

    iput-object p2, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$showCircleAnimation$1$1;->$finishRunner:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$showCircleAnimation$1$1;->$it:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$showCircleAnimation$1$1;->this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;

    invoke-static {p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->access$getLogger$p(Lcom/android/systemui/aibrief/ui/BriefViewController;)Lcom/android/systemui/aibrief/log/BriefLogger;

    move-result-object p1

    const-string v0, "BriefViewController"

    const-string v1, "showCircleAnimation onAnimationEnd"

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$showCircleAnimation$1$1;->$finishRunner:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$showCircleAnimation$1$1;->$it:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
