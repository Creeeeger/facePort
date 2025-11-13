.class public interface abstract Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public startDragAndSplit(Landroid/content/Intent;ILandroid/os/Bundle;III)V
    .locals 0

    return-void
.end method

.method public abstract startIntent(Landroid/app/PendingIntent;IILandroid/os/Bundle;Landroid/window/WindowContainerToken;)V
.end method

.method public startIntent(Landroid/app/PendingIntent;IILandroid/os/Bundle;Landroid/window/WindowContainerToken;II)V
    .locals 0

    invoke-interface/range {p0 .. p5}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startIntent(Landroid/app/PendingIntent;IILandroid/os/Bundle;Landroid/window/WindowContainerToken;)V

    return-void
.end method

.method public abstract startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;II)V
    .locals 0

    invoke-interface/range {p0 .. p5}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public abstract startTask(IILandroid/os/Bundle;Landroid/window/WindowContainerToken;)V
.end method

.method public startTask(IILandroid/os/Bundle;Landroid/window/WindowContainerToken;IIZ)V
    .locals 0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startTask(IILandroid/os/Bundle;Landroid/window/WindowContainerToken;)V

    return-void
.end method
