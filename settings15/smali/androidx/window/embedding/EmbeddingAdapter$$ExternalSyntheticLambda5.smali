.class public final synthetic Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/window/embedding/SplitPairRule;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/SplitPairRule;I)V
    .locals 0

    iput p2, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda5;->f$0:Landroidx/window/embedding/SplitPairRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda5;->f$0:Landroidx/window/embedding/SplitPairRule;

    check-cast p1, Landroid/util/Pair;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->$r8$lambda$Gn8lX0DcZGnshx6PAnbTZdWj_cg(Landroidx/window/embedding/SplitPairRule;Landroid/util/Pair;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->$r8$lambda$aKGINfqikZLNqvwrrMIrImJf53g(Landroidx/window/embedding/SplitPairRule;Landroid/util/Pair;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
