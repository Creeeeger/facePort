.class public final Lcom/android/systemui/util/leak/LeakModule_ProvidesLeakDetectorFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider;"
    }
.end annotation


# instance fields
.field private final collectionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/util/leak/LeakModule;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/leak/LeakModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/leak/LeakModule;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/leak/LeakModule_ProvidesLeakDetectorFactory;->module:Lcom/android/systemui/util/leak/LeakModule;

    iput-object p2, p0, Lcom/android/systemui/util/leak/LeakModule_ProvidesLeakDetectorFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/util/leak/LeakModule_ProvidesLeakDetectorFactory;->collectionsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/util/leak/LeakModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/LeakModule_ProvidesLeakDetectorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/leak/LeakModule;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/util/leak/LeakModule_ProvidesLeakDetectorFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/leak/LeakModule_ProvidesLeakDetectorFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/util/leak/LeakModule_ProvidesLeakDetectorFactory;-><init>(Lcom/android/systemui/util/leak/LeakModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesLeakDetector(Lcom/android/systemui/util/leak/LeakModule;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/leak/TrackedCollections;)Lcom/android/systemui/util/leak/LeakDetector;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/leak/LeakModule;->providesLeakDetector(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/leak/TrackedCollections;)Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/leak/LeakDetector;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakModule_ProvidesLeakDetectorFactory;->module:Lcom/android/systemui/util/leak/LeakModule;

    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakModule_ProvidesLeakDetectorFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dump/DumpManager;

    iget-object p0, p0, Lcom/android/systemui/util/leak/LeakModule_ProvidesLeakDetectorFactory;->collectionsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/leak/TrackedCollections;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/leak/LeakModule_ProvidesLeakDetectorFactory;->providesLeakDetector(Lcom/android/systemui/util/leak/LeakModule;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/leak/TrackedCollections;)Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/leak/LeakModule_ProvidesLeakDetectorFactory;->get()Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    return-object p0
.end method
