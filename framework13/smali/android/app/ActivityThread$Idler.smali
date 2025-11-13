.class Landroid/app/ActivityThread$Idler;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .locals 0

    .line 2621
    iput-object p1, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$Idler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method


# virtual methods
.method public final whitelist queueIdle()Z
    .locals 6

    .line 2624
    iget-object v0, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2625
    .local v0, "a":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    .line 2626
    .local v1, "stopProfiling":Z
    iget-object v2, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v2, v2, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    if-eqz v2, :cond_0

    .line 2628
    const/4 v1, 0x1

    .line 2630
    :cond_0
    if-eqz v0, :cond_3

    .line 2631
    iget-object v2, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2632
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    .line 2639
    .local v2, "ac":Landroid/app/ActivityClient;
    :cond_1
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_2

    .line 2642
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2643
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 2642
    invoke-static {v4}, Landroid/app/EventLogTags;->writeWmOnIdleCalled(Ljava/lang/String;)V

    .line 2646
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v4, v5, v1}, Landroid/app/ActivityClient;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 2647
    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 2649
    :cond_2
    move-object v4, v0

    .line 2650
    .local v4, "prev":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2651
    iput-object v3, v4, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2652
    if-nez v0, :cond_1

    .line 2654
    .end local v2    # "ac":Landroid/app/ActivityClient;
    .end local v4    # "prev":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_3
    if-eqz v1, :cond_4

    .line 2655
    iget-object v2, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 2657
    :cond_4
    const/4 v2, 0x0

    return v2
.end method
