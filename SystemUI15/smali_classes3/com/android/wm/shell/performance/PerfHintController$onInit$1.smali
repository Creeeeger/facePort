.class public final synthetic Lcom/android/wm/shell/performance/PerfHintController$onInit$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $tmp0:Lcom/android/wm/shell/performance/PerfHintController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/performance/PerfHintController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/performance/PerfHintController$onInit$1;->$tmp0:Lcom/android/wm/shell/performance/PerfHintController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/PrintWriter;

    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/performance/PerfHintController$onInit$1;->$tmp0:Lcom/android/wm/shell/performance/PerfHintController;

    iget-object p0, p0, Lcom/android/wm/shell/performance/PerfHintController;->hinter:Landroid/window/SystemPerformanceHinter;

    invoke-virtual {p0, p1, p2}, Landroid/window/SystemPerformanceHinter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
