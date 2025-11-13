.class public final Lcom/android/systemui/appops/AppOpsControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/appops/AppOpsController;
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.implements Landroid/app/AppOpsManager$OnOpNotedInternalListener;
.implements Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final OPS:[I

.field public static final OPS_CAMERA:[I

.field protected static final OPS_MIC:[I


# instance fields
.field public final mActiveItems:Ljava/util/List;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mAudioRecordingCallback:Lcom/android/systemui/appops/AppOpsControllerImpl$1;

.field public mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mCallbacks:Ljava/util/List;

.field public final mCallbacksByCode:Landroid/util/SparseArray;

.field public mCameraDisabled:Z

.field public final mClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mContext:Landroid/content/Context;

.field public final mDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mListening:Z

.field public mMicMuted:Z

.field public final mNotedItems:Ljava/util/List;

.field public final mRecordingsByUid:Landroid/util/SparseArray;

.field public final mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x64

    const/16 v1, 0x78

    const/16 v2, 0x1b

    const/16 v3, 0x88

    const/16 v4, 0x79

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS_MIC:[I

    const/16 v1, 0x1a

    const/16 v2, 0x65

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sput-object v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS_CAMERA:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x2a

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    const/16 v4, 0x18

    filled-new-array {v4}, [I

    move-result-object v4

    filled-new-array {v0, v1, v2, v4}, [[I

    move-result-object v0

    move v1, v3

    move v2, v1

    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_2

    aget-object v4, v0, v1

    if-eqz v4, :cond_1

    array-length v5, v4

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    array-length v4, v4

    add-int/2addr v2, v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-array v1, v2, [I

    move v2, v3

    move v5, v2

    :goto_2
    if-ge v2, v4, :cond_5

    aget-object v6, v0, v2

    if-eqz v6, :cond_4

    array-length v7, v6

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    array-length v7, v6

    invoke-static {v6, v3, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v5, v6

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    sput-object v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Landroid/media/AudioManager;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mRecordingsByUid:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/appops/AppOpsControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/appops/AppOpsControllerImpl$1;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioRecordingCallback:Lcom/android/systemui/appops/AppOpsControllerImpl$1;

    iput-object p7, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const-string p7, "appops"

    invoke-virtual {p1, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/app/AppOpsManager;

    iput-object p7, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    new-instance p7, Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    invoke-direct {p7, p0, p2}, Lcom/android/systemui/appops/AppOpsControllerImpl$H;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;Landroid/os/Looper;)V

    iput-object p7, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    iput-object p3, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBgExecutor:Ljava/util/concurrent/Executor;

    sget-object p2, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    array-length p2, p2

    const/4 p3, 0x0

    move p7, p3

    :goto_0
    if-ge p7, p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    aget v1, v1, p7

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    iput-object p6, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-virtual {p5}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result p2

    const/4 p5, 0x1

    if-nez p2, :cond_1

    move-object p2, p6

    check-cast p2, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {p2, p5}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    move p3, p5

    :cond_2
    iput-boolean p3, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    const/4 p2, 0x2

    check-cast p6, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {p6, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCameraDisabled:Z

    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mContext:Landroid/content/Context;

    iput-object p8, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "AppOpsControllerImpl"

    invoke-static {p4, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public static getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;
    .locals 4

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/appops/AppOpItem;

    iget v3, v2, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    if-ne v3, p1, :cond_0

    iget v3, v2, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    if-ne v3, p2, :cond_0

    iget-object v3, v2, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    aget v4, p1, v1

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->setListening(Z)V

    :cond_3
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string p2, "AppOpsController state:"

    const-string v0, "  Listening: "

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mListening:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  Active Items:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "    "

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appops/AppOpItem;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/appops/AppOpItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "  Noted Items:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appops/AppOpItem;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/appops/AppOpItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final getActiveAppOps(Z)Ljava/util/List;
    .locals 8

    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/appops/AppOpItem;

    iget-object v6, v5, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/systemui/appops/AppOpItem;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isUserVisible(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez p1, :cond_0

    iget-boolean v6, v5, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter p1

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/appops/AppOpItem;

    iget-object v4, v2, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/systemui/appops/AppOpItem;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isUserVisible(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    monitor-exit p1

    return-object v0

    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final isAnyRecordingPausedLocked(I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mRecordingsByUid:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return p1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v2, p1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {v3}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public final isUserVisible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "com.samsung.android.sead"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "android"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "com.samsung.sightcare"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/permission/PermissionManager;->shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "SLocationService"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Biometrics_FaceService"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public final notifySuscribersWorker(IZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p4, p5}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isUserVisible(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/appops/AppOpsController$Callback;

    invoke-interface {p5, p4, p1, p3, p2}, Lcom/android/systemui/appops/AppOpsController$Callback;->onActiveStateChanged(Ljava/lang/String;IIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 15

    move-object v0, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v10

    if-eqz p5, :cond_0

    const/4 v1, -0x1

    move/from16 v2, p7

    if-eq v2, v1, :cond_0

    if-eqz p6, :cond_0

    and-int/lit8 v1, p6, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p6, 0x8

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v11, v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter v11

    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-static {v1, v10, v8, v9}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v1, :cond_5

    if-eqz p5, :cond_5

    new-instance v14, Lcom/android/systemui/appops/AppOpItem;

    iget-object v1, v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v14

    move v2, v10

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/appops/AppOpItem;-><init>(IILjava/lang/String;JLjava/lang/String;)V

    move v1, v12

    :goto_0
    sget-object v2, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS_MIC:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget v2, v2, v1

    if-ne v10, v2, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isAnyRecordingPausedLocked(I)Z

    move-result v1

    iput-boolean v1, v14, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v12

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    sget-object v2, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS_CAMERA:[I

    aget v2, v2, v1

    if-ne v10, v2, :cond_3

    iget-boolean v1, v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCameraDisabled:Z

    iput-boolean v1, v14, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v14, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    xor-int/2addr v1, v13

    monitor-exit v11

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    if-nez p5, :cond_6

    iget-object v2, v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v11

    move v1, v13

    goto :goto_3

    :cond_6
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v12

    :goto_3
    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v1, v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-static {v2, v10, v8, v9}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object v2

    if-eqz v2, :cond_8

    move v12, v13

    :cond_8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v12, :cond_9

    iget-object v11, v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    new-instance v12, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda0;

    move-object v1, v12

    move-object v2, p0

    move v3, v10

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_4
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/appops/AppOpsControllerImpl;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method public final onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 9

    if-eqz p6, :cond_0

    return-void

    :cond_0
    iget-object p5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter p5

    :try_start_0
    iget-object p6, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-static {p6, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object p6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p6, :cond_1

    new-instance p6, Lcom/android/systemui/appops/AppOpItem;

    iget-object v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v2, p6

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/appops/AppOpItem;-><init>(IILjava/lang/String;JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_0
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    invoke-virtual {p5, p6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    invoke-virtual {p5, p6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/systemui/appops/AppOpsControllerImpl$H$1;

    invoke-direct {v3, p5, p6}, Lcom/android/systemui/appops/AppOpsControllerImpl$H$1;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl$H;Lcom/android/systemui/appops/AppOpItem;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {p5, v3, p6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object p6, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter p6

    :try_start_1
    iget-object p5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-static {p5, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object p5

    if-eqz p5, :cond_3

    move v0, v1

    :cond_3
    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_4

    iget-object p5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    new-instance p6, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p5, p6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_1
    :try_start_3
    monitor-exit p5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    invoke-virtual {p0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->updateSensorDisabledStatus()V

    return-void
.end method

.method public final onSensorBlockedChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    new-instance v1, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBGHandler(Lcom/android/systemui/appops/AppOpsControllerImpl$H;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateSensorDisabledStatus()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    iget-object v4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/appops/AppOpItem;

    iget v5, v4, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    move v6, v2

    :goto_1
    sget-object v7, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS_MIC:[I

    array-length v8, v7

    if-ge v6, v8, :cond_1

    aget v7, v7, v6

    if-ne v5, v7, :cond_0

    iget v5, v4, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isAnyRecordingPausedLocked(I)Z

    move-result v5

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget v5, v4, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    move v6, v2

    :goto_2
    const/4 v7, 0x2

    if-ge v6, v7, :cond_3

    sget-object v7, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS_CAMERA:[I

    aget v7, v7, v6

    if-ne v5, v7, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCameraDisabled:Z

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_3
    iget-boolean v6, v4, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    if-eq v6, v5, :cond_4

    iput-boolean v5, v4, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    iget v9, v4, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    iget v10, v4, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    iget-object v11, v4, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    xor-int/lit8 v12, v5, 0x1

    iget-object v13, v4, Lcom/android/systemui/appops/AppOpItem;->mAttributionTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    new-instance v5, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda0;

    move-object v7, v5

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
