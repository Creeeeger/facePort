.class public final synthetic Lcom/android/wm/shell/windowdecor/DragResizeInputListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    check-cast p1, Landroid/graphics/Region;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->updateSinkInputChannel(Landroid/graphics/Region;)V

    return-void
.end method
