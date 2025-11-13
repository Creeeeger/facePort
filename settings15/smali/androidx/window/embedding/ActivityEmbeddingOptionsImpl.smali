.class public final Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0001\u00a2\u0006\u0002\u0008\u0014J\u001d\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0001\u00a2\u0006\u0002\u0008\u0018J\u0014\u0010\u0019\u001a\u00020\u001a*\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\u000e\u0010\u001c\u001a\u0004\u0018\u00010\u001d*\u00020\u0011H\u0002J\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u001f*\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008 J\u001c\u0010!\u001a\u00020\u000f*\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001aH\u0002J\u0014\u0010#\u001a\u00020\u000f*\u00020\u00112\u0006\u0010$\u001a\u00020\u001dH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;",
        "",
        "()V",
        "DIMENSION_TYPE_EXPANDED",
        "",
        "DIMENSION_TYPE_HINGE",
        "DIMENSION_TYPE_PIXEL",
        "DIMENSION_TYPE_RATIO",
        "KEY_EMBEDDING_BOUNDS",
        "KEY_EMBEDDING_BOUNDS_ALIGNMENT",
        "KEY_EMBEDDING_BOUNDS_DIMENSION_TYPE",
        "KEY_EMBEDDING_BOUNDS_DIMENSION_VALUE",
        "KEY_EMBEDDING_BOUNDS_HEIGHT",
        "KEY_EMBEDDING_BOUNDS_WIDTH",
        "setActivityStackToken",
        "",
        "options",
        "Landroid/os/Bundle;",
        "activityStackToken",
        "Landroidx/window/extensions/embedding/ActivityStack$Token;",
        "setActivityStackToken$window_release",
        "setOverlayCreateParams",
        "overlayCreateParams",
        "Landroidx/window/embedding/OverlayCreateParams;",
        "setOverlayCreateParams$window_release",
        "getDimension",
        "Landroidx/window/embedding/EmbeddingBounds$Dimension;",
        "key",
        "getEmbeddingBounds",
        "Landroidx/window/embedding/EmbeddingBounds;",
        "getOverlayAttributes",
        "Landroidx/window/embedding/OverlayAttributes;",
        "getOverlayAttributes$window_release",
        "putDimension",
        "dimension",
        "putEmbeddingBounds",
        "embeddingBounds",
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


# static fields
.field private static final DIMENSION_TYPE_EXPANDED:Ljava/lang/String; = "expanded"

.field private static final DIMENSION_TYPE_HINGE:Ljava/lang/String; = "hinge"

.field private static final DIMENSION_TYPE_PIXEL:Ljava/lang/String; = "pixel"

.field private static final DIMENSION_TYPE_RATIO:Ljava/lang/String; = "ratio"

.field public static final INSTANCE:Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;

.field private static final KEY_EMBEDDING_BOUNDS:Ljava/lang/String; = "androidx.window.embedding.EmbeddingBounds"

.field private static final KEY_EMBEDDING_BOUNDS_ALIGNMENT:Ljava/lang/String; = "androidx.window.embedding.EmbeddingBounds.alignment"

.field private static final KEY_EMBEDDING_BOUNDS_DIMENSION_TYPE:Ljava/lang/String; = "androidx.window.embedding.EmbeddingBounds.dimension_type"

.field private static final KEY_EMBEDDING_BOUNDS_DIMENSION_VALUE:Ljava/lang/String; = "androidx.window.embedding.EmbeddingBounds.dimension_value"

.field private static final KEY_EMBEDDING_BOUNDS_HEIGHT:Ljava/lang/String; = "androidx.window.embedding.EmbeddingBounds.height"

