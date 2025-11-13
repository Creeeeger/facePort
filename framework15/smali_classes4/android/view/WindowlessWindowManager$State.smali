.class Landroid/view/WindowlessWindowManager$State;
.super Ljava/lang/Object;
.source "WindowlessWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowlessWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field blacklist mAttachedFrame:Landroid/graphics/Rect;

.field blacklist mClient:Landroid/view/IWindow;

.field blacklist mDisplayId:I

.field blacklist mFrame:Landroid/graphics/Rect;

.field blacklist mInputChannelToken:Landroid/os/IBinder;

.field blacklist mInputRegion:Landroid/graphics/Region;

.field blacklist mInputTransferToken:Landroid/window/InputTransferToken;

.field final blacklist mLastReportedParams:Landroid/view/WindowManager$LayoutParams;

.field blacklist mLeash:Landroid/view/SurfaceControl;

.field final blacklist mParams:Landroid/view/WindowManager$LayoutParams;

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field final synthetic blacklist this$0:Landroid/view/WindowlessWindowManager;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowlessWindowManager;Landroid/view/SurfaceControl;Landroid/view/WindowManager$LayoutParams;ILandroid/view/IWindow;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/WindowlessWindowManager$State;->this$0:Landroid/view/WindowlessWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Landroid/view/WindowlessWindowManager$State;->mLastReportedParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p2, p0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p1, p0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iput p4, p0, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    iput-object p5, p0, Landroid/view/WindowlessWindowManager$State;->mClient:Landroid/view/IWindow;

    iput-object p6, p0, Landroid/view/WindowlessWindowManager$State;->mLeash:Landroid/view/SurfaceControl;

    iput-object p7, p0, Landroid/view/WindowlessWindowManager$State;->mFrame:Landroid/graphics/Rect;

    return-void
.end method
