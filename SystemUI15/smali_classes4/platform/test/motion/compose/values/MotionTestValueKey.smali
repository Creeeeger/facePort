.class public final Lplatform/test/motion/compose/values/MotionTestValueKey;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final semanticsPropertyKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lplatform/test/motion/compose/values/MotionTestValueKey;->semanticsPropertyKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lplatform/test/motion/compose/values/MotionTestValueKey;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lplatform/test/motion/compose/values/MotionTestValueKey;

    iget-object p1, p1, Lplatform/test/motion/compose/values/MotionTestValueKey;->semanticsPropertyKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object p0, p0, Lplatform/test/motion/compose/values/MotionTestValueKey;->semanticsPropertyKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lplatform/test/motion/compose/values/MotionTestValueKey;->semanticsPropertyKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
