.class public Lcom/samsung/android/knox/profile/ProfilePolicy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final KNOX_PROFILE_POLICY_UPDATE:Ljava/lang/String; = "com.samsung.android.knox.profilepolicy.intent.action.update"

.field public static final RESTRICTION_PROPERTY_CALENDAR_SHARE_TO_OWNER:Ljava/lang/String; = "restriction_property_calendar_share_to_owner"

.field public static final RESTRICTION_PROPERTY_MOVE_FILES_TO_OWNER:Ljava/lang/String; = "restriction_property_move_files_to_owner"

.field public static final RESTRICTION_PROPERTY_MOVE_FILES_TO_PROFILE:Ljava/lang/String; = "restriction_property_move_files_to_profile"

.field public static final RESTRICTION_PROPERTY_SCREENCAPTURE_SAVE_TO_OWNER:Ljava/lang/String; = "restriction_property_screencapture_save_to_owner"

.field public static final USER_ID_WORK_PROFILE:I = -0x1


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

.field public mUserId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ProfilePolicy"

    iput-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    iget-object v1, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getService()Lcom/samsung/android/knox/profile/IProfilePolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ProfilePolicy"

    iput-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getService()Lcom/samsung/android/knox/profile/IProfilePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput p2, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    return-void
.end method


# virtual methods
.method public getRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProfilePolicy.getPORestrictionPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    const-string v0, "ProfilePolicy"

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const-string p0, " Profile policy is not yet ready!!! false"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/profile/IProfilePolicy;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed talking with ProfilePolicy service: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getRestriction(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProfilePolicy.getPORestrictionPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    const-string v1, "ProfilePolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string p0, " Profile policy is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/profile/IProfilePolicy;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with ProfilePolicy service: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public final getService()Lcom/samsung/android/knox/profile/IProfilePolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "profilepolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/profile/IProfilePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/profile/IProfilePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    return-object p0
.end method

.method public setRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProfilePolicy.setPORestrictionPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setRestriction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    const-string v2, "ProfilePolicy"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    return v3

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    if-nez p0, :cond_1

    const-string p0, " Profile policy is not yet ready!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/profile/IProfilePolicy;->setRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed talking with ProfilePolicy service: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3
.end method

.method public setRestriction(Ljava/lang/String;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProfilePolicy.setPORestrictionPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setRestriction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    const-string v2, "ProfilePolicy"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    if-nez v0, :cond_1

    const-string p0, " Profile policy is not yet ready!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/profile/IProfilePolicy;->setRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed talking with ProfilePolicy service: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v3
.end method
