.class Landroid/media/tv/ad/TvAdView$3;
.super Ljava/lang/Object;
.source "TvAdView.java"

# interfaces
.implements Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdView;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/tv/ad/TvAdView$3;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/InputEvent;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView$3;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-virtual {v1, v0}, Landroid/media/tv/ad/TvAdView;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView$3;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V

    :cond_2
    return-void
.end method
