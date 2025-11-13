.class Landroid/view/View$1;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/RenderNode$PositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/View;->updatePositionUpdateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/View;

.field final synthetic blacklist val$info:Landroid/view/View$ListenerInfo;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;Landroid/view/View$ListenerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/View$1;->this$0:Landroid/view/View;

    iput-object p2, p0, Landroid/view/View$1;->val$info:Landroid/view/View$ListenerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist positionChanged(JIIII)V
    .locals 2

    iget-object v0, p0, Landroid/view/View$1;->this$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/View$1;->val$info:Landroid/view/View$ListenerInfo;

    invoke-static {v1}, Landroid/view/View$ListenerInfo;->-$$Nest$fgetmPositionChangedUpdate(Landroid/view/View$ListenerInfo;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->-$$Nest$mpostUpdate(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist positionLost(J)V
    .locals 2

    iget-object v0, p0, Landroid/view/View$1;->this$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/View$1;->val$info:Landroid/view/View$ListenerInfo;

    invoke-static {v1}, Landroid/view/View$ListenerInfo;->-$$Nest$fgetmPositionChangedUpdate(Landroid/view/View$ListenerInfo;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->-$$Nest$mpostUpdate(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