.field private static final KEY_EMBEDDING_BOUNDS_WIDTH:Ljava/lang/String; = "androidx.window.embedding.EmbeddingBounds.width"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;

    invoke-direct {v0}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;-><init>()V

    sput-object v0, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->INSTANCE:Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDimension(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/window/embedding/EmbeddingBounds$Dimension;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "androidx.window.embedding.EmbeddingBounds.dimension_type"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const-string v0, "androidx.window.embedding.EmbeddingBounds.dimension_value"

    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p2, "ratio"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Landroidx/window/embedding/EmbeddingBounds$Dimension;->Companion:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;->ratio(F)Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object p0

    goto :goto_0

    :sswitch_1
    const-string p2, "pixel"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Landroidx/window/embedding/EmbeddingBounds$Dimension;->Companion:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;->pixel(I)Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object p0

    goto :goto_0

    :sswitch_2
    const-string p0, "hinge"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    goto :goto_0

    :sswitch_3
    const-string p0, "expanded"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_EXPANDED:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    :goto_0
    return-object p0

    :cond_0
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal type "

    invoke-static {p2, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73945347 -> :sswitch_3
        0x5eaf12b -> :sswitch_2
        0x65bd286 -> :sswitch_1
        0x674500b -> :sswitch_0
    .end sparse-switch
.end method

.method private final getEmbeddingBounds(Landroid/os/Bundle;)Landroidx/window/embedding/EmbeddingBounds;
    .locals 4

    const-string v0, "androidx.window.embedding.EmbeddingBounds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/window/embedding/EmbeddingBounds;

    new-instance v1, Landroidx/window/embedding/EmbeddingBounds$Alignment;

    const-string v2, "androidx.window.embedding.EmbeddingBounds.alignment"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroidx/window/embedding/EmbeddingBounds$Alignment;-><init>(I)V

    const-string v2, "androidx.window.embedding.EmbeddingBounds.width"

    invoke-direct {p0, p1, v2}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->getDimension(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object v2

    const-string v3, "androidx.window.embedding.EmbeddingBounds.height"

    invoke-direct {p0, p1, v3}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->getDimension(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    return-object v0
.end method

.method private final putDimension(Landroid/os/Bundle;Ljava/lang/String;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V
    .locals 3

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_EXPANDED:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "androidx.window.embedding.EmbeddingBounds.dimension_type"

    if-eqz v0, :cond_0

    const-string p3, "expanded"

    invoke-virtual {p0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p3, "hinge"

    invoke-virtual {p0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v0, p3, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    const-string v2, "androidx.window.embedding.EmbeddingBounds.dimension_value"

    if-eqz v0, :cond_2

    const-string v0, "ratio"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p3, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    invoke-virtual {p3}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;->getValue$window_release()F

    move-result p3

    invoke-virtual {p0, v2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    :cond_2
    instance-of v0, p3, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;

    if-eqz v0, :cond_3

    const-string v0, "pixel"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p3, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;

    invoke-virtual {p3}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;->getValue$window_release()I

    move-result p3

    invoke-virtual {p0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final putEmbeddingBounds(Landroid/os/Bundle;Landroidx/window/embedding/EmbeddingBounds;)V
    .locals 3

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Landroidx/window/embedding/EmbeddingBounds;->getAlignment()Landroidx/window/embedding/EmbeddingBounds$Alignment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/embedding/EmbeddingBounds$Alignment;->getValue$window_release()I

    move-result v0

    const-string v1, "androidx.window.embedding.EmbeddingBounds.alignment"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->INSTANCE:Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;

    const-string v1, "androidx.window.embedding.EmbeddingBounds.width"

    invoke-virtual {p2}, Landroidx/window/embedding/EmbeddingBounds;->getWidth()Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->putDimension(Landroid/os/Bundle;Ljava/lang/String;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    const-string v1, "androidx.window.embedding.EmbeddingBounds.height"

    invoke-virtual {p2}, Landroidx/window/embedding/EmbeddingBounds;->getHeight()Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->putDimension(Landroid/os/Bundle;Ljava/lang/String;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    const-string p2, "androidx.window.embedding.EmbeddingBounds"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final getOverlayAttributes$window_release(Landroid/os/Bundle;)Landroidx/window/embedding/OverlayAttributes;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->getEmbeddingBounds(Landroid/os/Bundle;)Landroidx/window/embedding/EmbeddingBounds;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Landroidx/window/embedding/OverlayAttributes;

    invoke-direct {p1, p0}, Landroidx/window/embedding/OverlayAttributes;-><init>(Landroidx/window/embedding/EmbeddingBounds;)V

    return-object p1
.end method

.method public final setActivityStackToken$window_release(Landroid/os/Bundle;Landroidx/window/extensions/embedding/ActivityStack$Token;)V
    .locals 0
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x5
    .end annotation

    const-string p0, "options"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "activityStackToken"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "androidx.window.extensions.embedding.ActivityStackToken"

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/ActivityStack$Token;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final setOverlayCreateParams$window_release(Landroid/os/Bundle;Landroidx/window/embedding/OverlayCreateParams;)V
    .locals 2
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayCreateParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {v0}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/window/WindowSdkExtensions;->requireExtensionVersion$window_release(I)V

    const-string v0, "androidx.window.extensions.embedding.OverlayTag"

    invoke-virtual {p2}, Landroidx/window/embedding/OverlayCreateParams;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/window/embedding/OverlayCreateParams;->getOverlayAttributes()Landroidx/window/embedding/OverlayAttributes;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/window/embedding/OverlayAttributes;->getBounds()Landroidx/window/embedding/EmbeddingBounds;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->putEmbeddingBounds(Landroid/os/Bundle;Landroidx/window/embedding/EmbeddingBounds;)V

    return-void
.end method
