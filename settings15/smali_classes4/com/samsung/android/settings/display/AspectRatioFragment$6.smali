.class public final Lcom/samsung/android/settings/display/AspectRatioFragment$6;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$6;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$6;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;I)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
