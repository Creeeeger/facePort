.class public final Lcom/android/wm/shell/draganddrop/SmartTipController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public mGapWithContent:I

.field public final mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

.field public mInitialX:I

.field public mShown:Z

.field public mSurfaceHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mDisplayBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/wm/shell/draganddrop/SmartTip;

    const v7, 0x7f0b0050

    const v8, 0x7f0d00ee

    const-string v3, "ctwHelpTip"

    const-string v4, "CtwSmartTipPopup"

    const-string v5, "helpTipCount"

    const v6, 0x7f130556

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/draganddrop/SmartTip;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

    return-void
.end method


# virtual methods
.method public final dismissHelpTipIfPossible()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mShown:Z

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

    iget-boolean v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mShowRequested:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SmartTip"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeView: mView="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mShowRequested:Z

    :goto_1
    return-void
.end method
