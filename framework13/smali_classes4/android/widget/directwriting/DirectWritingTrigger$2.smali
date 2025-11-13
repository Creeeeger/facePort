.class Landroid/widget/directwriting/DirectWritingTrigger$2;
.super Ljava/util/TimerTask;
.source "DirectWritingTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/directwriting/DirectWritingTrigger;->startKeepingWritingTimer()V
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

    .line 562
    iput-object p1, p0, Landroid/widget/directwriting/DirectWritingTrigger$2;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 565
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger$2;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fgetmKeepWritingTimer(Landroid/widget/directwriting/DirectWritingTrigger;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 566
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger$2;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fputmIsKeepingWriting(Landroid/widget/directwriting/DirectWritingTrigger;Z)V

    .line 567
    return-void
.end method
