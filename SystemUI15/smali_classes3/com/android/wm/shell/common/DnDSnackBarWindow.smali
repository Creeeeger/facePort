.class public Lcom/android/wm/shell/common/DnDSnackBarWindow;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCallbacks:Lcom/android/wm/shell/common/DnDSnackBarController;

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public mMarginBottom:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DnDSnackBarWindow;->hide()V

    const/4 p0, 0x1

    return p0
.end method

.method public final hide()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mCallbacks:Lcom/android/wm/shell/common/DnDSnackBarController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/common/DnDSnackBarController;->mWasShownSnackBar:Z

    iget-object v1, v0, Lcom/android/wm/shell/common/DnDSnackBarController;->mSnackBarPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "snack_bar_shown"

    iget-boolean v0, v0, Lcom/android/wm/shell/common/DnDSnackBarController;->mWasShownSnackBar:Z

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07142d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mMarginBottom:I

    return-void
.end method
