.class public final Lcom/android/systemui/qs/tileimpl/ChevronImageView;
.super Landroid/widget/ImageView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final resolveLayoutDirection()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v0

    invoke-super {p0}, Landroid/widget/ImageView;->resolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v2

    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->onRtlPropertiesChanged(I)V

    :cond_0
    return v1
.end method
