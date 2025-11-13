.class public final Landroidx/slice/compat/SliceProviderCompat$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/compat/SliceProviderCompat$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Landroidx/slice/SliceItemHolder;)V
    .locals 2

    iget-object v0, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    instance-of v1, v0, Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/core/graphics/drawable/IconCompat;

    iget-object p0, p0, Landroidx/slice/compat/SliceProviderCompat$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroidx/core/graphics/drawable/IconCompat;->checkResource(Landroid/content/Context;)V

    iget p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Icon;

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    iput-object p0, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    :cond_1
    return-void
.end method
