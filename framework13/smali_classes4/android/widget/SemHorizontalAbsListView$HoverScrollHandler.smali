.class Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "SemHorizontalAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field private final blacklist mListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/SemHorizontalAbsListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 1
    .param p1, "sv"    # Landroid/widget/SemHorizontalAbsListView;

    .line 10648
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 10649
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->mListView:Ljava/lang/ref/WeakReference;

    .line 10650
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 10654
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView;

    .line 10655
    .local v0, "sv":Landroid/widget/SemHorizontalAbsListView;
    if-eqz v0, :cond_0

    .line 10656
    invoke-static {v0, p1}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$mhandleMessage(Landroid/widget/SemHorizontalAbsListView;Landroid/os/Message;)V

    .line 10658
    :cond_0
    return-void
.end method
