.class final Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController$1;->$positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController$1;->$positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method
