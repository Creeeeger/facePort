.class public final Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/properties/ReadWriteProperty;


# instance fields
.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-interface {p2}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Must initialize before getting "

    invoke-static {p2, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->getValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Lcom/android/systemui/settings/UserTrackerImpl;Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p1, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->value:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->setValue(Lcom/android/systemui/settings/UserTrackerImpl;Ljava/lang/Object;)V

    return-void
.end method
