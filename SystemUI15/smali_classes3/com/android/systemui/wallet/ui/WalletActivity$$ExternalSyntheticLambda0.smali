.class public final synthetic Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallet/ui/WalletActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallet/ui/WalletActivity;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallet/ui/WalletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    const-string v1, "WalletActivity"

    iget v2, p0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallet/ui/WalletActivity;

    packed-switch v2, :pswitch_data_0

    sget v2, Lcom/android/systemui/wallet/ui/WalletActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Wallet action button is clicked."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v2, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "False tap detected on wallet action button."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_UNLOCK_FROM_UNLOCK_BUTTON:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    new-instance v0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, p1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;ZZ)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->createWalletIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "Unable to create wallet app intent."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_SHOW_ALL:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->createWalletIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_UNLOCK_FROM_SHOW_ALL_BUTTON:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    new-instance v2, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallet/ui/WalletActivity;)V

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;ZZ)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
