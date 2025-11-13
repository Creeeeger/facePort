.class public Lcom/android/systemui/net/NetworkOverLimitActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTemplate;

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f140613

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez p1, :cond_0

    const-string p0, "NetworkOverLimitActivity"

    const-string p1, "invalid template"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const v1, 0x7f1304d4

    goto :goto_0

    :cond_1
    const v1, 0x7f1304b8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f1304b7

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v1, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    const p1, 0x7f1304b9

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v0, 0x7f130352

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v0, 0x3e99999a    # 0.3f

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v0, 0x50

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
