.class public final synthetic Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/window/embedding/SplitPlaceholderRule;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/SplitPlaceholderRule;I)V
    .locals 0

    iput p2, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/window/embedding/SplitPlaceholderRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/window/embedding/SplitPlaceholderRule;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->$r8$lambda$q62Bvpk1KglidwBWQ20zeEF7Y-k(Landroidx/window/embedding/SplitPlaceholderRule;Landroid/content/Intent;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Landroid/app/Activity;

    invoke-static {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->$r8$lambda$gteoRiy2m3KhQzrxUXZx0iJk130(Landroidx/window/embedding/SplitPlaceholderRule;Landroid/app/Activity;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
