.class public final Lcom/android/systemui/settings/DisplayTrackerImpl$displayBrightnessChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/DisplayTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/DisplayTrackerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayBrightnessChangedListener$1;->this$0:Lcom/android/systemui/settings/DisplayTrackerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    const-string v0, "DisplayTrackerImpl.displayBrightnessChangedDisplayListener#onDisplayChanged"

    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayBrightnessChangedListener$1;->this$0:Lcom/android/systemui/settings/DisplayTrackerImpl;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    invoke-static {p0, p1, v2}, Lcom/android/systemui/settings/DisplayTrackerImpl;->access$onDisplayChanged(Lcom/android/systemui/settings/DisplayTrackerImpl;ILjava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    throw p0
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
