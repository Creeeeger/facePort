.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_VISIBILITY:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->nowBarVisible:Z

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1$2;

    invoke-direct {v4, v1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setNowBarVisibility(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->nowBarVisible:Z

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1$3;

    invoke-direct {v4, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    new-instance v5, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1$4;

    invoke-direct {v5, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setNowBarVisibility(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$getMView$p$s2038760804(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startDelayRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->restoreRunnable:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$restoreRunnable$1;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
