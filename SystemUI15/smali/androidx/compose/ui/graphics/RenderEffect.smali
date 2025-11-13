.class public abstract Landroidx/compose/ui/graphics/RenderEffect;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public internalRenderEffect:Landroid/graphics/RenderEffect;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/RenderEffect;-><init>()V

    return-void
.end method


# virtual methods
.method public final asAndroidRenderEffect()Landroid/graphics/RenderEffect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/RenderEffect;->internalRenderEffect:Landroid/graphics/RenderEffect;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/RenderEffect;->createRenderEffect()Landroid/graphics/RenderEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/RenderEffect;->internalRenderEffect:Landroid/graphics/RenderEffect;

    :cond_0
    return-object v0
.end method

.method public abstract createRenderEffect()Landroid/graphics/RenderEffect;
.end method
