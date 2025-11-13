.class public Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel;
.super Ljava/lang/Object;
.source "LogoutActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LogoutActionViewModel"


# instance fields
.field private final blacklist mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

.field private final blacklist mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field private blacklist mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0
    .param p1, "samsungGlobalActions"    # Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;
    .param p2, "handlerUtil"    # Lcom/samsung/android/globalactions/util/HandlerUtil;
    .param p3, "logWrapper"    # Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 23
    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 24
    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method synthetic blacklist lambda$onPress$0$com-samsung-android-globalactions-presentation-viewmodel-LogoutActionViewModel()V
    .locals 5

    .line 41
    const-string v0, "LogoutActionViewModel"

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 42
    .local v1, "currentUserID":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 43
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    nop

    .end local v1    # "currentUserID":I
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "npe":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v3, "getCurrentUser() return null"

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 45
    .local v1, "re":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t logout user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .end local v1    # "re":Landroid/os/RemoteException;
    nop

    .line 49
    :goto_0
    return-void
.end method

.method public blacklist onPress()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v1, Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/globalactions/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    .line 51
    return-void
.end method

.method public blacklist setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 35
    return-void
.end method
