.class public final synthetic Lcom/android/settings/network/EraseEuiccDataDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/EraseEuiccDataDialogFragment;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/EraseEuiccDataDialogFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/EraseEuiccDataDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/EraseEuiccDataDialogFragment;

    iput-object p2, p0, Lcom/android/settings/network/EraseEuiccDataDialogFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/EraseEuiccDataDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/EraseEuiccDataDialogFragment;

    iget-object p0, p0, Lcom/android/settings/network/EraseEuiccDataDialogFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    const-string v1, "com.android.settings.network"

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->resetEsim(Ljava/lang/String;Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask$$ExternalSyntheticLambda0;)V

    new-instance p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;I)V

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
