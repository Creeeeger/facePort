.class public final synthetic Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;ILandroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

    iput p2, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda5;->f$2:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda5;->f$1:I

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda5;->f$2:Landroid/content/res/Configuration;

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;

    if-nez v3, :cond_0

    const-string p0, "DisplayController"

    const-string v0, "Skipping Display Configuration change on non-added display."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    if-nez v4, :cond_1

    const-string p0, "DisplayController"

    const-string v0, "Skipping Display Configuration change on invalid display. It may have been removed."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    iget-object v5, v0, Lcom/android/wm/shell/common/DisplayController;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcom/android/wm/shell/common/DisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v5

    :goto_0
    invoke-virtual {v5, p0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/wm/shell/common/DisplayLayout;

    invoke-direct {v6, v5, v4}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v5, v3, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mContext:Landroid/content/Context;

    iput-object v6, v3, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, v3, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mInsetsState:Landroid/view/InsetsState;

    iput-object v3, v6, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v6, v4}, Lcom/android/wm/shell/common/DisplayLayout;->recalcInsets(Landroid/content/res/Resources;)V

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-interface {v4, v1, p0}, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;->onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v2

    :goto_2
    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
