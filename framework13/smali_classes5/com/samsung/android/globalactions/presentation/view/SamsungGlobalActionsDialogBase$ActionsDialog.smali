.class Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;
.super Landroid/app/Dialog;
.source "SamsungGlobalActionsDialogBase.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionsDialog"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;
    .param p2, "context"    # Landroid/content/Context;

    .line 270
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;->this$0:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;

    .line 271
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 273
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 274
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;Landroid/content/Context;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "themeResId"    # I

    .line 276
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;->this$0:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;

    .line 277
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 280
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;->this$0:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;

    invoke-static {v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->-$$Nest$fgetmContentView(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;)Lcom/samsung/android/globalactions/presentation/view/ContentView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;->this$0:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;

    invoke-static {v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->-$$Nest$fgetmContentView(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;)Lcom/samsung/android/globalactions/presentation/view/ContentView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->getAnimationState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;->this$0:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->onCancelDialog()V

    .line 289
    :cond_1
    return-void
.end method
