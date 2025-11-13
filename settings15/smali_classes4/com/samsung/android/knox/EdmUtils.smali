.class public Lcom/samsung/android/knox/EdmUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static TAG:Ljava/lang/String; = "EnterpriseDeviceManager"

.field public static final UNEXPECTED_ERROR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAPILevelForInternal()I
    .locals 2

    :try_start_0
    const-string v0, "38"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    sget-object v0, Lcom/samsung/android/knox/EdmUtils;->TAG:Ljava/lang/String;

    const-string v1, "Failed parsing API level"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static getCallingUserId(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    return p0

    :cond_1
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method
