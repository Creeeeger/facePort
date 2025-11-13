.class public final Lcom/android/wm/shell/onehanded/OneHandedController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateDisplayLayout(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isInitialized()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateDisplayLayout(I)V

    :cond_1
    :goto_0
    return-void
.end method
