.class Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;
.super Lcom/samsung/android/multicontrol/IMultiControlDeathChecker$Stub;
.source "SemMultiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multicontrol/SemMultiControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiControlDeathCheckerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker$Stub;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;

    .line 158
    return-void
.end method


# virtual methods
.method blacklist nullOutListenerLocked()V
    .locals 1

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;

    .line 170
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 163
    invoke-static {}, Lcom/samsung/android/multicontrol/SemMultiControlManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
