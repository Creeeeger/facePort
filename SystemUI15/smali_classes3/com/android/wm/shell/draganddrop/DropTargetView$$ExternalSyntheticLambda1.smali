.class public final synthetic Lcom/android/wm/shell/draganddrop/DropTargetView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/DropTargetView;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DropTargetView;Landroid/graphics/Bitmap;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/DropTargetView;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/DropTargetView;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string p0, "DropTargetView"

    const-string v0, "createBlurredBitmapIfNeeded: view is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
