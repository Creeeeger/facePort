.class public abstract Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

.field public final mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    iget-object p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract addSplitTargets(Landroid/graphics/Rect;ZZFLjava/util/ArrayList;)V
.end method
