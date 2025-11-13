.class public final Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lnotification/src/com/android/systemui/BasePromptProcessor;


# instance fields
.field public isSummarizing:Z

.field public final mUiHandler:Landroid/os/Handler;

.field public notificationKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;->mUiHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final getNotificationKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;->notificationKey:Ljava/lang/String;

    return-object p0
.end method

.method public final releaseSmartReply()V
    .locals 0

    return-void
.end method

.method public final releaseSummarizer()V
    .locals 0

    return-void
.end method

.method public final setNotificationKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;->notificationKey:Ljava/lang/String;

    return-void
.end method

.method public final summary(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/SummarizeController$1;)V
    .locals 2

    const-string v0, "GaussServerPromptProcessor"

    const-string v1, "summary async"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;->isSummarizing:Z

    if-eqz v1, :cond_0

    const-string p0, "isSummarizing true"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$summary$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$summary$1;-><init>(Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;Ljava/lang/String;Ljava/lang/String;Lnotification/src/com/android/systemui/PromptCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final textPrompting(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;)V
    .locals 0

    return-void
.end method
