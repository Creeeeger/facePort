.class Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeOnInsetsChangedListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeOnInsetsChangedListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final insetsChanged(Landroid/view/InsetsState;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    if-eq v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeOnInsetsChangedListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->getFocusedDecor()Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mInImmersiveMode:Z

    if-eq p1, v0, :cond_2

    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingImmersiveHandleHiding()Z

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mInImmersiveMode:Z

    :cond_2
    return-void
.end method
