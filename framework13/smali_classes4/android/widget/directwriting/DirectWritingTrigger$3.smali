.class Landroid/widget/directwriting/DirectWritingTrigger$3;
.super Ljava/util/TimerTask;
.source "DirectWritingTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/directwriting/DirectWritingTrigger;->startHideDelayTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/directwriting/DirectWritingTrigger;


# direct methods
.method constructor blacklist <init>(Landroid/widget/directwriting/DirectWritingTrigger;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/directwriting/DirectWritingTrigger;

    .line 574
    iput-object p1, p0, Landroid/widget/directwriting/DirectWritingTrigger$3;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 577
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger$3;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fgetmHideDelayTimer(Landroid/widget/directwriting/DirectWritingTrigger;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 578
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger$3;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fgetbinder(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/widget/directwriting/DirectWritingServiceBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger$3;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v1}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fgetmRootView(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->onStopRecognition(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 579
    return-void
.end method
