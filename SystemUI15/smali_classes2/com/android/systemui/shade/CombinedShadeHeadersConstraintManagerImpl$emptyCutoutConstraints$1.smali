.class final Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$emptyCutoutConstraints$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$emptyCutoutConstraints$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$emptyCutoutConstraints$1;

    invoke-direct {v0}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$emptyCutoutConstraints$1;-><init>()V

    sput-object v0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$emptyCutoutConstraints$1;->INSTANCE:Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$emptyCutoutConstraints$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintSet;

    const p0, 0x7f0a0339

    const/4 v0, 0x7

    const v1, 0x7f0a0161

    const/4 v2, 0x6

    invoke-virtual {p1, p0, v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const v3, 0x7f0a0b42

    const v4, 0x7f0a0920

    filled-new-array {v3, v4}, [I

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v2, v6, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->createBarrier(III[I)V

    invoke-virtual {p1, v3, v2, p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {p1, v4, v2, p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v0, -0x2

    invoke-virtual {p1, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainedWidth(IZ)V

    invoke-virtual {p1, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainedWidth(IZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
