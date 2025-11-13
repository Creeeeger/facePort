.class public final Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDisplayId:I

.field public final mInsetsControllerImpl:Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;

.field public final synthetic this$0:Lcom/android/wm/shell/common/DisplayInsetsController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/DisplayInsetsController;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;-><init>(Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay;I)V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay;->mInsetsControllerImpl:Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;

    iput p2, p0, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay;->mDisplayId:I

    return-void
.end method
