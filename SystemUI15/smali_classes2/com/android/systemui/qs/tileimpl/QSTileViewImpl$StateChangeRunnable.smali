.class public final Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final state:Lcom/android/systemui/plugins/qs/QSTile$State;

.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const-class p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->hashCode()I

    move-result p0

    return p0
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "QSTileViewImpl#handleStateChanged"

    invoke-static {v2}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    throw p0
.end method
