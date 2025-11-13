.class public final Lcom/android/wm/shell/onehanded/BackgroundWindowManager;
.super Landroid/view/WindowlessWindowManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBackgroundView:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public mCurrentState:I

.field public mDisplayBounds:Landroid/graphics/Rect;

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mTransactionFactory:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

.field public mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mTransactionFactory:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;
    .locals 1

    new-instance p1, Landroid/view/SurfaceControl$Builder;

    new-instance p2, Landroid/view/SurfaceSession;

    invoke-direct {p2}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {p1, p2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "BackgroundWindowManager"

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "BackgroundWindowManager#attachToParentSurface"

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    return-object p1
.end method

.method public final getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;
    .locals 0

    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public final getThemeColorForBackground()I
    .locals 3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10302e3

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f060518

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    add-int/lit8 p0, p0, -0xa

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public final setConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final showBackgroundLayer()V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/view/SurfaceControlViewHost;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    const-string v3, "BackgroundWindowManager"

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x0

    const v8, 0x20040028

    const/4 v9, -0x3

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const-string v1, "background-panel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x20000040

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->getThemeColorForBackground()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    const-string p0, "SurfaceControl mLeash is null, can\'t show One-handed mode background panel!"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mTransactionFactory:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->updateThemeOnly()V

    return-void
.end method

.method public final updateThemeOnly()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->getThemeColorForBackground()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, p0, v0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "BackgroundWindowManager"

    const-string v0, "Background view or SurfaceControl does not exist when trying to update theme only!"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
