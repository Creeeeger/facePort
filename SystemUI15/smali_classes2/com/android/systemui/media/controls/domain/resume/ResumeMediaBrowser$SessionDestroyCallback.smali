.class public final Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$SessionDestroyCallback;
.super Landroid/media/session/MediaController$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;


# direct methods
.method private constructor <init>(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$SessionDestroyCallback;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$SessionDestroyCallback;-><init>(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V

    return-void
.end method


# virtual methods
.method public final onSessionDestroyed()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$SessionDestroyCallback;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mLogger:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->isBrowserConnected()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$SessionDestroyCallback;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v2, v2, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v4, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger$logSessionDestroyed$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger$logSessionDestroyed$2;

    const-string v5, "MediaBrowser"

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v3, v4, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v0, v4, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$SessionDestroyCallback;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->disconnect()V

    return-void
.end method
