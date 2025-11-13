.class public final Lcom/android/systemui/aibrief/control/BriefNowBarController$nowBarCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/aibrief/control/BriefNowBarCallBack;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aibrief/control/BriefNowBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$nowBarCallback$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onFullScreenHidden()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$nowBarCallback$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-static {p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->access$getViewController$p(Lcom/android/systemui/aibrief/control/BriefNowBarController;)Lcom/android/systemui/aibrief/ui/BriefViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->hideContainer()V

    return-void
.end method

.method private final onFullScreenShown()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$nowBarCallback$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-static {v0}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->access$getMainHandler$p(Lcom/android/systemui/aibrief/control/BriefNowBarController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/aibrief/control/BriefNowBarController$nowBarCallback$1$onFullScreenShown$1;

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$nowBarCallback$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-direct {v1, p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController$nowBarCallback$1$onFullScreenShown$1;-><init>(Lcom/android/systemui/aibrief/control/BriefNowBarController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onFullScreenShowingChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$nowBarCallback$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-static {v0}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->access$getLogger$p(Lcom/android/systemui/aibrief/control/BriefNowBarController;)Lcom/android/systemui/aibrief/log/BriefLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFullScreenShowingChanged, showing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NowBarController"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController$nowBarCallback$1;->onFullScreenShown()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController$nowBarCallback$1;->onFullScreenHidden()V

    :goto_0
    return-void
.end method
