.class Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$1;
.super Ljava/lang/Object;
.source "KnoxAuthCredentialView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnEvent(II)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    :cond_1
    return v1
.end method
