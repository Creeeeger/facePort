.class public final Lcom/android/systemui/statusbar/NotificationInsetsImpl;
.super Lcom/android/systemui/statusbar/NotificationInsetsController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInsetsController;-><init>()V

    return-void
.end method


# virtual methods
.method public final getinsets(Landroid/view/WindowInsets;Landroid/view/DisplayCutout;)Landroid/util/Pair;
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget v0, p0, Landroid/graphics/Insets;->left:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p0, p0, Landroid/graphics/Insets;->right:I

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-instance p2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method
