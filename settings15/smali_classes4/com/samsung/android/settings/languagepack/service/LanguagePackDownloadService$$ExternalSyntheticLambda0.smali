.class public final synthetic Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v1, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iget-object v1, v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->isPausedState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->getLanguageInfo(Ljava/lang/String;)Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_CANCEL:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->setCancel()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    sget-object v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->isAllPackageInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.settings.action.LANGUAGE_PACK_ADDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    const-string v3, "locale"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Broadcast intent LANGUAGE_PACK_ADDED : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mResultBroadcastPackage:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LanguagePackDownloadService"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->updateLatestPackageVersion(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
