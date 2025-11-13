.class public final Landroidx/typoanimation/BaseTypoView$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic val$count:I

.field public final synthetic val$s:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/typoanimation/BaseTypoView$3;->val$s:I

    iput p2, p0, Landroidx/typoanimation/BaseTypoView$3;->val$count:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget v0, p1, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->start:I

    iget v1, p0, Landroidx/typoanimation/BaseTypoView$3;->val$s:I

    if-lt v0, v1, :cond_0

    iget p1, p1, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->end:I

    iget p0, p0, Landroidx/typoanimation/BaseTypoView$3;->val$count:I

    add-int/2addr v1, p0

    if-gt p1, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
