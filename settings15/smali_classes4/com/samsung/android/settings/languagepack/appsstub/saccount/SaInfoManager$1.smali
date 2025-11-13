.class public final Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$1;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$1;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceiveAT : requestId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSuccess = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaInfoManager"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$1;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mRequested:Z

    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_5

    const/4 p0, 0x1

    const-string p1, "access_token"

    const-string/jumbo v3, "resultData is null!"

    const-string/jumbo v4, "onReceiveAT : resultData is null!"

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    invoke-static {v1, v4}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->handleFailure(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "api_server_url"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "auth_server_url"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cc"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceiveAT : at = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceiveAT : apsu = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceiveAT : ausu = "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceiveAT : cc = "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, v0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mSaInfoListener:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;

    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getSaInfo : onReceived : aid = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mSAClientId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SaInfoUtils"

    invoke-static {v4, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "getSaInfo : onReceived : tkn = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "getSaInfo : onReceived : url = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "getSaInfo : onReceived : cc = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;->val$saInfo:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;

    iput-object v0, v1, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->appId:Ljava/lang/String;

    iput-object p1, v1, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->token:Ljava/lang/String;

    iput-object v3, v1, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->url:Ljava/lang/String;

    iput-object p3, v1, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->countryCode:Ljava/lang/String;

    iget-object p1, p2, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;->val$saManager:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->releaseSaAuthInfo()V

    iget-object p1, p2, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;->val$bResults:[Z

    aput-boolean p0, p1, v2

    aput-boolean p0, p1, p0

    goto/16 :goto_0

    :cond_1
    const-string/jumbo p0, "onReceiveAT : mSaInfoListener is null. Cannot return information!"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-nez p3, :cond_3

    invoke-static {v1, v4}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->handleFailure(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string p2, "error_code"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "error_message"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onReceiveAT : err = "

    const-string v4, ", msg = "

    const-string v5, ", alreadyExp = "

    invoke-static {v3, p2, v4, v2, v5}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mAlreadyExpiredToken:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mAlreadyExpiredToken:Z

    if-nez v3, :cond_4

    const-string v3, "SAC_0402"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "onReceiveAT : eat = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p0, v0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mAlreadyExpiredToken:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->requestForUserToken(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "handleFailure : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mSaInfoListener:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo p1, "onReceiveAT : not supported requestId!"

    invoke-static {v1, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$1;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    const-string/jumbo p1, "not supported requestId!"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->handleFailure(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
