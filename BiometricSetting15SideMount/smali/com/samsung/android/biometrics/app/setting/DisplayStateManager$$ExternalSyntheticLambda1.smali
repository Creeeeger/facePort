.class public final synthetic Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

.field public final synthetic f$1:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mLimitDisplayCallbacks:Ljava/util/List;

    .line 11
    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mLimitDisplayCallbacks:Ljava/util/List;

    .line 23
    .line 24
    check-cast v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mLimitDisplayCallbacks:Ljava/util/List;

    .line 33
    .line 34
    check-cast v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
