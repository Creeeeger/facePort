.class public final Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$bResults:[Z

.field public final synthetic val$saInfo:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;

.field public final synthetic val$saManager:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;->val$saInfo:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;->val$saManager:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    iput-object p3, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;->val$bResults:[Z

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSaInfo : onFailed : errCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SaInfoUtils"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getSaInfo : onFailed : errMsg = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;->val$saManager:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->releaseSaAuthInfo()V

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;->val$bResults:[Z

    const/4 p1, 0x0

    aput-boolean p1, p0, p1

    const/4 p1, 0x1

    aput-boolean p1, p0, p1

    return-void
.end method
