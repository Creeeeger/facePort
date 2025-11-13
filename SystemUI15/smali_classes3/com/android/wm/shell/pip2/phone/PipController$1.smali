.class public final Lcom/android/wm/shell/pip2/phone/PipController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip2/phone/PipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip2/phone/PipController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipController$1;->this$0:Lcom/android/wm/shell/pip2/phone/PipController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final insetsChanged(Landroid/view/InsetsState;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController$1;->this$0:Lcom/android/wm/shell/pip2/phone/PipController;

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget v0, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method
