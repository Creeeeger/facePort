.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mIsTouchDown:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mShouldIgnoreSingleTap:Ljava/util/function/BooleanSupplier;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mFodConsumers:Ljava/util/List;

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$1;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->handleOnFodSingleTap()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    return-void

    .line 49
    :pswitch_0
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->handleTouchUp(FF)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
