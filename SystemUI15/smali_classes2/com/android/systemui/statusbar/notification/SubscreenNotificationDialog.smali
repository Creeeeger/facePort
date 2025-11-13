.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f140604

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda2;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;I)V

    const v0, 0x7f1312f7

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x51

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationFullscreenDialog;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationFullscreenDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda1;

    invoke-direct {p1, p4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f140604

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;I)V

    const v0, 0x7f1312f7

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x51

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f140604

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;I)V

    const v0, 0x7f131310

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda3;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;I)V

    const p3, 0x7f13130f

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x51

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f140604

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda2;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;I)V

    const p3, 0x7f131314

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda3;

    const/4 p3, 0x1

    invoke-direct {p2, p4, p3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;I)V

    const p3, 0x7f131316

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x51

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
