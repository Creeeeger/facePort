.class public final Landroidx/appcompat/widget/TintContextWrapper;
.super Landroid/content/ContextWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CACHE_LOCK:Ljava/lang/Object;


# instance fields
.field public final mResources:Landroidx/appcompat/widget/TintResources;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    sget v0, Landroidx/appcompat/widget/VectorEnabledTintResources;->$r8$clinit:I

    new-instance v0, Landroidx/appcompat/widget/TintResources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/TintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mResources:Landroidx/appcompat/widget/TintResources;

    return-void
.end method

.method public static wrap(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p0, Landroidx/appcompat/widget/TintContextWrapper;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/widget/TintResources;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    instance-of p0, p0, Landroidx/appcompat/widget/VectorEnabledTintResources;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Landroidx/appcompat/widget/VectorEnabledTintResources;->$r8$clinit:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mResources:Landroidx/appcompat/widget/TintResources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/TintContextWrapper;->mResources:Landroidx/appcompat/widget/TintResources;

    return-object p0
.end method
