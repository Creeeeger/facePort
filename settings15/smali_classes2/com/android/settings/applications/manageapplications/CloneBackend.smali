.class public final Lcom/android/settings/applications/manageapplications/CloneBackend;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/android/settings/applications/manageapplications/CloneBackend;


# instance fields
.field public mCloneUserId:I

.field public mContext:Landroid/content/Context;


# direct methods
.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/manageapplications/CloneBackend;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/manageapplications/CloneBackend;->sInstance:Lcom/android/settings/applications/manageapplications/CloneBackend;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/applications/manageapplications/CloneBackend;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/android/settings/applications/manageapplications/CloneBackend;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->getCloneUserId(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Lcom/android/settings/applications/manageapplications/CloneBackend;->mCloneUserId:I

    sput-object v0, Lcom/android/settings/applications/manageapplications/CloneBackend;->sInstance:Lcom/android/settings/applications/manageapplications/CloneBackend;

    :cond_0
    sget-object p0, Lcom/android/settings/applications/manageapplications/CloneBackend;->sInstance:Lcom/android/settings/applications/manageapplications/CloneBackend;

    return-object p0
.end method


# virtual methods
.method public final installCloneApp(Ljava/lang/String;)I
    .locals 10

    const-string v0, "cloneUser"

    iget v1, p0, Lcom/android/settings/applications/manageapplications/CloneBackend;->mCloneUserId:I

    const-string v2, "CloneBackend"

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/CloneBackend;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const/4 v5, 0x1

    :try_start_0
    const-string v6, "android.os.usertype.profile.CLONE"

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/UserManager;->createProfile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/CloneBackend;->mCloneUserId:I

    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Created clone user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/applications/manageapplications/CloneBackend;->mCloneUserId:I

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    iput v4, p0, Lcom/android/settings/applications/manageapplications/CloneBackend;->mCloneUserId:I

    goto :goto_0

    :catch_0
    move-exception p0

    sget-boolean p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error occurred creating clone user"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    return v5

    :cond_2
    :goto_0
    move v5, v3

    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/settings/applications/manageapplications/CloneBackend;->mCloneUserId:I

    const-string v1, "Package "

    if-lez v0, :cond_8

    if-eqz v5, :cond_5

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    :try_start_1
    iget v4, p0, Lcom/android/settings/applications/manageapplications/CloneBackend;->mCloneUserId:I

    invoke-interface {v0, v4}, Landroid/app/IActivityManager;->startProfile(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    sget-boolean p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error starting clone user "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    :goto_2
    const/4 v0, 0x3

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget v6, p0, Lcom/android/settings/applications/manageapplications/CloneBackend;->mCloneUserId:I

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/high16 v7, 0x400000

    move-object v5, p1

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v4, -0x3

    if-ne p0, v4, :cond_8

    sget-boolean p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, " doesn\'t exist."

    invoke-static {v1, p1, p0, v2}, Landroidx/compose/ui/text/SaversKt$LocaleSaver$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v0

    :catch_2
    move-exception p0

    sget-boolean v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "Error installing package"

    const-string v3, " in clone user."

    invoke-static {v1, p1, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v0

    :cond_8
    sget-boolean p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz p0, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cloned successfully."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v3
.end method
