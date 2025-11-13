.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$1;
.super Landroid/database/ContentObserver;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->updateValue()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodShowStatusUri:Landroid/net/Uri;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mCallbacks:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$Callback;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->isShowing()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-interface {p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$Callback;->onAodStart()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$Callback;->onAodStop()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method
