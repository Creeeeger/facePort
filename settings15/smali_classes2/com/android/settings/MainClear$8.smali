.class public final Lcom/android/settings/MainClear$8;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/MainClear;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/MainClear;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/MainClear$8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/MainClear$8;->this$0:Lcom/android/settings/MainClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settings/MainClear$8;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/MainClear$8;->this$0:Lcom/android/settings/MainClear;

    iget-object p1, p0, Lcom/android/settings/MainClear;->mRecoveryCodeIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/MainClear$8;->this$0:Lcom/android/settings/MainClear;

    sget-object v2, Lcom/android/settings/MainClear;->mAppLabelComparator:Lcom/android/settings/MainClear$11;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "MainClear"

    const-string v3, "SamsungWalletDialog:card_backup_notice="

    const-string v4, "SamsungWalletDialog:app_name="

    const-string v5, "SamsungWalletDialog:jumpDeepLink="

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_1
    const-string v6, "content://com.samsung.android.spay.common.share/global"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "GET_global"

    const-string v10, "samsungwallet_card_backup_hint"

    const/4 v11, 0x0

    invoke-virtual {v8, v6, v9, v10, v11}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v0, "SamsungWalletDialog:remote call fail"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :cond_1
    const-string v8, "value"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v0, "SamsungWalletDialog:value is empty or null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_2
    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_6

    :try_start_2
    const-string v9, "jump_to_wallet_deeplink"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v0, "SamsungWalletDialog:jump_to_wallet_deeplink is empty or null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move v7, v8

    goto/16 :goto_2

    :cond_3
    const-string v5, "app_name"

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "SamsungWalletDialog:app_name is empty or null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4
    const-string v4, ""
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v6, "com.samsung.android.spay"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v10, v6, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "card_backup_notice"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_3
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v6, "SamsungWalletDialog:get dialog content fail"

    invoke-static {v2, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "SamsungWalletDialog:card_backup_notice is empty or null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f141f9a

    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v4, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v4, Lcom/android/settings/MainClear$3;

    invoke-direct {v4, v1, v9, v0}, Lcom/android/settings/MainClear$3;-><init>(Lcom/android/settings/MainClear;Ljava/lang/Object;I)V

    invoke-virtual {v5, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/android/settings/MainClear$3;

    const/4 v3, 0x2

    invoke-direct {v0, v1, p1, v3}, Lcom/android/settings/MainClear$3;-><init>(Lcom/android/settings/MainClear;Ljava/lang/Object;I)V

    const v1, 0x7f141f9b

    invoke-virtual {v5, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    move v7, v8

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v1, "SamsungWalletDialog:connect spayUri fail"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    const-string v0, "SamsungWalletDialog:isShowDialog="

    invoke-static {v0, v2, v7}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_4
    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    iget-object p0, p0, Lcom/android/settings/MainClear$8;->this$0:Lcom/android/settings/MainClear;

    invoke-static {p0, p1}, Lcom/android/settings/MainClear;->-$$Nest$mcheckOtherCondition(Lcom/android/settings/MainClear;Landroid/content/Context;)V

    :goto_5
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/MainClear$8;->this$0:Lcom/android/settings/MainClear;

    iget-object v1, p1, Lcom/android/settings/MainClear;->mEsimStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/android/settings/MainClear;->mEsimCheckDefaultVal:Z

    iget-object p0, p0, Lcom/android/settings/MainClear$8;->this$0:Lcom/android/settings/MainClear;

    iget-object p0, p0, Lcom/android/settings/MainClear;->mEsimStorage:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/MainClear$8;->this$0:Lcom/android/settings/MainClear;

    iget-object p0, p0, Lcom/android/settings/MainClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/MainClear$8;->this$0:Lcom/android/settings/MainClear;

    iget-object p0, p0, Lcom/android/settings/MainClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
