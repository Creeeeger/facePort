.class public final Lcom/android/systemui/util/leak/TrackedCollections_Factory;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/util/leak/TrackedCollections_Factory;
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/leak/TrackedCollections_Factory$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/systemui/util/leak/TrackedCollections_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/android/systemui/util/leak/TrackedCollections;
    .locals 1

    new-instance v0, Lcom/android/systemui/util/leak/TrackedCollections;

    invoke-direct {v0}, Lcom/android/systemui/util/leak/TrackedCollections;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/leak/TrackedCollections;
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/leak/TrackedCollections_Factory;->newInstance()Lcom/android/systemui/util/leak/TrackedCollections;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/leak/TrackedCollections_Factory;->get()Lcom/android/systemui/util/leak/TrackedCollections;

    move-result-object p0

    return-object p0
.end method
