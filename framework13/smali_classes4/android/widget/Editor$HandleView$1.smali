.class Landroid/widget/Editor$HandleView$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$HandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;

    .line 6716
    iput-object p1, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "fraction"    # F
    .param p2, "startRect"    # Landroid/graphics/Rect;
    .param p3, "targetRect"    # Landroid/graphics/Rect;

    .line 6719
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 6720
    .local v0, "startWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 6722
    .local v1, "startHeight":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 6723
    .local v2, "targetWidth":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 6726
    .local v3, "targetHeight":I
    sub-int v4, v2, v0

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v0

    .line 6727
    .local v4, "w":I
    sub-int v5, v3, v1

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, v1

    .line 6729
    .local v5, "h":I
    iget-object v6, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v6, v4, v5}, Landroid/widget/Editor$HandleView;->-$$Nest$mgetDrawableBounds(Landroid/widget/Editor$HandleView;II)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic whitelist evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6716
    check-cast p2, Landroid/graphics/Rect;

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView$1;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method
