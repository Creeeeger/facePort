.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;
.super Lcom/android/internal/widget/GridLayoutManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/content/Context;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public final canScrollHorizontally()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    sget-object v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->TAIL_ICON_ALPHA_ARRAY:[F

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    sget-object v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->TAIL_ICON_ALPHA_ARRAY:[F

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringAnimating()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method
