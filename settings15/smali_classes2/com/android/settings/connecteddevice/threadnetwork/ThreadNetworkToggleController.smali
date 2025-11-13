.class public final Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 $2\u00020\u00012\u00020\u0002:\u0001$B\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001aH\u0016J\u0008\u0010\u001c\u001a\u00020\u000eH\u0016J\u0008\u0010\u001d\u001a\u00020\u0013H\u0002J\u0018\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;",
        "Lcom/android/settings/core/TogglePreferenceController;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "context",
        "Landroid/content/Context;",
        "key",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "threadController",
        "Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;)V",
        "isThreadSupportedOnDevice",
        "",
        "()Z",
        "preference",
        "Landroidx/preference/Preference;",
        "stateCallback",
        "Landroid/net/thread/ThreadNetworkController$StateCallback;",
        "threadEnabled",
        "displayPreference",
        "",
        "screen",
        "Landroidx/preference/PreferenceScreen;",
        "getAvailabilityStatus",
        "",
        "getSliceHighlightMenuRes",
        "isChecked",
        "newStateCallback",
        "onStateChanged",
        "source",
        "Landroidx/lifecycle/LifecycleOwner;",
        "event",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "setChecked",
        "Companion",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8

.field public static final Companion:Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$Companion;

.field private static final TAG:Ljava/lang/String; = "ThreadNetworkSettings"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private preference:Landroidx/preference/Preference;

.field private final stateCallback:Landroid/net/thread/ThreadNetworkController$StateCallback;

.field private final threadController:Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;

.field private threadEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->Companion:Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "getMainExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.thread_network"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-class v1, Landroid/net/thread/ThreadNetworkManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/thread/ThreadNetworkManager;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/thread/ThreadNetworkManager;->getAllThreadNetworkControllers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/thread/ThreadNetworkController;

    new-instance v2, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkUtils$getThreadNetworkController$1;

    invoke-direct {v2, v1}, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkUtils$getThreadNetworkController$1;-><init>(Landroid/net/thread/ThreadNetworkController;)V

    :goto_0
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->threadController:Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->newStateCallback()Landroid/net/thread/ThreadNetworkController$StateCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->stateCallback:Landroid/net/thread/ThreadNetworkController$StateCallback;

    return-void
.end method

.method public static final synthetic access$getPreference$p(Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->preference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public static final synthetic access$setThreadEnabled$p(Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->threadEnabled:Z

    return-void
.end method

.method private final newStateCallback()Landroid/net/thread/ThreadNetworkController$StateCallback;
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$newStateCallback$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$newStateCallback$1;-><init>(Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;)V

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->preference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417b9

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->threadEnabled:Z

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public final isThreadSupportedOnDevice()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->threadController:Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->threadController:Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->threadController:Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->stateCallback:Landroid/net/thread/ThreadNetworkController$StateCallback;

    invoke-interface {p1, p0}, Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;->unregisterStateCallback(Landroid/net/thread/ThreadNetworkController$StateCallback;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->threadController:Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->stateCallback:Landroid/net/thread/ThreadNetworkController$StateCallback;

    invoke-interface {p1, p2, p0}, Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;->registerStateCallback(Ljava/util/concurrent/Executor;Landroid/net/thread/ThreadNetworkController$StateCallback;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->threadController:Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "enable"

    goto :goto_0

    :cond_2
    const-string v0, "disable"

    :goto_0
    iget-object v2, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->threadController:Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$setChecked$1;

    invoke-direct {v3, v0}, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$setChecked$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, p1, p0, v3}, Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;->setEnabled(ZLjava/util/concurrent/Executor;Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$setChecked$1;)V

    return v1
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
