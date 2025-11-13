.class public final Landroidx/window/embedding/EmbeddingAspectRatio$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingAspectRatio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\tJ\u0012\u0010\n\u001a\u00020\u00042\u0008\u0008\u0001\u0010\n\u001a\u00020\u0008H\u0007R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/window/embedding/EmbeddingAspectRatio$Companion;",
        "",
        "()V",
        "ALWAYS_ALLOW",
        "Landroidx/window/embedding/EmbeddingAspectRatio;",
        "ALWAYS_DISALLOW",
        "buildAspectRatioFromValue",
        "value",
        "",
        "buildAspectRatioFromValue$window_release",
        "ratio",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingAspectRatio$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildAspectRatioFromValue$window_release(F)Landroidx/window/embedding/EmbeddingAspectRatio;
    .locals 2

    sget-object v0, Landroidx/window/embedding/EmbeddingAspectRatio;->ALWAYS_ALLOW:Landroidx/window/embedding/EmbeddingAspectRatio;

    invoke-virtual {v0}, Landroidx/window/embedding/EmbeddingAspectRatio;->getValue$window_release()F

    move-result v1

    cmpg-float v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/window/embedding/EmbeddingAspectRatio;->ALWAYS_DISALLOW:Landroidx/window/embedding/EmbeddingAspectRatio;

    invoke-virtual {v0}, Landroidx/window/embedding/EmbeddingAspectRatio;->getValue$window_release()F

    move-result v1

    cmpg-float v1, p1, v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/window/embedding/EmbeddingAspectRatio$Companion;->ratio(F)Landroidx/window/embedding/EmbeddingAspectRatio;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final ratio(F)Landroidx/window/embedding/EmbeddingAspectRatio;
    .locals 2

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    new-instance p0, Landroidx/window/embedding/EmbeddingAspectRatio;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ratio:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroidx/window/embedding/EmbeddingAspectRatio;-><init>(Ljava/lang/String;FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Ratio must be greater than 1."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
