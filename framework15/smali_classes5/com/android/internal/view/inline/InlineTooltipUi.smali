.class public final Lcom/android/internal/view/inline/InlineTooltipUi;
.super Landroid/widget/PopupWindow;
.source "InlineTooltipUi.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;
    }
.end annotation


# static fields
.field private static final blacklist FIRST_TIME_SHOW_DEFAULT_DELAY_MS:I = 0xfa

.field private static final blacklist TAG:Ljava/lang/String; = "InlineTooltipUi"


# instance fields
.field private final blacklist mAnchorOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final blacklist mAnchoredOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final blacklist mContentContainer:Landroid/view/ViewGroup;

.field private blacklist mDelayShowAtStart:Z

.field private blacklist mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

.field private blacklist mDelaying:Z

.field private blacklist mHasEverDetached:Z

.field private blacklist mShowDelayConfigMs:I

.field private blacklist mShowing:Z

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private blacklist mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final blacklist mWm:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHasEverDetached(Lcom/android/internal/view/inline/InlineTooltipUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mHasEverDetached:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDelaying(Lcom/android/internal/view/inline/InlineTooltipUi;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelaying:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasEverDetached(Lcom/android/internal/view/inline/InlineTooltipUi;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mHasEverDetached:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$madjustPosition(Lcom/android/internal/view/inline/InlineTooltipUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->adjustPosition()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateInner(Lcom/android/internal/view/inline/InlineTooltipUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->updateInner(Landroid/view/View;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowAtStart:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelaying:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mTmpRect:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/internal/view/inline/InlineTooltipUi$1;

    invoke-direct {v2, p0}, Lcom/android/internal/view/inline/InlineTooltipUi$1;-><init>(Lcom/android/internal/view/inline/InlineTooltipUi;)V

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchorOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v2, Lcom/android/internal/view/inline/InlineTooltipUi$2;

    invoke-direct {v2, p0}, Lcom/android/internal/view/inline/InlineTooltipUi$2;-><init>(Lcom/android/internal/view/inline/InlineTooltipUi;)V

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchoredOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v2, Landroid/widget/LinearLayout;

    new-instance v3, Landroid/content/ContextWrapper;

    invoke-direct {v3, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWm:Landroid/view/WindowManager;

    const-string v2, "autofill_inline_tooltip_first_show_delay"

    const/16 v3, 0xfa

    const-string v4, "autofill"

    invoke-static {v4, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowDelayConfigMs:I

    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setTouchModal(Z)V

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setOutsideTouchable(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setInputMethodMode(I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setFocusable(Z)V

    return-void
.end method

.method private blacklist adjustPosition()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->update(Landroid/view/View;)V

    return-void
.end method

.method private blacklist getPreferHeight(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method private blacklist hide()V
    .locals 3

    const-string v0, "InlineTooltipUi"

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "hide()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchoredOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception hiding window "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist removeDelayShowTooltip(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    :cond_0
    return-void
.end method

.method private blacklist show(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    const-string v0, "InlineTooltipUi"

    iput-object p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    :try_start_0
    const-string v1, "android"

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "Autofill Inline Tooltip"

    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0x28

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x400000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchoredOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception showing window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed with token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gone."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private blacklist updateInner(Landroid/view/View;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mHasEverDetached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setWindowLayoutType(I)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->getPreferHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setWidth(I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setHeight(I)V

    const/4 v1, 0x0

    const/16 v2, 0x31

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/internal/view/inline/InlineTooltipUi;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    const/4 v6, -0x2

    const/4 v7, -0x2

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/view/inline/InlineTooltipUi;->update(Landroid/view/View;IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected blacklist attachToAnchor(Landroid/view/View;III)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchorOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public whitelist test-api close()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->dismiss()V

    return-void
.end method

.method protected blacklist detachFromAnchor()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchorOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-direct {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->removeDelayShowTooltip(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mHasEverDetached:Z

    invoke-super {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    return-void
.end method

.method public whitelist dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setTransitioningToDismiss(Z)V

    invoke-direct {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->hide()V

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->detachFromAnchor()V

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Window: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "showing: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "view: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "params: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "screen coordinates: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    const-string v1, "N/A"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected blacklist findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 5

    invoke-super/range {p0 .. p8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mTmpRect:Landroid/graphics/Rect;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-eqz v0, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->getPreferHeight(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1
    :goto_0
    return v0
.end method

.method public whitelist getAnimationStyle()I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getContentView()Landroid/view/View;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public whitelist getElevation()F
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist hasContentView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist hasDecorView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setElevation(F)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setTooltipView(Landroid/widget/inline/InlineContentView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public whitelist setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist showAsDropDown(Landroid/view/View;III)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setShowing(Z)V

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setDropDown(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/view/inline/InlineTooltipUi;->attachToAnchor(Landroid/view/View;III)V

    nop

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getAllowScrollingAnchorParent()Z

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/view/inline/InlineTooltipUi;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->updateAboveAnchor(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->show(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public blacklist update(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->removeDelayShowTooltip(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowAtStart:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowAtStart:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelaying:Z

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;-><init>(Lcom/android/internal/view/inline/InlineTooltipUi;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    :cond_2
    iget v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowDelayConfigMs:I

    nop

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "animator_duration_scale"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Landroid/view/WindowManager;->fixScale(F)F

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelaying:Z

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->updateInner(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    :goto_1
    nop

    :goto_2
    return-void
.end method

.method protected blacklist update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/view/inline/InlineTooltipUi;->show(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->hide()V

    :goto_0
    return-void
.end method
