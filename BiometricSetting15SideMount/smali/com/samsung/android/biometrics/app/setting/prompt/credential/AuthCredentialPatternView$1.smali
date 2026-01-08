.class public final Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
