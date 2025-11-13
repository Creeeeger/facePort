.class Landroid/window/WindowContainerTransactionCallback$1;
.super Landroid/window/IWindowContainerTransactionCallback$Stub;
.source "WindowContainerTransactionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransactionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/WindowContainerTransactionCallback;


# direct methods
.method constructor blacklist <init>(Landroid/window/WindowContainerTransactionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/window/WindowContainerTransactionCallback$1;->this$0:Landroid/window/WindowContainerTransactionCallback;

    invoke-direct {p0}, Landroid/window/IWindowContainerTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransactionCallback$1;->this$0:Landroid/window/WindowContainerTransactionCallback;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
