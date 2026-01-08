.class public final Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mHasPendingRemove:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->onAttachedToWindow(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method
