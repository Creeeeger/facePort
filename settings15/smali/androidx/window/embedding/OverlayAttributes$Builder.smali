.class public final Landroidx/window/embedding/OverlayAttributes$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/OverlayAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/window/embedding/OverlayAttributes$Builder;",
        "",
        "()V",
        "bounds",
        "Landroidx/window/embedding/EmbeddingBounds;",
        "build",
        "Landroidx/window/embedding/OverlayAttributes;",
        "setBounds",
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


# instance fields
.field private bounds:Landroidx/window/embedding/EmbeddingBounds;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/window/embedding/EmbeddingBounds;->BOUNDS_EXPANDED:Landroidx/window/embedding/EmbeddingBounds;

    iput-object v0, p0, Landroidx/window/embedding/OverlayAttributes$Builder;->bounds:Landroidx/window/embedding/EmbeddingBounds;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/embedding/OverlayAttributes;
    .locals 1

    new-instance v0, Landroidx/window/embedding/OverlayAttributes;

    iget-object p0, p0, Landroidx/window/embedding/OverlayAttributes$Builder;->bounds:Landroidx/window/embedding/EmbeddingBounds;

    invoke-direct {v0, p0}, Landroidx/window/embedding/OverlayAttributes;-><init>(Landroidx/window/embedding/EmbeddingBounds;)V

    return-object v0
.end method

.method public final setBounds(Landroidx/window/embedding/EmbeddingBounds;)Landroidx/window/embedding/OverlayAttributes$Builder;
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/embedding/OverlayAttributes$Builder;->bounds:Landroidx/window/embedding/EmbeddingBounds;

    return-object p0
.end method
