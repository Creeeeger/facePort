.class public final Lcom/android/wm/shell/pip2/phone/PipScheduler$PipSchedulerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip2/phone/PipScheduler;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/pip2/phone/PipScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler$PipSchedulerReceiver;->this$0:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipScheduler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip2/phone/PipScheduler$PipSchedulerReceiver;-><init>(Lcom/android/wm/shell/pip2/phone/PipScheduler;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "cuj_code_extra"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler$PipSchedulerReceiver;->this$0:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "unexpected CUJ code="

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler$PipSchedulerReceiver;->this$0:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipScheduler;->scheduleExitPipViaExpand()V

    :goto_0
    return-void
.end method
