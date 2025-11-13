.class public Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/bixby2/interactor/ActionInteractor;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mAppController:Lcom/android/systemui/bixby2/controller/AppController;

.field private final mContext:Landroid/content/Context;

.field private mGson:Lcom/google/gson/Gson;

.field private final mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;


# direct methods
.method public static synthetic $r8$lambda$K0OvCexg3oy6YxhtuC5EH1EiNIQ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->lambda$matchAction$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/AppController;Lcom/android/systemui/bixby2/controller/MWBixbyController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AppControlActionInteractor"

    iput-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->TAG:Ljava/lang/String;

    const-string v1, "AppControlActionInteractor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->isSystem()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p3, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    invoke-virtual {p3, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->initSplitScreenController(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    goto :goto_0

    :cond_0
    const-string p1, "init in non-system user."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    :goto_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method private getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "result"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "description"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getResponseCode(Ljava/lang/String;)I
    .locals 0

    const-string/jumbo p0, "success"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method private isCheckAction(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_orientation:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isJsonParameterAction(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->start_multiwindow:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_mostrecent_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_multiple_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->startapp_splitposition:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->exchange_position_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->change_layout_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->replaceapp_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->maximize_app:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_specificapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isLoadStatefulMultiWindowCommand(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splitstate:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->get_packageinsplit:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splittype:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_launchervisible:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSimpleAction(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_foreground_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->open_recentsapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_currentapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$matchAction$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private loadStatefulMultiWindowCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/command/template/CommandTemplate;
    .locals 3

    const-string v0, "loadStatefulMultiWindowCommand  actionName="

    const-string v1, "AppControlActionInteractor"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splitstate:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSplitState()Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->get_packageinsplit:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getPackageInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getPackageNameInSplit(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splittype:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSupportMultiSplit()Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_launchervisible:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkTopFullscreenHomeOrRecents()Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getPackageInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSupportMultiWindow(Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    goto :goto_0

    :cond_5
    move-object p0, v2

    :goto_0
    if-nez p0, :cond_6

    return-object v2

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "responseMessage: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    iget-object p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private matchAction(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private performMultiWindowCommandAction(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/bixby2/CommandActionResponse;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getPackageInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->start_multiwindow:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startMultiWindow(Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->getResponseCode(Ljava/lang/String;)I

    move-result p0

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSupportMultiWindow(Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    iget-object p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->startapp_splitposition:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startAppSplitPosition(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->getResponseCode(Ljava/lang/String;)I

    move-result p0

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->exchange_position_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->exchangePositionOfSplitScreen(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->getResponseCode(Ljava/lang/String;)I

    move-result p0

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->change_layout_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->changeLayoutOfSplitScreen(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->getResponseCode(Ljava/lang/String;)I

    move-result p0

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->replaceapp_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->replaceAppOfSplitScreen(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->getResponseCode(Ljava/lang/String;)I

    move-result p0

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->maximize_app:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->maximizeApp(Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->getResponseCode(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splittype:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSupportMultiSplit()Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    iget-object p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splitstate:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSplitState()Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    iget-object p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_launchervisible:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkTopFullscreenHomeOrRecents()Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    iget-object p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->get_packageinsplit:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getPackageNameInSplit(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    iget-object p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    goto :goto_0

    :cond_b
    const/4 p1, 0x0

    move p0, v1

    :goto_0
    if-eqz p0, :cond_c

    iput p0, p3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iput-object p1, p3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_c
    return v1
.end method


# virtual methods
.method public getSupportingActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;)Lcom/samsung/android/sdk/command/Command;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v0, "loadStateful in AppContorlActionInteractor action="

    const-string v2, "AppControlActionInteractor"

    invoke-static {v0, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isLoadStatefulMultiWindowCommand(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->loadStatefulMultiWindowCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object p0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isCheckAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/AppController;->checkOrientation()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Portrait"

    goto :goto_0

    :cond_1
    const-string p0, "Landscape"

    :goto_0
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p1, v3, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "responseMessage: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    iget-object p1, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isJsonParameterAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance p1, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "JSONException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isSimpleAction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    goto :goto_2

    :cond_4
    :goto_1
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_5

    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v3, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    iput-object p0, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
    .locals 5

    const-string v0, "loadStateful in AppContorlActionInteractor(with CommandAction) action="

    const-string v1, "AppControlActionInteractor"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->get_packageinsplit:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isLoadStatefulMultiWindowCommand(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->loadStatefulMultiWindowCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object p0

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isCheckAction(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/AppController;->checkOrientation()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Portrait"

    goto :goto_0

    :cond_2
    const-string p0, "Landscape"

    :goto_0
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p1, v2, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "responseMessage: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    iget-object p1, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isJsonParameterAction(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance p1, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "JSONException: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isSimpleAction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    goto :goto_2

    :cond_5
    :goto_1
    move-object p0, v3

    :goto_2
    if-eqz p0, :cond_6

    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    iput-object p0, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object v3

    :cond_6
    return-object v3

    :cond_7
    :goto_3
    invoke-virtual {p3}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result v0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_8

    move-object p3, v3

    goto :goto_4

    :cond_8
    check-cast p3, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "newJSONStringValue = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    invoke-static {v0, p3, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->loadStatefulMultiWindowCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object p0

    if-eqz p0, :cond_9

    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    iput-object p0, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object v3

    :cond_9
    return-object v3
.end method

.method public performCommandActionInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    .locals 12

    new-instance v0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 v1, 0x1

    const-string/jumbo v2, "success"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string v3, "perform in AppContorlActionInteractor  actionName = "

    const-string v4, ", actionType = "

    invoke-static {v3, p1, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppControlActionInteractor"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result v3

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v3, v5, :cond_1

    const-string p2, "invalid_action"

    move-object v3, p2

    move v5, v6

    move-object p2, v7

    goto :goto_0

    :cond_1
    check-cast p2, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "newJSONStringValue = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    invoke-static {v3, p2, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    move-object v3, v2

    :goto_0
    sget-object v8, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "NotInstalled"

    if-eqz v8, :cond_6

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bixby2/controller/AppController;->checkInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_1
    move v1, v6

    move-object v2, v9

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bixby2/controller/AppController;->launchApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/AppController;->isFolderClosed()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/AppController;->getPackageNameFromPdss(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/systemui/bixby2/controller/AppController;->checkSettingsCoverLauncher(Landroid/content/Context;)Z

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bixby2/controller/AppController;->checkIncludeCoverLauncher(Ljava/lang/String;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/AppController;->checkAvailableCoverLauncher(Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_3

    const-string v2, "NotIncludeCoverLauncherAppList"

    goto/16 :goto_4

    :cond_3
    if-nez p2, :cond_4

    const-string v2, "SetOffCoverLauncher"

    goto/16 :goto_4

    :cond_4
    if-nez p0, :cond_1a

    const-string v2, "NotAvailableCoverLauncherWidget"

    goto/16 :goto_4

    :cond_5
    move-object v2, v3

    :goto_2
    move v1, v6

    goto/16 :goto_4

    :cond_6
    sget-object v8, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bixby2/controller/AppController;->checkInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/bixby2/controller/AppController;->removeSearchedTask(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto/16 :goto_4

    :cond_8
    sget-object v8, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_currentapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "NoAppClose"

    const-string v11, "DexMode"

    if-eqz v8, :cond_b

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/AppController;->isDexMode()Z

    move-result p1

    if-eqz p1, :cond_9

    :goto_3
    move v1, v6

    move-object v2, v11

    goto/16 :goto_4

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v1, v7}, Lcom/android/systemui/bixby2/controller/AppController;->removeAllTasks(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto/16 :goto_4

    :cond_a
    move v1, v6

    move-object v2, v10

    goto/16 :goto_4

    :cond_b
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_specificapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    iget-object v3, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p2}, Lcom/android/systemui/bixby2/controller/AppController;->checkInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/AppController;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    iget-object v3, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p2, p1}, Lcom/android/systemui/bixby2/controller/AppController;->checkRunningInRecents(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/systemui/bixby2/controller/AppController;->removeAllTasks(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto/16 :goto_4

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "notRunningPackageList = "

    invoke-static {p0, v2, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/AppController;->removeAllTasks(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto/16 :goto_4

    :cond_10
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_foreground_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/AppController;->removeFocusedTask(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto/16 :goto_4

    :cond_11
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->open_recentsapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/AppController;->openRecentsApp(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto/16 :goto_4

    :cond_12
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_mostrecent_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/AppController;->isDexMode()Z

    move-result p1

    if-eqz p1, :cond_13

    goto/16 :goto_3

    :cond_13
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/systemui/bixby2/controller/AppController;->startNavigationApp(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/bixby2/CommandActionResponse;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget v1, v0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iget-object v2, v0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    goto :goto_4

    :cond_14
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_multiple_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/AppController;->isDexMode()Z

    move-result p1

    if-eqz p1, :cond_15

    goto/16 :goto_3

    :cond_15
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/bixby2/controller/AppController;->removeNavigationApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_16
    sget-object v2, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_orientation:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/AppController;->checkOrientation()Z

    move-result p0

    if-eqz p0, :cond_17

    const-string v2, "Portrait"

    goto :goto_4

    :cond_17
    const-string v2, "Landscape"

    goto :goto_4

    :cond_18
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->performMultiWindowCommandAction(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/bixby2/CommandActionResponse;)Z

    move-result p0

    if-eqz p0, :cond_19

    iget v1, v0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iget-object v2, v0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    goto :goto_4

    :cond_19
    move-object v2, v3

    move v1, v5

    :cond_1a
    :goto_4
    if-eqz p3, :cond_1b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "responseCode = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", responseMessage = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    invoke-virtual {p3, v1, v2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    :cond_1b
    return-void
.end method
