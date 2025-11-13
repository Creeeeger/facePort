.class Landroid/widget/Magnifier$InternalPopupWindow$1;
.super Ljava/lang/Object;
.source "Magnifier.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Magnifier$InternalPopupWindow;->setupOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Magnifier$InternalPopupWindow;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow$1;->this$0:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow$1;->this$0:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$mdrawOverlay(Landroid/widget/Magnifier$InternalPopupWindow;)V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow$1;->this$0:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$fgetmCallback(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/widget/Magnifier$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow$1;->this$0:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$mupdateCurrentContentForTesting(Landroid/widget/Magnifier$InternalPopupWindow;)V

    :cond_0
    return-void
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method
