.class public final Landroidx/leanback/widget/Util;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDescendant(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    return v0
.end method
