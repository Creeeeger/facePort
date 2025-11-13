.class public final synthetic Lcom/android/wm/shell/freeform/MultiInstanceItem$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/widget/ImageView;

    check-cast p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/freeform/MultiInstanceItem;->setIconView(Landroid/widget/ImageView;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    check-cast p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/MultiInstanceItem;->isParentMultiInstanceItem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v0, p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getTaskSnapshot(I)Landroid/graphics/Bitmap;

    move-result-object p0

    iget-object v0, p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p0, :cond_1

    iput-object p0, p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[MultiInstanceItem] setSnapshotBitmap: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreeformContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
