.class Lcom/samsung/android/settings/share/controller/TileDragController$2;
.super Landroid/view/View$DragShadowBuilder;
.source "TileDragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/share/controller/TileDragController;->startDrag(Landroid/view/View;Lcom/samsung/android/settings/share/structure/ShareTileTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/share/controller/TileDragController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/share/controller/TileDragController;Landroid/view/View;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/samsung/android/settings/share/controller/TileDragController$2;->this$0:Lcom/samsung/android/settings/share/controller/TileDragController;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    .line 114
    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 115
    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    .line 116
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Point;->set(II)V

    .line 117
    div-int/lit8 v0, v0, 0x2

    int-to-double p0, p0

    const-wide v1, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr p0, v1

    double-to-int p0, p0

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
