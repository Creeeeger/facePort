.class public Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTION_FINISH_FROM_TRAMPOLINE:Ljava/lang/String;

.field public static final APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

.field public static final EXTRA_CALLING_PACKAGE_NAME:Ljava/lang/String;

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String;

.field public static final EXTRA_SCREENSHOT_URI:Ljava/lang/String;


# instance fields
.field public final mAppClipsServiceConnector:Lcom/android/internal/infra/ServiceConnector;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public mKillAppClipsBroadcastIntent:Landroid/content/Intent;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNoteTaskController:Lcom/android/systemui/notetask/NoteTaskController;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mResultReceiver:Landroid/os/ResultReceiver;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AppClipsTrampolineActivity"

    const-string v1, "SCREENSHOT_URI"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_SCREENSHOT_URI:Ljava/lang/String;

    const-string v1, "FINISH_FROM_TRAMPOLINE"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->ACTION_FINISH_FROM_TRAMPOLINE:Ljava/lang/String;

    const-string v1, "RESULT_RECEIVER"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_RESULT_RECEIVER:Ljava/lang/String;

    const-string v1, "CALLING_PACKAGE_NAME"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_CALLING_PACKAGE_NAME:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/notetask/NoteTaskController;Landroid/content/pm/PackageManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/broadcast/BroadcastSender;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 6

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mNoteTaskController:Lcom/android/systemui/notetask/NoteTaskController;

    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p5, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p6, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$AppClipsResultReceiver;

    invoke-direct {p2, p0, p8}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$AppClipsResultReceiver;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;Landroid/os/Handler;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p3, p4}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p2, p3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/ResultReceiver;

    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    new-instance p2, Lcom/android/internal/infra/ServiceConnector$Impl;

    new-instance v2, Landroid/content/Intent;

    const-class p3, Lcom/android/systemui/screenshot/appclips/AppClipsService;

    invoke-direct {v2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const v3, 0x40000021    # 2.0000079f

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    iput-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mAppClipsServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/infra/ServiceConnector;Lcom/android/systemui/notetask/NoteTaskController;Landroid/content/pm/PackageManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/broadcast/BroadcastSender;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Lcom/android/internal/statusbar/IAppClipsService;",
            ">;",
            "Lcom/android/systemui/notetask/NoteTaskController;",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/broadcast/BroadcastSender;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mAppClipsServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    iput-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mNoteTaskController:Lcom/android/systemui/notetask/NoteTaskController;

    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p5, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p6, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$AppClipsResultReceiver;

    invoke-direct {p1, p0, p8}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$AppClipsResultReceiver;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;Landroid/os/Handler;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public getResultReceiverForTest()Landroid/os/ResultReceiver;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    return-object p0
.end method

.method public final logScreenshotTriggeredUiEvent(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    iget-object v2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t find notes app UID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppClipsTrampolineActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;->SCREENSHOT_FOR_NOTE_TRIGGERED:Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    invoke-interface {p0, v1, v0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mUserHandle:Landroid/os/UserHandle;

    iget-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mKillAppClipsBroadcastIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast$1(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final setErrorResultAndFinish(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.CAPTURE_CONTENT_FOR_NOTE_STATUS_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
