.class public final Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2;
.super Landroid/os/FileObserver;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 p2, 0x2

    .line 2
    if-eq p1, p2, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isEnabledHbm()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
