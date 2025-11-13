.class final Lcom/android/systemui/aibrief/control/BriefNowBarController$startCircleAnimation$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $finishRunner:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aibrief/control/BriefNowBarController;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$startCircleAnimation$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    iput-object p2, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$startCircleAnimation$1;->$finishRunner:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$startCircleAnimation$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-static {v0}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->access$getViewController$p(Lcom/android/systemui/aibrief/control/BriefNowBarController;)Lcom/android/systemui/aibrief/ui/BriefViewController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$startCircleAnimation$1;->$finishRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->showCircleAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
