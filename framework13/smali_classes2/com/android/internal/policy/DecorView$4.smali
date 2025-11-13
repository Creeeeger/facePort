.class Lcom/android/internal/policy/DecorView$4;
.super Landroid/view/ViewOutlineProvider;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;

    .line 646
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$4;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 649
    move-object v0, p1

    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionResources()Lcom/samsung/android/util/DecorCaptionResources;

    move-result-object v0

    .line 650
    .local v0, "dcRes":Lcom/samsung/android/util/DecorCaptionResources;
    const v1, 0x10503ac

    invoke-virtual {v0, v1}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    .line 651
    .local v1, "radius":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4, v1}, Lcom/samsung/android/util/SemViewUtils;->getSmoothRoundedRect(IIIII)Landroid/graphics/Path;

    move-result-object v2

    .line 652
    .local v2, "path":Landroid/graphics/Path;
    invoke-virtual {p2, v2}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 653
    return-void
.end method
