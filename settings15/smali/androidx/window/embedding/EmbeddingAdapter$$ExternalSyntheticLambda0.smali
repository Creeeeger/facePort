.class public final synthetic Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/window/embedding/SplitRule;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/SplitRule;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/window/embedding/SplitRule;

    iput-object p2, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/window/embedding/SplitRule;

    check-cast v0, Landroidx/window/embedding/SplitPairRule;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    check-cast p1, Landroid/view/WindowMetrics;

    invoke-static {v0, p0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->$r8$lambda$qjeTfUE-UAs7eAMQb43Zvq4ccpE(Landroidx/window/embedding/SplitPairRule;Landroid/content/Context;Landroid/view/WindowMetrics;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/window/embedding/SplitRule;

    check-cast v0, Landroidx/window/embedding/SplitPlaceholderRule;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    check-cast p1, Landroid/view/WindowMetrics;

    invoke-static {v0, p0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->$r8$lambda$4VBaANGlpzPM1K8vaKOptx7wqr8(Landroidx/window/embedding/SplitPlaceholderRule;Landroid/content/Context;Landroid/view/WindowMetrics;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/window/embedding/SplitRule;

    check-cast v0, Landroidx/window/embedding/SplitPinRule;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    check-cast p1, Landroid/view/WindowMetrics;

    invoke-static {v0, p0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->$r8$lambda$Xi5J-FhkXM4g5OZFHvsjm3iwaGI(Landroidx/window/embedding/SplitPinRule;Landroid/content/Context;Landroid/view/WindowMetrics;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
