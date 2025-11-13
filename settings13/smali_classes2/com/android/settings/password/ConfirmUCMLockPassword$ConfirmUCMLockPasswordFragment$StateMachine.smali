.class public Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;
.super Ljava/lang/Object;
.source "ConfirmUCMLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateMachine"
.end annotation


# instance fields
.field private mAtmRemain:I

.field private mErrorState:I

.field mInputPin:Ljava/lang/String;

.field mInputPuk:Ljava/lang/String;

.field private mState:I

.field final synthetic this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttemptsRemaining()I
    .locals 0

    .line 840
    iget p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    return p0
.end method

.method public getErrorState()I
    .locals 0

    .line 832
    iget p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    return p0
.end method

.method public getState()I
    .locals 2

    .line 848
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmUCMLockPasswordFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_0
    iget p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    return p0
.end method

.method public next(Ljava/lang/String;)V
    .locals 7

    .line 858
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v0

    .line 859
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "next mCurState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfirmUCMLockPasswordFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x63

    const/4 v3, 0x2

    const v4, 0x10002

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 879
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array v1, v3, [Ljava/lang/String;

    .line 882
    iget-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPuk:Ljava/lang/String;

    aput-object p1, v1, v6

    .line 883
    iget-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    aput-object p1, v1, v5

    move v2, v3

    goto :goto_0

    .line 885
    :cond_1
    iput v4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    const p1, 0x10006

    .line 886
    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    goto :goto_0

    .line 874
    :pswitch_1
    iput-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    const p1, 0x10003

    .line 875
    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    .line 869
    :pswitch_2
    iput-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPuk:Ljava/lang/String;

    .line 870
    iput v4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    :pswitch_3
    new-array v1, v5, [Ljava/lang/String;

    aput-object p1, v1, v6

    move v2, v6

    .line 893
    :goto_0
    new-instance p1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmCsNameUri(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0, v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;-><init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/String;I)V

    .line 894
    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAttemptsRemaining(I)V
    .locals 0

    .line 844
    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    return-void
.end method

.method public setErrorState(I)V
    .locals 0

    .line 836
    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    return-void
.end method

.method public setState(I)V
    .locals 2

    .line 853
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmUCMLockPasswordFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_0
    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    return-void
.end method

.method public setState(II)V
    .locals 3

    .line 813
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "ConfirmUCMLockPasswordFragment"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remainCnt : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_1
    iput p2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    const/4 p2, 0x0

    .line 816
    iput p2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    packed-switch p1, :pswitch_data_0

    const p1, 0x10005

    .line 827
    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    :pswitch_0
    const p1, 0x10001

    .line 824
    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    :pswitch_1
    const/high16 p1, 0x10000

    .line 821
    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
