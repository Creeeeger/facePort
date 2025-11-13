.class public final Lcom/android/wm/shell/draganddrop/DragAndDropOptions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public mIsFreeform:Z

.field public mIsFullscreen:Z

.field public mIsResizable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mBounds:Landroid/graphics/Rect;

    return-void
.end method
