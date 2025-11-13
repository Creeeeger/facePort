.class public final Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/cover/CoverWindowDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;->this$0:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p2, "window"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    iput-object p0, p1, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;->this$0:Lcom/android/systemui/cover/CoverWindowDelegate;

    iget-object v0, v0, Lcom/android/systemui/cover/CoverWindowDelegate;->mCoverDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;->this$0:Lcom/android/systemui/cover/CoverWindowDelegate;

    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mCoverDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->setDisplayId(I)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;->this$0:Lcom/android/systemui/cover/CoverWindowDelegate;

    iget-object v0, v0, Lcom/android/systemui/cover/CoverWindowDelegate;->mCoverDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setDisplayId(I)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
