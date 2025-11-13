.class Landroid/media/RemoteDisplay$4;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;->notifyDisplayChanged(Landroid/view/Surface;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/RemoteDisplay;

.field final synthetic blacklist val$flags:I

.field final synthetic blacklist val$height:I

.field final synthetic blacklist val$surface:Landroid/view/Surface;

.field final synthetic blacklist val$width:I


# direct methods
.method constructor blacklist <init>(Landroid/media/RemoteDisplay;Landroid/view/Surface;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/media/RemoteDisplay$4;->this$0:Landroid/media/RemoteDisplay;

    iput-object p2, p0, Landroid/media/RemoteDisplay$4;->val$surface:Landroid/view/Surface;

    iput p3, p0, Landroid/media/RemoteDisplay$4;->val$width:I

    iput p4, p0, Landroid/media/RemoteDisplay$4;->val$height:I

    iput p5, p0, Landroid/media/RemoteDisplay$4;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    iget-object v0, p0, Landroid/media/RemoteDisplay$4;->this$0:Landroid/media/RemoteDisplay;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->-$$Nest$fgetmListener(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteDisplay$4;->val$surface:Landroid/view/Surface;

    iget v2, p0, Landroid/media/RemoteDisplay$4;->val$width:I

    iget v3, p0, Landroid/media/RemoteDisplay$4;->val$height:I

    iget v4, p0, Landroid/media/RemoteDisplay$4;->val$flags:I

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/media/RemoteDisplay$Listener;->onDisplayChanged(Landroid/view/Surface;III)V

    return-void
.end method
