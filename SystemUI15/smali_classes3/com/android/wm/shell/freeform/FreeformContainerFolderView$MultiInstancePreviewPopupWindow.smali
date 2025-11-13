.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;
.super Landroid/widget/PopupWindow;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

.field public final mOpenedByHoverAction:Z


# direct methods
.method public constructor <init>(Landroid/view/View;IIZZLcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p6, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iput-boolean p5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;->mOpenedByHoverAction:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[FolderView] "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is constructed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreeformContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiInstancePreview{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;->mOpenedByHoverAction:Z

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
