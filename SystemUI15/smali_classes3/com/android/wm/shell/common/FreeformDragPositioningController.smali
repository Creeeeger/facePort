.class public final Lcom/android/wm/shell/common/FreeformDragPositioningController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static volatile sFreeformDragPositioningController:Lcom/android/wm/shell/common/FreeformDragPositioningController;


# instance fields
.field public final mFreeformDragListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/FreeformDragPositioningController;->mFreeformDragListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/wm/shell/common/FreeformDragPositioningController;
    .locals 2

    sget-object v0, Lcom/android/wm/shell/common/FreeformDragPositioningController;->sFreeformDragPositioningController:Lcom/android/wm/shell/common/FreeformDragPositioningController;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/wm/shell/common/FreeformDragPositioningController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/wm/shell/common/FreeformDragPositioningController;->sFreeformDragPositioningController:Lcom/android/wm/shell/common/FreeformDragPositioningController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/wm/shell/common/FreeformDragPositioningController;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/FreeformDragPositioningController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/wm/shell/common/FreeformDragPositioningController;->sFreeformDragPositioningController:Lcom/android/wm/shell/common/FreeformDragPositioningController;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/android/wm/shell/common/FreeformDragPositioningController;->sFreeformDragPositioningController:Lcom/android/wm/shell/common/FreeformDragPositioningController;

    return-object p0
.end method
