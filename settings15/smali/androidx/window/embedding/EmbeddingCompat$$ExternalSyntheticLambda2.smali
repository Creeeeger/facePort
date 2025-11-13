.class public final synthetic Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroidx/window/embedding/EmbeddingCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/EmbeddingCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda2;->f$0:Landroidx/window/embedding/EmbeddingCompat;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda2;->f$0:Landroidx/window/embedding/EmbeddingCompat;

    check-cast p1, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;

    invoke-static {p0, p1}, Landroidx/window/embedding/EmbeddingCompat;->$r8$lambda$rMgsdOGEO4YvXmk6nVwnOz4FbeI(Landroidx/window/embedding/EmbeddingCompat;Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;)Landroidx/window/extensions/embedding/SplitAttributes;

    move-result-object p0

    return-object p0
.end method
