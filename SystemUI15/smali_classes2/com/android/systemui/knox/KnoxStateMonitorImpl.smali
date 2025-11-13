.class public final Lcom/android/systemui/knox/KnoxStateMonitorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/knox/KnoxStateMonitor;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mBroadCastReceiver:Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

.field public final mContext:Landroid/content/Context;

.field public final mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

.field public final mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

.field public final mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

.field public final mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

.field public final mSdpMonitor:Lcom/android/systemui/knox/SdpMonitor;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mUCMReceiver:Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;

.field public final mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUCMReceiver:Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;

    new-instance v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mBroadCastReceiver:Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;

    new-instance v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    new-instance p1, Lcom/android/systemui/knox/CustomSdkMonitor;

    invoke-direct {p1, p0}, Lcom/android/systemui/knox/CustomSdkMonitor;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    new-instance p1, Lcom/android/systemui/knox/ContainerMonitor;

    invoke-direct {p1, p0}, Lcom/android/systemui/knox/ContainerMonitor;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    new-instance p1, Lcom/android/systemui/knox/DualDarMonitor;

    invoke-direct {p1, p0}, Lcom/android/systemui/knox/DualDarMonitor;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    new-instance p1, Lcom/android/systemui/knox/EdmMonitor;

    invoke-direct {p1, p0}, Lcom/android/systemui/knox/EdmMonitor;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    new-instance p1, Lcom/android/systemui/knox/SdpMonitor;

    invoke-direct {p1}, Lcom/android/systemui/knox/SdpMonitor;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mSdpMonitor:Lcom/android/systemui/knox/SdpMonitor;

    new-instance p1, Lcom/android/systemui/knox/UcmMonitor;

    invoke-direct {p1}, Lcom/android/systemui/knox/UcmMonitor;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->initKnoxClass()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/android/systemui/knox/KnoxStateMonitorImpl$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    const-string v0, "KnoxStateMonitorImpl"

    invoke-direct {p1, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 p3, 0xa

    invoke-virtual {p1, p3}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "KnoxStateMonitor state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/knox/CustomSdkMonitor;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/knox/EdmMonitor;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mSdpMonitor:Lcom/android/systemui/knox/SdpMonitor;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    const-string p2, "mCallback size="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "   -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final getContainerIds()Ljava/util/List;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/knox/ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getDualDarInnerLockoutAttemptDeadline$1()J
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    cmp-long v5, v3, v1

    if-gez v5, :cond_1

    iget-wide v5, v0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    iget-object v1, v0, Lcom/android/systemui/knox/DualDarMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p0}, Lcom/android/systemui/knox/DualDarMonitor;->getInnerAuthUserId(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v5, v0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    add-long/2addr v1, v5

    cmp-long v1, v3, v1

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/knox/DualDarMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p0}, Lcom/android/systemui/knox/DualDarMonitor;->getInnerAuthUserId(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v3

    :cond_2
    :goto_0
    return-wide v3
.end method

.method public final getInnerAuthUserId(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/DualDarMonitor;->getInnerAuthUserId(I)I

    move-result p0

    return p0
.end method

.method public final getMainUserId(I)I
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-nez p0, :cond_0

    return p1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getMainUserId(I)I

    move-result p0

    const-string v0, "getMainUserId - userId : "

    const-string v1, ", ret : "

    const-string v2, "DualDarMonitor"

    invoke-static {p1, p0, v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final getQuickPanelItems()Ljava/util/List;
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    if-eqz p0, :cond_3

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method public final getQuickPanelUnavailableButtons()Ljava/util/List;
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    if-eqz p0, :cond_3

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method public final initKnoxClass()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "registerCallback this = "

    invoke-static {}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    move-result-object v2

    const-string v3, "CustomSdkMonitor"

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->registerSystemUICallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v0, "registerSystemUICallback() cannot reference because privateCustomDeviceManager is null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v1, "registerSystemUICallback() Failed!"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "EdmMonitor"

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    const-string v1, "registerKnoxCallback() cannot reference because edm is null"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    const-string v3, "registerKnoxCallback() Failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    iget-object v1, v0, Lcom/android/systemui/knox/EdmMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "EdmMonitor registerCallback mEnableAdminLock:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  mLicenseExpired:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mSdpMonitor:Lcom/android/systemui/knox/SdpMonitor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    const-string v1, "SdpMonitor"

    if-nez v0, :cond_6

    const-string p0, "UcmMonitor failed to get UCM System service"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    :try_start_2
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->registerSystemUICallback(Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    const-string p0, "UcmMonitor failed to be registered"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method public final isAdminLockEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAirplaneModeTileBlocked()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mAirplaneModeAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isBluetoothTileBlocked()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mBluetoothAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isBrightnessBlocked()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDeviceDisabledForMaxFailedAttempt()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final isDisableDeviceByMultifactor()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isMultifactorAuthEnforced()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "KnoxStateMonitorImpl"

    const-string v0, "isDisableDeviceByMultifactor( = false"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final isDualDarDeviceOwner(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDualDarInnerAuthRequired(I)Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isInnerAuthRequired(I)Z

    move-result p0

    const-string v0, "isInnerAuthRequired - userId : "

    const-string v1, ", ret : "

    const-string v2, "DualDarMonitor"

    invoke-static {v0, p1, v1, p0, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDualDarInnerLayerUnlocked(I)Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isInnerLayerUnlocked(I)Z

    move-result p0

    const-string v0, "isDualDarInnerLayerUnlocked - userId : "

    const-string v1, ", ret : "

    const-string v2, "DualDarMonitor"

    invoke-static {v0, p1, v1, p0, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFlashlightTileBlocked()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLockScreenDisabledbyKNOX()Z
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForcedLock()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMobileDataTileBlocked()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mCellularDataAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isMultifactorAuthEnforced()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMultiFactorAuthEnabled:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isLock2StepVerificationEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPersona(I)Z
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "isPersona for user "

    const-string v0, " is false"

    const-string v2, "ContainerMonitor"

    invoke-static {p1, p0, v0, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public final isRotationLockTileBlocked()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSecureFolder(I)Z
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "isSecureFolder for user "

    const-string v0, " is false"

    const-string v2, "ContainerMonitor"

    invoke-static {p1, p0, v0, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public final isSoundModeTileBlocked()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStatusBarHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUserMobileDataRestricted()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "no_config_mobile_networks"

    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWifiHotspotTileBlocked()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiTetheringAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isWifiTileBlocked()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiStateChangeAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final declared-synchronized registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V
    .locals 3

    const-string v0, "registerCallback() callback="

    monitor-enter p0

    :try_start_0
    const-string v1, "KnoxStateMonitorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string p1, "KnoxStateMonitorImpl"

    const-string v0, "removeCallback() mCallbacks has same callback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V
    .locals 3

    const-string v0, "removeCallback() callback="

    monitor-enter p0

    :try_start_0
    const-string v1, "KnoxStateMonitorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string v1, "KnoxStateMonitorImpl"

    const-string v2, "removeCallback() mCallbacks has same callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final setLockoutAttemptDeadline(II)J
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-nez p0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    :cond_1
    iput-wide v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    :cond_2
    iget-wide p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    return-wide p0
.end method
