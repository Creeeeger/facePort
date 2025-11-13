.class Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$2;
.super Ljava/lang/Object;
.source "ConfirmUCMLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->startEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$2;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$2;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fputmBlockImm(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Z)V

    .line 502
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$2;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mresetState(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    return-void
.end method
