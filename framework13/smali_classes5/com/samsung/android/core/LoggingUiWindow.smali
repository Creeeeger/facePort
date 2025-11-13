.class public Lcom/samsung/android/core/LoggingUiWindow;
.super Ljava/lang/Object;
.source "LoggingUiWindow.java"


# instance fields
.field blacklist mContext:Landroid/content/Context;

.field blacklist mLoggingTextView:Landroid/widget/TextView;

.field blacklist mRootView:Landroid/widget/RelativeLayout;

.field blacklist mTag:Ljava/lang/String;

.field private blacklist mTextAlpha:F

.field private blacklist mTextSize:I

.field blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "LoggingUiWindow_"

    iput-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mTag:Ljava/lang/String;

    .line 44
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mTextSize:I

    .line 45
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mTextAlpha:F

    .line 48
    iput-object p1, p0, Lcom/samsung/android/core/LoggingUiWindow;->mContext:Landroid/content/Context;

    .line 49
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/core/LoggingUiWindow;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mTag:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist addView()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mRootView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/core/LoggingUiWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mRootView:Landroid/widget/RelativeLayout;

    .line 60
    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/core/LoggingUiWindow;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/samsung/android/core/LoggingUiWindow;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    return-void
.end method

.method public blacklist getCurrentLog()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mLoggingTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 93
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 94
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 95
    const/16 v1, 0x118

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 98
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 99
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 101
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 103
    :cond_0
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 104
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 105
    iget-object v1, p0, Lcom/samsung/android/core/LoggingUiWindow;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    return-object v0
.end method

.method public blacklist removeView()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mRootView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/core/LoggingUiWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mRootView:Landroid/widget/RelativeLayout;

    .line 71
    iput-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mLoggingTextView:Landroid/widget/TextView;

    .line 72
    return-void
.end method

.method public blacklist update(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mRootView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mLoggingTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/core/LoggingUiWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mLoggingTextView:Landroid/widget/TextView;

    .line 80
    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mLoggingTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/core/LoggingUiWindow;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mLoggingTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mLoggingTextView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mLoggingTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/core/LoggingUiWindow;->mTextAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/core/LoggingUiWindow;->mLoggingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/core/LoggingUiWindow;->mLoggingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method
