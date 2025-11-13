.class public Lcom/samsung/android/settings/cube/CubeInteractionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CubeInteractionActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CubeInteractionActivity"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPendingControlData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->mLock:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->mPendingControlData:Ljava/util/List;

    return-void
.end method

.method private createPreferenceController(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 1

    .line 130
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 135
    invoke-static {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getControlValue(Landroid/os/Bundle;)Lcom/samsung/android/settings/cube/ControlValue;
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    .line 94
    sget-object p1, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->TAG:Ljava/lang/String;

    const-string v0, "performControl() extra is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const-string v0, "controllerName"

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-object p1, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->TAG:Ljava/lang/String;

    const-string v0, "controllerName is empty"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    const-string v0, "controlData"

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    sget-object p1, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->TAG:Ljava/lang/String;

    const-string v0, "controlData is empty"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_2
    const-string v1, "controlId"

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    sget-object p1, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->TAG:Ljava/lang/String;

    const-string v0, "controlId is empty"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 116
    :cond_3
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 117
    const-class v2, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;

    if-nez v0, :cond_4

    .line 120
    sget-object p1, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->TAG:Ljava/lang/String;

    const-string v0, "controlValueWrapper is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 124
    :cond_4
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/cube/ControlValue$ControlValueWrapper;->buildControlValue(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized performControl(Landroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->getControlValue(Landroid/os/Bundle;)Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    sget-object p1, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->TAG:Ljava/lang/String;

    const-string v0, "controlValue is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->notifyInteractionFinished()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "controllerName"

    .line 82
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->createPreferenceController(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p1

    .line 83
    invoke-virtual {p1, v0}, Lcom/android/settings/core/BasePreferenceController;->setControlId(Lcom/samsung/android/settings/cube/ControlValue;)V

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getTypedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 86
    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    if-nez v1, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->notifyInteractionFinished()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public notifyInteractionFinished()I
    .locals 3

    .line 141
    sget-object v0, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyInteractionFinished() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->mPendingControlData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->mPendingControlData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->mPendingControlData:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 148
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 151
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->performControl(Landroid/os/Bundle;)V

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 156
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->mPendingControlData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 148
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 41
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 42
    invoke-static {}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->getInstance()Lcom/samsung/android/settings/cube/CubeCallbackManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->registerInteractionActivity(Lcom/samsung/android/settings/cube/CubeInteractionActivity;)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->performControl(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->mPendingControlData:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected onResume()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
