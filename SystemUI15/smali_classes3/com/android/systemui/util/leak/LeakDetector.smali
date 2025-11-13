.class public Lcom/android/systemui/util/leak/LeakDetector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final ENABLED:Z


# instance fields
.field private final mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

.field private final mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

.field private final mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;


# direct methods
.method public static synthetic $r8$lambda$yneLMiBMynxdcxbJ7J-fEKSarDU(Ljava/util/Collection;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/util/leak/LeakDetector;->lambda$dump$0(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/leak/TrackedCollections;Lcom/android/systemui/util/leak/TrackedGarbage;Lcom/android/systemui/util/leak/TrackedObjects;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    iput-object p2, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    iput-object p3, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method private static synthetic lambda$dump$0(Ljava/util/Collection;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/util/leak/TrackedObjects;->isTrackedObject(Ljava/util/Collection;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance p2, Landroid/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, "SYSUI LEAK DETECTOR"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    if-eqz p1, :cond_0

    const-string p1, "TrackedCollections:"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    new-instance v0, Lcom/android/systemui/util/leak/LeakDetector$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/leak/LeakDetector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/util/leak/TrackedCollections;->dump(Ljava/io/PrintWriter;Ljava/util/function/Predicate;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p1, "TrackedObjects:"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    new-instance v0, Lcom/android/systemui/util/leak/LeakDetector$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/util/leak/LeakDetector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/util/leak/TrackedCollections;->dump(Ljava/io/PrintWriter;Ljava/util/function/Predicate;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p1, "TrackedGarbage:"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/leak/TrackedGarbage;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_0

    :cond_0
    const-string p0, "disabled"

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public getTrackedGarbage()Lcom/android/systemui/util/leak/TrackedGarbage;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    return-object p0
.end method

.method public trackCollection(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/leak/TrackedCollections;->track(Ljava/util/Collection;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public trackGarbage(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/leak/TrackedGarbage;->track(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public trackInstance(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/leak/TrackedObjects;->track(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
