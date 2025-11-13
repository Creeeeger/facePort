.class public Landroid/widget/directwriting/DirectWritingServiceBinder;
.super Ljava/lang/Object;
.source "DirectWritingServiceBinder.java"

# interfaces
.implements Landroid/widget/directwriting/DirectWritingBinderCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/directwriting/DirectWritingServiceBinder$Singleton;
    }
.end annotation


# static fields
.field private static final blacklist KEY_VERSION:Ljava/lang/String; = "version"

.field private static final blacklist VALID_VERSION:I = 0x2


# instance fields
.field private blacklist cachedImeOptions:I

.field private blacklist mBounded:Z

.field private blacklist mBoundedRootViewHash:J

.field private final blacklist mCallback:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

.field private final blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

.field private blacklist mRootView:Landroid/view/View;

.field private blacklist mTriggerCallback:Landroid/widget/directwriting/DirectWritingTriggerCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/widget/directwriting/DirectWritingServiceBinder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/widget/directwriting/DirectWritingServiceBinder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerCallback(Landroid/widget/directwriting/DirectWritingServiceBinder;)Landroid/widget/directwriting/DirectWritingTriggerCallback;
    .locals 0

    iget-object p0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mTriggerCallback:Landroid/widget/directwriting/DirectWritingTriggerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBounded(Landroid/widget/directwriting/DirectWritingServiceBinder;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBounded:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRemoteService(Landroid/widget/directwriting/DirectWritingServiceBinder;Landroid/widget/directwriting/IDirectWritingService;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterCallback(Landroid/widget/directwriting/DirectWritingServiceBinder;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->registerCallback()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterCallback(Landroid/widget/directwriting/DirectWritingServiceBinder;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->unregisterCallback()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateConfiguration(Landroid/widget/directwriting/DirectWritingServiceBinder;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->updateConfiguration()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-direct {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mCallback:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->cachedImeOptions:I

    .line 45
    new-instance v0, Landroid/widget/directwriting/DirectWritingServiceBinder$1;

    invoke-direct {v0, p0}, Landroid/widget/directwriting/DirectWritingServiceBinder$1;-><init>(Landroid/widget/directwriting/DirectWritingServiceBinder;)V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mConnection:Landroid/content/ServiceConnection;

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBoundedRootViewHash:J

    return-void
.end method

.method private blacklist getComponentName()Ljava/lang/String;
    .locals 2

    .line 373
    const-string v0, ""

    .line 375
    .local v0, "componentName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    invoke-interface {v1}, Landroid/widget/directwriting/IDirectWritingService;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static blacklist getInstance()Landroid/widget/directwriting/DirectWritingServiceBinder;
    .locals 1

    .line 84
    invoke-static {}, Landroid/widget/directwriting/DirectWritingServiceBinder$Singleton;->-$$Nest$sfgetinstance()Landroid/widget/directwriting/DirectWritingServiceBinder;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isNotBindableApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .line 159
    invoke-static {p1, p2}, Landroid/widget/directwriting/DirectWritingRune;->isNotBindable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist printBinderLog(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRootHash"    # J
    .param p4, "msg"    # Ljava/lang/String;

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ch ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBoundedRootViewHash:J

    .line 441
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rh ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 442
    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cp ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rp ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 444
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBounded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    const-string v1, "[DWL]"

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method private blacklist registerCallback()Z
    .locals 3

    .line 364
    :try_start_0
    const-string v0, "[DWL]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mCallback:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    iget-object v2, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/widget/directwriting/IDirectWritingService;->registerCallback(Landroid/widget/directwriting/IDirectWritingServiceCallback;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist requestBindService(Landroid/content/Context;JLandroid/widget/directwriting/DirectWritingTriggerCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRootHash"    # J
    .param p4, "triggerCallback"    # Landroid/widget/directwriting/DirectWritingTriggerCallback;

    .line 107
    iget-wide v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBoundedRootViewHash:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "bindService already requested"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 110
    return-void

    .line 113
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.honeyboard"

    const-string v3, "com.samsung.android.directwriting.service.DirectWritingService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v1, "version"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mContext:Landroid/content/Context;

    .line 122
    iput-object p4, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mTriggerCallback:Landroid/widget/directwriting/DirectWritingTriggerCallback;

    .line 123
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mCallback:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-virtual {v1, p0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->setBinderCallback(Landroid/widget/directwriting/DirectWritingBinderCallback;)V

    .line 124
    iput-wide p2, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBoundedRootViewHash:J

    .line 126
    const-string v1, "bindService newly requested"

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService failed,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[DWL]"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private blacklist requestRegisterCallback(Landroid/content/Context;J)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRootHash"    # J

    .line 134
    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->getComponentName()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "remoteComponent":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBoundedRootViewHash:J

    cmp-long v1, v1, p2

    if-eqz v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 138
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->registerCallback()Z

    .line 139
    iput-wide p2, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBoundedRootViewHash:J

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService registerCallback called, remote="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 141
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist unregisterCallback()Z
    .locals 3

    .line 385
    :try_start_0
    const-string v0, "[DWL]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterCallback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mCallback:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-interface {v0, v1}, Landroid/widget/directwriting/IDirectWritingService;->unregisterCallback(Landroid/widget/directwriting/IDirectWritingServiceCallback;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 389
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist updateConfiguration()V
    .locals 3

    .line 431
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 432
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    invoke-interface {v1, v0}, Landroid/widget/directwriting/IDirectWritingService;->getConfiguration(Landroid/os/Bundle;)V

    .line 433
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mTriggerCallback:Landroid/widget/directwriting/DirectWritingTriggerCallback;

    invoke-interface {v1, v0}, Landroid/widget/directwriting/DirectWritingTriggerCallback;->updateConfiguration(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "[DWL]"

    const-string v2, "getConfiguration failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist bindAndStart(Landroid/content/Context;Landroid/view/MotionEvent;JLandroid/view/View;Landroid/widget/directwriting/WritingView;Landroid/widget/directwriting/DirectWritingTriggerCallback;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "me"    # Landroid/view/MotionEvent;
    .param p3, "currentViewRootHash"    # J
    .param p5, "rootView"    # Landroid/view/View;
    .param p6, "bindedWritingView"    # Landroid/widget/directwriting/WritingView;
    .param p7, "triggerCallback"    # Landroid/widget/directwriting/DirectWritingTriggerCallback;

    .line 251
    iget-boolean v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBounded:Z

    if-nez v0, :cond_0

    .line 252
    const-string v0, "[DWL]"

    const-string v1, "bindAndStart failed, not bounded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x0

    return v0

    .line 255
    :cond_0
    iput-object p5, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRootView:Landroid/view/View;

    .line 256
    iput-object p7, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mTriggerCallback:Landroid/widget/directwriting/DirectWritingTriggerCallback;

    .line 258
    invoke-virtual {p0, p6}, Landroid/widget/directwriting/DirectWritingServiceBinder;->setBoundedEditText(Landroid/widget/directwriting/WritingView;)Z

    .line 259
    move-object v0, p0

    move-wide v1, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/directwriting/DirectWritingServiceBinder;->onStartRecognition(JLandroid/view/View;Landroid/widget/directwriting/WritingView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 260
    .local v0, "isStarted":Z
    if-nez v0, :cond_1

    .line 261
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->setBoundedEditText(Landroid/widget/directwriting/WritingView;)Z

    .line 263
    :cond_1
    return v0
.end method

.method public blacklist bindService(Landroid/content/Context;JLandroid/widget/directwriting/DirectWritingTriggerCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRootHash"    # J
    .param p4, "triggerCallback"    # Landroid/widget/directwriting/DirectWritingTriggerCallback;

    .line 90
    iget-boolean v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBounded:Z

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService not bounded or root view hash changed this"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/directwriting/DirectWritingServiceBinder;->requestBindService(Landroid/content/Context;JLandroid/widget/directwriting/DirectWritingTriggerCallback;)V

    .line 93
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    if-eqz v0, :cond_1

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/directwriting/DirectWritingServiceBinder;->requestRegisterCallback(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    return-void

    .line 100
    :cond_1
    iput-wide p2, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBoundedRootViewHash:J

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService finished this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 102
    return-void
.end method

.method public blacklist findTriggerEditText(FF)Landroid/widget/directwriting/WritingView;
    .locals 2
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .line 226
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mTriggerCallback:Landroid/widget/directwriting/DirectWritingTriggerCallback;

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0, p1, p2}, Landroid/widget/directwriting/DirectWritingTriggerCallback;->findTriggerEditText(FF)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    return-object v0

    .line 229
    :cond_0
    const-string v0, "[DWL]"

    const-string v1, "findTriggerEditText mTriggerCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBoundedEditText()Landroid/widget/directwriting/WritingView;
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mCallback:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-virtual {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->getEditText()Landroid/widget/directwriting/WritingView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist handleWindowFocusLost(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRootHash"    # J

    .line 147
    iget-wide v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBoundedRootViewHash:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->onWindowFocusLost(Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->setBoundedEditText(Landroid/widget/directwriting/WritingView;)Z

    .line 154
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBoundedRootViewHash:J

    .line 155
    const-string v0, "handleWindowFocusLost done "

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 156
    return-void

    .line 149
    :cond_1
    :goto_0
    const-string v0, "handleWindowFocusLost skipped "

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 150
    return-void
.end method

.method public blacklist isBindableEditText(Landroid/widget/directwriting/WritingView;)Z
    .locals 5
    .param p1, "writingView"    # Landroid/widget/directwriting/WritingView;

    .line 206
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 207
    :try_start_0
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mCallback:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-virtual {v1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->getEditText()Landroid/widget/directwriting/WritingView;

    move-result-object v1

    .line 208
    .local v1, "prevTriggeredEditText":Landroid/widget/directwriting/WritingView;
    iget-object v2, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mCallback:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-virtual {v2, p1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->setEditTextIfNeeded(Landroid/widget/directwriting/WritingView;)V

    .line 209
    iget-object v2, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRootView:Landroid/view/View;

    invoke-static {p1, v2}, Landroid/widget/directwriting/DirectWritingBundleUtil;->buildBundle(Landroid/widget/directwriting/WritingView;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v2

    .line 210
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "onlyRectChanged"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    const-string/jumbo v3, "onlyCheckCanBind"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    iget-object v3, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    invoke-interface {v3, v2}, Landroid/widget/directwriting/IDirectWritingService;->onBoundedEditTextChanged(Landroid/os/Bundle;)Z

    move-result v3

    .line 213
    .local v3, "isBindable":Z
    iget-object v4, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mCallback:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-virtual {v4, v1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->setEditTextIfNeeded(Landroid/widget/directwriting/WritingView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    return v3

    .line 217
    .end local v1    # "prevTriggeredEditText":Landroid/widget/directwriting/WritingView;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "isBindable":Z
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    return v0

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return v0
.end method

.method public blacklist isBounded()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBounded:Z

    return v0
.end method

.method public blacklist isHoverIconShowing()Z
    .locals 1

    .line 240
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mTriggerCallback:Landroid/widget/directwriting/DirectWritingTriggerCallback;

    invoke-interface {v0}, Landroid/widget/directwriting/DirectWritingTriggerCallback;->isHoverIconShowing()Z

    move-result v0

    return v0
.end method

.method public blacklist onBoundedEditTextChanged(Landroid/widget/directwriting/WritingView;)V
    .locals 3
    .param p1, "writingView"    # Landroid/widget/directwriting/WritingView;

    .line 191
    if-eqz p1, :cond_0

    .line 192
    :try_start_0
    const-string v0, "[DWL]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBoundedEditTextChanged et="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRootView:Landroid/view/View;

    .line 194
    invoke-static {p1, v1}, Landroid/widget/directwriting/DirectWritingBundleUtil;->buildBundle(Landroid/widget/directwriting/WritingView;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    .line 193
    invoke-interface {v0, v1}, Landroid/widget/directwriting/IDirectWritingService;->onBoundedEditTextChanged(Landroid/os/Bundle;)Z

    move-result v0

    .line 195
    .local v0, "isChanged":Z
    if-nez v0, :cond_0

    .line 196
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->setBoundedEditText(Landroid/widget/directwriting/WritingView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v0    # "isChanged":Z
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 202
    :goto_1
    return-void
.end method

.method public blacklist onBoundedEditTextRectChanged(Landroid/widget/directwriting/WritingView;)V
    .locals 3
    .param p1, "writingView"    # Landroid/widget/directwriting/WritingView;

    .line 174
    if-eqz p1, :cond_0

    .line 175
    :try_start_0
    const-string v0, "[DWL]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBoundedEditTextRectChanged et="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRootView:Landroid/view/View;

    const/4 v2, 0x1

    .line 177
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/widget/directwriting/DirectWritingBundleUtil;->buildBundle(Landroid/widget/directwriting/WritingView;Landroid/view/View;Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v1

    .line 176
    invoke-interface {v0, v1}, Landroid/widget/directwriting/IDirectWritingService;->onBoundedEditTextChanged(Landroid/os/Bundle;)Z

    move-result v0

    .line 178
    .local v0, "isChanged":Z
    if-nez v0, :cond_0

    .line 179
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->setBoundedEditText(Landroid/widget/directwriting/WritingView;)Z

    .line 182
    .end local v0    # "isChanged":Z
    :cond_0
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mTriggerCallback:Landroid/widget/directwriting/DirectWritingTriggerCallback;

    invoke-interface {v0}, Landroid/widget/directwriting/DirectWritingTriggerCallback;->updateTriggerEditText()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist onDispatchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "rootView"    # Landroid/view/View;

    .line 299
    :try_start_0
    iput-object p2, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRootView:Landroid/view/View;

    .line 300
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    invoke-static {p1, p2}, Landroid/widget/directwriting/DirectWritingBundleUtil;->buildBundle(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/directwriting/IDirectWritingService;->onDispatchEvent(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist onEditTextActionModeStarted()V
    .locals 2

    .line 402
    iget-boolean v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBounded:Z

    if-nez v0, :cond_0

    .line 403
    const-string v0, "[DWL]"

    const-string/jumbo v1, "onEditTextActionModeStarted not executed, not bounded"

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void

    .line 407
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/directwriting/IDirectWritingService;->onEditTextActionModeStarted(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist onFinishRecognition()V
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mTriggerCallback:Landroid/widget/directwriting/DirectWritingTriggerCallback;

    invoke-interface {v0}, Landroid/widget/directwriting/DirectWritingTriggerCallback;->onFinishRecognition()V

    .line 236
    return-void
.end method

.method public blacklist onFinishWriting()V
    .locals 2

    .line 317
    iget-boolean v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBounded:Z

    const-string v1, "[DWL]"

    if-nez v0, :cond_0

    .line 318
    const-string/jumbo v0, "onFinishWriting not executed, not bounded"

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void

    .line 321
    :cond_0
    const-string/jumbo v0, "onFinishWriting"

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->onEditTextActionModeStarted()V

    .line 323
    return-void
.end method

.method public blacklist onStartRecognition(JLandroid/view/View;Landroid/widget/directwriting/WritingView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "viewRootHash"    # J
    .param p3, "rootView"    # Landroid/view/View;
    .param p4, "writingView"    # Landroid/widget/directwriting/WritingView;
    .param p5, "me"    # Landroid/view/MotionEvent;

    .line 271
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "onStartRecognition started"

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 274
    :try_start_0
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    .line 275
    invoke-static {p5, p4, p3}, Landroid/widget/directwriting/DirectWritingBundleUtil;->buildBundle(Landroid/view/MotionEvent;Landroid/widget/directwriting/WritingView;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    .line 274
    invoke-interface {v0, v1}, Landroid/widget/directwriting/IDirectWritingService;->onStartRecognition(Landroid/os/Bundle;)Z

    move-result v0

    .line 277
    .local v0, "isStarted":Z
    iget v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->cachedImeOptions:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 278
    invoke-virtual {p0, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->onUpdateImeOptions(I)V

    .line 279
    iput v2, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->cachedImeOptions:I

    .line 282
    :cond_0
    iput-object p3, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRootView:Landroid/view/View;

    .line 283
    iput-wide p1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBoundedRootViewHash:J

    .line 284
    invoke-static {p4, v0}, Landroid/widget/directwriting/DirectWritingCompat;->setSkipHoverCursorChange(Landroid/widget/directwriting/WritingView;Z)V

    .line 285
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStartRecognition requested, isStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 287
    if-nez v0, :cond_1

    .line 288
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/widget/directwriting/DirectWritingCompat;->overrideDirectWritingFlag(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_1
    return v0

    .line 291
    .end local v0    # "isStarted":Z
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist onStopRecognition(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "rootView"    # Landroid/view/View;

    .line 308
    :try_start_0
    iput-object p2, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRootView:Landroid/view/View;

    .line 309
    invoke-virtual {p0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->getBoundedEditText()Landroid/widget/directwriting/WritingView;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/directwriting/DirectWritingBundleUtil;->buildBundle(Landroid/view/MotionEvent;Landroid/widget/directwriting/WritingView;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    .line 310
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    invoke-interface {v1, v0}, Landroid/widget/directwriting/IDirectWritingService;->onStopRecognition(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    nop

    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist onUpdateImeOptions(I)V
    .locals 2
    .param p1, "imeOptions"    # I

    .line 414
    iget-boolean v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBounded:Z

    if-nez v0, :cond_0

    .line 415
    const-string v0, "[DWL]"

    const-string/jumbo v1, "onUpdateImeOptions not executed, service not bounded"

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iput p1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->cachedImeOptions:I

    .line 417
    return-void

    .line 420
    :cond_0
    if-eqz v0, :cond_1

    :try_start_0
    iget v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->cachedImeOptions:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 421
    iput v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->cachedImeOptions:I

    .line 423
    :cond_1
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/IDirectWritingService;->onUpdateImeOptions(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist onWindowFocusLost(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 395
    :try_start_0
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRemoteService:Landroid/widget/directwriting/IDirectWritingService;

    invoke-interface {v0, p1}, Landroid/widget/directwriting/IDirectWritingService;->onWindowFocusLost(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 399
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setBoundedEditText(Landroid/widget/directwriting/WritingView;)Z
    .locals 1
    .param p1, "writingView"    # Landroid/widget/directwriting/WritingView;

    .line 163
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mCallback:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-virtual {v0, p1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->setBoundedEditText(Landroid/widget/directwriting/WritingView;)Z

    move-result v0

    return v0
.end method

.method public blacklist stopService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.honeyboard"

    const-string v3, "com.samsung.android.directwriting.service.DirectWritingService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 360
    return-void
.end method

.method public blacklist unbindService(Landroid/content/Context;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRootHash"    # J

    .line 326
    const-string/jumbo v0, "unbindService, no need to bind"

    invoke-direct {p0, p1, v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->isNotBindableApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    return-void

    .line 330
    :cond_0
    iget-boolean v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBounded:Z

    if-nez v0, :cond_1

    .line 331
    const-string/jumbo v0, "unbindService - already unbounded"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 332
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_2

    .line 336
    const-string/jumbo v0, "unbindService - context is different."

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 337
    return-void

    .line 340
    :cond_2
    const-string/jumbo v0, "unbindService started"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 342
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mBounded:Z

    .line 343
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mRootView:Landroid/view/View;

    .line 345
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mCallback:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-virtual {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->onFinishRecognition()V

    .line 346
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 347
    const-string/jumbo v0, "unbindService success"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindService failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[DWL]"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string/jumbo v1, "unbindService failed or tried to unbind with not bounded context"

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 352
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const-string/jumbo v0, "unbindService finish"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 353
    return-void
.end method
