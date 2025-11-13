.class Landroidx/core/widget/NestedScrollView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "NestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field private final mScrollView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/core/widget/NestedScrollView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sv"
        }
    .end annotation

    .line 3015
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3016
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView$HoverScrollHandler;->mScrollView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 3021
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView$HoverScrollHandler;->mScrollView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/widget/NestedScrollView;

    if-eqz p0, :cond_0

    .line 3023
    invoke-static {p0, p1}, Landroidx/core/widget/NestedScrollView;->access$100(Landroidx/core/widget/NestedScrollView;Landroid/os/Message;)V

    :cond_0
    return-void
.end method
