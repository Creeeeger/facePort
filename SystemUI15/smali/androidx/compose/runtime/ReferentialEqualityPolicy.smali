.class public final Landroidx/compose/runtime/ReferentialEqualityPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/runtime/SnapshotMutationPolicy;


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/ReferentialEqualityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/ReferentialEqualityPolicy;

    invoke-direct {v0}, Landroidx/compose/runtime/ReferentialEqualityPolicy;-><init>()V

    sput-object v0, Landroidx/compose/runtime/ReferentialEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/ReferentialEqualityPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "ReferentialEqualityPolicy"

    return-object p0
.end method
