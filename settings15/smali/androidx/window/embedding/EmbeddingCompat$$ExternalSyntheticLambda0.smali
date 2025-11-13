.class public final synthetic Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;

.field public final synthetic f$1:Landroidx/window/embedding/EmbeddingCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;I)V
    .locals 0

    iput p3, p0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;

    iput-object p2, p0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;->f$1:Landroidx/window/embedding/EmbeddingCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;->f$1:Landroidx/window/embedding/EmbeddingCompat;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Landroidx/window/embedding/EmbeddingCompat;->$r8$lambda$I9THJLRJeHBSBamI59prDsy0inU(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;Ljava/util/List;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;->f$1:Landroidx/window/embedding/EmbeddingCompat;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Landroidx/window/embedding/EmbeddingCompat;->$r8$lambda$BSUP-rRLApGLHQEWdKs0Z58xVoU(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
