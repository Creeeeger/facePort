.class public final Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mKnoxEventList:Ljava/util/ArrayList;

    const/16 v0, 0xb7

    const/16 v1, 0x727

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f14081c

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f1412d1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;I)V

    const v2, 0x7f14147f

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;I)V

    const v2, 0x7f1408bf

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7d3

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception29 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KKG::SecureFolderLockedView"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$9;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-boolean v1, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    if-eqz v1, :cond_1

    iget-object p0, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    const p1, 0x7f141548

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mKnoxEventList:Ljava/util/ArrayList;

    const/16 v1, 0xb7

    const/16 v2, 0x726

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->callSamsungAccountConfirmationPage(I)V

    :goto_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-boolean v0, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    if-eqz v0, :cond_2

    iget-object p0, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    const p1, 0x7f141548

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mKnoxEventList:Ljava/util/ArrayList;

    const/16 v0, 0xb6

    const/16 v1, 0x71c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->callSamsungAccountConfirmationPage(I)V

    :goto_2
    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mKnoxEventList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/16 v1, 0xb5

    const/16 v2, 0x712

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-boolean v0, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    if-eqz v0, :cond_3

    iget-object p0, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    const p1, 0x7f141548

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mKnoxEventList:Ljava/util/ArrayList;

    const/16 v0, 0xb5

    const/16 v1, 0x713

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->callSamsungAccountConfirmationPage(I)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
