.class public final Lcom/android/systemui/SystemUIApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/SystemUIApplication;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUIApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    iget-object p1, p1, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    iget-object p1, p1, Lcom/android/systemui/BootCompleteCacheImpl;->bootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {p1}, Lcom/android/systemui/util/SystemUIAnalytics;->initSystemUIAnalyticsStates(Landroid/app/Application;)V

    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    iget-object p1, p1, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    invoke-virtual {p1}, Lcom/android/systemui/BootCompleteCacheImpl;->setBootComplete()V

    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    iget-boolean p2, p1, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    array-length p1, p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    iget-object v0, v0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/android/systemui/SystemUIApplication;->notifyBootCompleted(Lcom/android/systemui/CoreStartable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
