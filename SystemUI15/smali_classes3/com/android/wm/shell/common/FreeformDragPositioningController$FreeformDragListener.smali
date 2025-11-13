.class public final Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

.field public final mTmpPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mTmpPoint:Landroid/graphics/PointF;

    new-instance v0, Lcom/android/wm/shell/common/DismissViewManager;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/common/DismissViewManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    const-string p0, "dismiss-button-freeform"

    iput-object p0, v0, Lcom/android/wm/shell/common/DismissViewManager;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DismissViewManager;->createDismissView()V

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DismissViewManager;->createOrUpdateWrapper()V

    return-void
.end method
