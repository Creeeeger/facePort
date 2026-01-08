.class public final synthetic Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHbmListeners:Ljava/util/List;

    .line 8
    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmListener;

    .line 26
    .line 27
    invoke-interface {v2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmListener;->onHbmChanged(Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-nez p0, :cond_1

    .line 32
    .line 33
    iget-object p0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mRunnableReleaseRefreshRate:Ljava/lang/Runnable;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 40
    .line 41
    .line 42
    iget-object p0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mRunnableReleaseRefreshRate:Ljava/lang/Runnable;

    .line 46
    .line 47
    :cond_1
    return-void
.end method
