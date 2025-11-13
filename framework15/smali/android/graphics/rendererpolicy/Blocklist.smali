.class public Landroid/graphics/rendererpolicy/Blocklist;
.super Ljava/lang/Object;
.source "Blocklist.java"


# instance fields
.field private final blacklist items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/rendererpolicy/BlockItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/rendererpolicy/BlockItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/rendererpolicy/Blocklist;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/rendererpolicy/BlockItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/rendererpolicy/Blocklist;->items:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/graphics/rendererpolicy/Blocklist;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/rendererpolicy/Blocklist;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
