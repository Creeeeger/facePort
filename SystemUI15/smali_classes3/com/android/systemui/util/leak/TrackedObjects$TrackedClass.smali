.class Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;
.super Lcom/android/systemui/util/leak/AbstractCollection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/systemui/util/leak/AbstractCollection<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final instances:Lcom/android/systemui/util/leak/WeakIdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/leak/WeakIdentityHashMap<",
            "TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/util/leak/AbstractCollection;-><init>()V

    new-instance v0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    invoke-direct {v0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;->instances:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;->instances:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    invoke-virtual {p0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;->instances:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    invoke-virtual {p0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->size()I

    move-result p0

    return p0
.end method

.method public track(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;->instances:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
