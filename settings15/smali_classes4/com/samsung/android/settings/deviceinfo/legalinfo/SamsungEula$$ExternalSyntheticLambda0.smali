.class public final synthetic Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula$1;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula;

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula;->mLoadingProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula;->mLegalTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula;->mLegalText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula;

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula;->mIsShowAAOnly:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_AA_GET:Landroid/net/Uri;

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getStringByUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula;->mLegalText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_EULA_GET:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUSA()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getStringByUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula;->mLegalText:Ljava/lang/String;

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungEula;->mHandlerLoading:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
