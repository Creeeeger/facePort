.class Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$3;
.super Landroid/os/Handler;
.source "FlexModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 450
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;-><init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight-IA;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
