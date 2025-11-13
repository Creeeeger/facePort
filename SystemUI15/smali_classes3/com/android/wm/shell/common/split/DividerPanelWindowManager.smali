.class public final Lcom/android/wm/shell/common/split/DividerPanelWindowManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDividerView:Lcom/android/wm/shell/common/split/DividerView;

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public mView:Landroid/view/View;

.field public final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mWm:Landroid/view/WindowManager;

    return-void
.end method
