.class public final Landroidx/compose/foundation/lazy/layout/DummyHandle;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/lazy/layout/DummyHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/lazy/layout/DummyHandle;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/DummyHandle;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/DummyHandle;->INSTANCE:Landroidx/compose/foundation/lazy/layout/DummyHandle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final markAsUrgent()V
    .locals 0

    return-void
.end method
