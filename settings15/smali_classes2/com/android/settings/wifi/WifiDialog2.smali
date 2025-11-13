.class public final Lcom/android/settings/wifi/WifiDialog2;
.super Landroidx/appcompat/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/wifi/WifiConfigUiBase2;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public controller:Lcom/android/settings/wifi/WifiConfigController2;

.field public final hideMeteredAndPrivacy:Z

.field public final hideSubmitButton:Z

.field public final isSysUiCaller:Z

.field public final listener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

.field public final mode:I

.field public view:Landroid/view/View;

.field public final wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/wifi/WifiDialog2;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;IIZI)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;IIZI)V
    .locals 11

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move/from16 v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_2

    if-nez p4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move v8, v0

    goto :goto_2

    :cond_2
    move v8, v1

    :goto_2
    and-int/lit8 v0, p7, 0x40

    if-eqz v0, :cond_3

    move v9, v1

    goto :goto_3

    :cond_3
    move/from16 v9, p6

    :goto_3
    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/wifi/WifiDialog2;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;IIZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;IIZZZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p5}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog2;->listener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog2;->wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iput p4, p0, Lcom/android/settings/wifi/WifiDialog2;->mode:I

    iput-boolean p6, p0, Lcom/android/settings/wifi/WifiDialog2;->hideSubmitButton:Z

    iput-boolean p7, p0, Lcom/android/settings/wifi/WifiDialog2;->hideMeteredAndPrivacy:Z

    iput-boolean p8, p0, Lcom/android/settings/wifi/WifiDialog2;->isSysUiCaller:Z

    return-void
.end method


# virtual methods
.method public final dispatchSubmit()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog2;->listener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    invoke-interface {v0, p0}, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;->onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public final getController()Lcom/android/settings/wifi/WifiConfigController2;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog2;->controller:Lcom/android/settings/wifi/WifiConfigController2;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "controller"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getForgetButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public final getSubmitButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "dialogInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x3

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->listener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;->onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/WifiDialog2;->wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->listener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;->onForget(Lcom/android/settings/wifi/WifiDialog2;)V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog2;->isSysUiCaller:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0c1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog2;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView$1(Landroid/view/View;)V

    new-instance v0, Lcom/android/settings/wifi/WifiConfigController2;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog2;->view:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog2;->wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget v7, p0, Lcom/android/settings/wifi/WifiDialog2;->mode:I

    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiDialog2;->hideMeteredAndPrivacy:Z

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/wifi/WifiConfigController2;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase2;Landroid/view/View;Lcom/android/wifitrackerlib/WifiEntry;IZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog2;->controller:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiDialog2;->hideSubmitButton:Z

    const/16 v0, 0x8

    const-string v1, "controller"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->controller:Lcom/android/settings/wifi/WifiConfigController2;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->controller:Lcom/android/settings/wifi/WifiConfigController2;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController2;->enableSubmitIfAppropriate()V

    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog2;->controller:Lcom/android/settings/wifi/WifiConfigController2;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getForgetButton()Landroid/widget/Button;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_1
    return-void

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string p0, "view"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog2;->controller:Lcom/android/settings/wifi/WifiConfigController2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->updatePassword()V

    return-void

    :cond_0
    const-string p0, "controller"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/activity/ComponentDialog;->onStart()V

    const v0, 0x7f0a0ed8

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "requireViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog2;->hideSubmitButton:Z

    if-eqz v1, :cond_0

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/settings/wifi/WifiDialog2$onStart$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiDialog2$onStart$1;-><init>(Lcom/android/settings/wifi/WifiDialog2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public final setCancelButton(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setForgetButton(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
