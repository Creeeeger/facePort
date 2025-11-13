.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewRootImpl$ActivityConfigCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mKeyboardVisible:Z

.field public mOnKeyboardChangeListener:Ljava/util/function/BiConsumer;

.field public mOnOrientationChangeListener:Ljava/lang/Runnable;

.field public final mOrientation:I

.field public final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mOrientation:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->setBackgroundDrawableResource(I)V

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->getFloatingWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ClipboardOverlay"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v1, 0x8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget p2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mOrientation:I

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mOnOrientationChangeListener:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
