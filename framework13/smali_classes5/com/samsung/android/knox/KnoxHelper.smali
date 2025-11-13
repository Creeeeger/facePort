.class public Lcom/samsung/android/knox/KnoxHelper;
.super Ljava/lang/Object;
.source "KnoxHelper.java"


# static fields
.field private static greylist DEBUG:Z = false

.field private static final greylist SEC_DESKTOP_LAUNCHER_PACKGE_NAME:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final greylist SEC_LAUNCHER_PACKGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field static final greylist TAG:Ljava/lang/String; = "KnoxHelper"

.field private static final greylist filterSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor greylist <clinit>()V
    .locals 3

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/knox/KnoxHelper;->DEBUG:Z

    .line 39
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.samsung.android.knox.containeragent.switcher.PhoneIcon"

    const-string v2, "com.samsung.android.knox.containeragent.switcher.SwitchToPersonalIcon"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/knox/KnoxHelper;->filterSet:Ljava/util/Set;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist convertToActivityList(Landroid/content/Context;Landroid/content/pm/ParceledListSlice;Landroid/os/UserHandle;Z)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "needFilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/LauncherActivityInfoInternal;",
            ">;",
            "Landroid/os/UserHandle;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 47
    .local p1, "internals":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/LauncherActivityInfoInternal;>;"
    if-nez p1, :cond_0

    .line 48
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const-string v1, "KnoxHelper"

    if-eqz v0, :cond_2

    .line 52
    sget-boolean v0, Lcom/samsung/android/knox/KnoxHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertToActivityList "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    sget-object v0, Lcom/samsung/android/knox/KnoxHelper;->filterSet:Ljava/util/Set;

    const-string v2, "com.samsung.android.knox.containeragent.switcher.SMSIcon"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v2, "com.samsung.android.knox.containeragent.switcher.GlobalSettingsIcon"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_2
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, "configAS":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v2, "lais":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/LauncherActivityInfo;>;"
    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 64
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    .line 69
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 70
    .local v4, "internal":Landroid/content/pm/LauncherActivityInfoInternal;
    if-eqz p3, :cond_4

    sget-object v5, Lcom/samsung/android/knox/KnoxHelper;->filterSet:Ljava/util/Set;

    .line 71
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfoInternal;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 72
    goto :goto_0

    .line 74
    :cond_4
    invoke-static {p0, p2, v4}, Landroid/content/pm/LauncherApps;->getLauncherActivityInfo(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/pm/LauncherActivityInfoInternal;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v5

    .line 75
    .local v5, "lai":Landroid/content/pm/LauncherActivityInfo;
    sget-boolean v6, Lcom/samsung/android/knox/KnoxHelper;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Returning activity for profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 77
    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v4    # "internal":Landroid/content/pm/LauncherActivityInfoInternal;
    .end local v5    # "lai":Landroid/content/pm/LauncherActivityInfo;
    goto :goto_0

    .line 81
    :cond_6
    return-object v2
.end method

.method private static greylist convertToActivityList(Landroid/content/Context;Landroid/content/pm/ParceledListSlice;Landroid/os/UserHandle;ZLjava/util/List;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "needFilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/LauncherActivityInfoInternal;",
            ">;",
            "Landroid/os/UserHandle;",
            "Z",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 87
    .local p1, "internals":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/LauncherActivityInfoInternal;>;"
    .local p4, "cList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez p1, :cond_0

    .line 88
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const-string v1, "convertToActivityList "

    const-string v2, "KnoxHelper"

    if-eqz v0, :cond_2

    .line 92
    sget-boolean v0, Lcom/samsung/android/knox/KnoxHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    sget-object v0, Lcom/samsung/android/knox/KnoxHelper;->filterSet:Ljava/util/Set;

    const-string v3, "com.samsung.android.knox.containeragent.switcher.SMSIcon"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v3, "com.samsung.android.knox.containeragent.switcher.GlobalSettingsIcon"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "lais":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 101
    .local v4, "internal":Landroid/content/pm/LauncherActivityInfoInternal;
    if-eqz p3, :cond_3

    sget-object v5, Lcom/samsung/android/knox/KnoxHelper;->filterSet:Ljava/util/Set;

    .line 102
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfoInternal;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 103
    goto :goto_0

    .line 106
    :cond_3
    const-string v5, " : "

    if-eqz p4, :cond_7

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 107
    const/4 v6, 0x1

    .line 108
    .local v6, "needToSkip":Z
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 109
    .local v8, "cName":Landroid/content/ComponentName;
    sget-boolean v9, Lcom/samsung/android/knox/KnoxHelper;->DEBUG:Z

    if-eqz v9, :cond_4

    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 111
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfoInternal;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".equals():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfoInternal;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 110
    invoke-static {v2, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_4
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfoInternal;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 114
    const/4 v6, 0x0

    .line 115
    goto :goto_2

    .line 117
    .end local v8    # "cName":Landroid/content/ComponentName;
    :cond_5
    goto :goto_1

    .line 119
    :cond_6
    :goto_2
    if-eqz v6, :cond_7

    .line 120
    goto/16 :goto_0

    .line 123
    .end local v6    # "needToSkip":Z
    :cond_7
    invoke-static {p0, p2, v4}, Landroid/content/pm/LauncherApps;->getLauncherActivityInfo(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/pm/LauncherActivityInfoInternal;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v6

    .line 124
    .local v6, "lai":Landroid/content/pm/LauncherActivityInfo;
    sget-boolean v7, Lcom/samsung/android/knox/KnoxHelper;->DEBUG:Z

    if-eqz v7, :cond_8

    .line 125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Returning activity for profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 126
    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_8
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v4    # "internal":Landroid/content/pm/LauncherActivityInfoInternal;
    .end local v6    # "lai":Landroid/content/pm/LauncherActivityInfo;
    goto/16 :goto_0

    .line 130
    :cond_9
    return-object v0
.end method

.method public static greylist getActivityList(Landroid/content/Context;Landroid/content/pm/ILauncherApps;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ILauncherApps;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ILauncherApps;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "needFilter":Z
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 138
    .local v1, "callingUid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActivityList callingUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KnoxHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const-string/jumbo v2, "source and target users are different, and caller is knox container or target user is for secure folder, so request cannot be granted!"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v2

    .line 147
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, p2, p3}, Landroid/content/pm/ILauncherApps;->getLauncherActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, p3, v3}, Lcom/samsung/android/knox/KnoxHelper;->convertToActivityList(Landroid/content/Context;Landroid/content/pm/ParceledListSlice;Landroid/os/UserHandle;Z)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "re":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method
