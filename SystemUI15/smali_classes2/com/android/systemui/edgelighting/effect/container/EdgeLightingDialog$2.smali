.class public final Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    new-instance p0, Landroid/view/WindowInsets$Builder;

    invoke-direct {p0, p2}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
