.class public final Lcom/android/wm/shell/draganddrop/SmartTip;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mKey:Ljava/lang/String;

.field public final mLayoutResId:I

.field public final mLimitCount:I

.field public final mMsgResId:I

.field public final mPreferences:Landroid/content/SharedPreferences;

.field public mRootView:Landroid/view/View;

.field public mShowRequested:Z

.field public mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field public final mTitle:Ljava/lang/String;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x96c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTitle:Ljava/lang/String;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mWindowManager:Landroid/view/WindowManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mPreferences:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mLimitCount:I

    iput p5, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mMsgResId:I

    iput p7, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mLayoutResId:I

    return-void
.end method


# virtual methods
.method public final showTipPopup(IIIZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmartTip"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "show tipPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mMsgResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, p4}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    iget-object p4, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p4, p1, p2}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p0, p3}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    :cond_1
    :goto_0
    return-void
.end method
