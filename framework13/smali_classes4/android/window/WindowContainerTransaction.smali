.class public final Landroid/window/WindowContainerTransaction;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;,
        Landroid/window/WindowContainerTransaction$HierarchyOp;,
        Landroid/window/WindowContainerTransaction$Change;,
        Landroid/window/WindowContainerTransaction$SyncAppReason;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SYNC_APPS_EXIT_SPLIT_BY_DIVIDER:I = 0x2

.field public static final blacklist SYNC_APPS_REASON_IMMERSIVE_CHANGED:I = 0x1

.field public static final blacklist SYNC_APPS_REASON_UNDEFINED:I = 0x0

.field public static final blacklist TRANSACTION_TYPE_START_INTENTS:I = 0x1

.field public static final blacklist TRANSACTION_TYPE_START_TASKS:I = 0x3

.field public static final blacklist TRANSACTION_TYPE_START_TASK_AND_INTENT:I = 0x2

.field public static final blacklist TRANSACTION_TYPE_UNDEFINED:I


# instance fields
.field private final blacklist mChanges:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/window/WindowContainerTransaction$Change;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDismissSplit:Z

.field private blacklist mErrorCallbackToken:Landroid/os/IBinder;

.field private blacklist mFreezeDisplayInTransaction:Z

.field private blacklist mFreezeDisplayReason:Ljava/lang/String;

.field private final blacklist mHierarchyOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/WindowContainerTransaction$HierarchyOp;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPositionChange:Z

.field private blacklist mSyncAppsCallback:Landroid/os/RemoteCallback;

.field private blacklist mSyncAppsReason:I

.field private final blacklist mSyncStagingTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 976
    new-instance v0, Landroid/window/WindowContainerTransaction$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    .line 93
    iput v0, p0, Landroid/window/WindowContainerTransaction;->mSyncAppsReason:I

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mSyncStagingTypes:Ljava/util/ArrayList;

    .line 97
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mFreezeDisplayInTransaction:Z

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mFreezeDisplayReason:Ljava/lang/String;

    .line 102
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    .line 106
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    .line 109
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 77
    const/4 v2, 0x0

    iput v2, p0, Landroid/window/WindowContainerTransaction;->mType:I

    .line 93
    iput v2, p0, Landroid/window/WindowContainerTransaction;->mSyncAppsReason:I

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/window/WindowContainerTransaction;->mSyncStagingTypes:Ljava/util/ArrayList;

    .line 97
    iput-boolean v2, p0, Landroid/window/WindowContainerTransaction;->mFreezeDisplayInTransaction:Z

    .line 98
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/window/WindowContainerTransaction;->mFreezeDisplayReason:Ljava/lang/String;

    .line 102
    iput-boolean v2, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    .line 106
    iput-boolean v2, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    .line 112
    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 113
    sget-object v0, Landroid/window/WindowContainerTransaction$HierarchyOp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mSyncAppsReason:I

    .line 122
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 123
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mSyncAppsCallback:Landroid/os/RemoteCallback;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mFreezeDisplayInTransaction:Z

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mFreezeDisplayReason:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    .line 134
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/WindowContainerTransaction-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 137
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction$Change;

    .line 138
    .local v0, "out":Landroid/window/WindowContainerTransaction$Change;
    if-nez v0, :cond_0

    .line 139
    new-instance v1, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction$Change;-><init>()V

    move-object v0, v1

    .line 140
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_0
    return-object v0
.end method


# virtual methods
.method public blacklist addRectInsetsProvider(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;[I)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "receiverWindowContainer"    # Landroid/window/WindowContainerToken;
    .param p2, "insetsProviderFrame"    # Landroid/graphics/Rect;
    .param p3, "insetsTypes"    # [I

    .line 714
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 717
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 718
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsProviderFrame(Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 719
    invoke-virtual {v0, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 720
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 721
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    return-object p0
.end method

.method public blacklist addSyncStagingTypes(I)V
    .locals 2
    .param p1, "stagingType"    # I

    .line 881
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mSyncStagingTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 882
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mSyncStagingTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_0
    return-void
.end method

.method public blacklist clearLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 3
    .param p1, "container"    # Landroid/window/WindowContainerToken;

    .line 510
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchAdjacentFlagRoot(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    return-object p0
.end method

.method public blacklist createTaskFragment(Landroid/window/TaskFragmentCreationParams;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "taskFragmentOptions"    # Landroid/window/TaskFragmentCreationParams;

    .line 567
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 569
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setTaskFragmentCreationOptions(Landroid/window/TaskFragmentCreationParams;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 571
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    return-object p0
.end method

.method public blacklist deleteTaskFragment(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "taskFragment"    # Landroid/window/WindowContainerToken;

    .line 582
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 584
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 586
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    return-object p0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 972
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist freezeDisplayInTransaction(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 917
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mFreezeDisplayInTransaction:Z

    .line 918
    iput-object p1, p0, Landroid/window/WindowContainerTransaction;->mFreezeDisplayReason:Ljava/lang/String;

    .line 919
    return-void
.end method

.method public blacklist getChanges()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/window/WindowContainerTransaction$Change;",
            ">;"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getErrorCallbackToken()Landroid/os/IBinder;
    .locals 1

    .line 859
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getFreezeDisplayReason()Ljava/lang/String;
    .locals 1

    .line 927
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mFreezeDisplayReason:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHierarchyOps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/WindowContainerTransaction$HierarchyOp;",
            ">;"
        }
    .end annotation

    .line 853
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getSyncAppsCallback()Landroid/os/RemoteCallback;
    .locals 1

    .line 898
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mSyncAppsCallback:Landroid/os/RemoteCallback;

    return-object v0
.end method

.method public blacklist getSyncAppsReason()I
    .locals 1

    .line 876
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mSyncAppsReason:I

    return v0
.end method

.method public blacklist getSyncStagingTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mSyncStagingTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;
    .locals 1

    .line 865
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    return-object v0
.end method

.method public blacklist isDismissSplit()Z
    .locals 1

    .line 1023
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    return v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 843
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isStagePositionChanged()Z
    .locals 1

    .line 1013
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    return v0
.end method

.method public blacklist isStartIntentsType()Z
    .locals 2

    .line 995
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isStartTaskAndIntentType()Z
    .locals 2

    .line 999
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isStartTasksType()Z
    .locals 2

    .line 1003
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist merge(Landroid/window/WindowContainerTransaction;Z)V
    .locals 5
    .param p1, "other"    # Landroid/window/WindowContainerTransaction;
    .param p2, "transfer"    # Z

    .line 809
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 810
    iget-object v2, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 811
    .local v2, "key":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$Change;

    .line 812
    .local v3, "existing":Landroid/window/WindowContainerTransaction$Change;
    if-nez v3, :cond_0

    .line 813
    new-instance v4, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction$Change;-><init>()V

    move-object v3, v4

    .line 814
    iget-object v4, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :cond_0
    iget-object v4, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v3, v4, p2}, Landroid/window/WindowContainerTransaction$Change;->merge(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 809
    .end local v2    # "key":Landroid/os/IBinder;
    .end local v3    # "existing":Landroid/window/WindowContainerTransaction$Change;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 818
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .restart local v1    # "n":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 819
    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    iget-object v3, p1, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$HierarchyOp;

    goto :goto_2

    .line 820
    :cond_2
    new-instance v3, Landroid/window/WindowContainerTransaction$HierarchyOp;

    iget-object v4, p1, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-direct {v3, v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(Landroid/window/WindowContainerTransaction$HierarchyOp;)V

    .line 819
    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 822
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_3
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz v0, :cond_5

    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz v1, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 824
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t merge two WCTs with different error token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 827
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_4

    .line 828
    :cond_6
    move-object v0, v1

    :goto_4
    nop

    .line 829
    .local v0, "taskFragmentOrganizerAsBinder":Landroid/os/IBinder;
    iget-object v2, p1, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v2, :cond_7

    .line 830
    invoke-interface {v2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_5

    .line 831
    :cond_7
    nop

    :goto_5
    nop

    .line 832
    .local v1, "otherTaskFragmentOrganizerAsBinder":Landroid/os/IBinder;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 836
    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz v2, :cond_8

    .line 837
    goto :goto_6

    .line 838
    :cond_8
    iget-object v2, p1, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    :goto_6
    iput-object v2, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 839
    return-void

    .line 833
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t merge two WCTs from different TaskFragmentOrganizers"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist removeInsetsProvider(Landroid/window/WindowContainerToken;[I)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "receiverWindowContainer"    # Landroid/window/WindowContainerToken;
    .param p2, "insetsTypes"    # [I

    .line 739
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 741
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 742
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 744
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    return-object p0
.end method

.method public blacklist reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "child"    # Landroid/window/WindowContainerToken;
    .param p2, "onTop"    # Z

    .line 405
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForReorder(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    return-object p0
.end method

.method public blacklist reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 3
    .param p1, "child"    # Landroid/window/WindowContainerToken;
    .param p2, "parent"    # Landroid/window/WindowContainerToken;
    .param p3, "onTop"    # Z

    .line 391
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 392
    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 391
    :goto_0
    invoke-static {v1, v2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForReparent(Landroid/os/IBinder;Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    return-object p0
.end method

.method public blacklist reparentActivityToTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "activityToken"    # Landroid/os/IBinder;

    .line 624
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 627
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 628
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 629
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 630
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    return-object p0
.end method

.method public blacklist reparentChildren(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "oldParent"    # Landroid/window/WindowContainerToken;
    .param p2, "newParent"    # Landroid/window/WindowContainerToken;

    .line 644
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 646
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 647
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 649
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    return-object p0
.end method

.method public blacklist reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;
    .locals 7
    .param p1, "currentParent"    # Landroid/window/WindowContainerToken;
    .param p2, "newParent"    # Landroid/window/WindowContainerToken;
    .param p3, "windowingModes"    # [I
    .param p4, "activityTypes"    # [I
    .param p5, "onTop"    # Z

    .line 456
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZZ)Landroid/window/WindowContainerTransaction;

    move-result-object v0

    return-object v0
.end method

.method public blacklist reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZZ)Landroid/window/WindowContainerTransaction;
    .locals 9
    .param p1, "currentParent"    # Landroid/window/WindowContainerToken;
    .param p2, "newParent"    # Landroid/window/WindowContainerToken;
    .param p3, "windowingModes"    # [I
    .param p4, "activityTypes"    # [I
    .param p5, "onTop"    # Z
    .param p6, "reparentTopOnly"    # Z

    .line 429
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 430
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 431
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_1
    move-object v4, v1

    .line 429
    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v3 .. v8}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForChildrenTasksReparent(Landroid/os/IBinder;Landroid/os/IBinder;[I[IZZ)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    return-object p0
.end method

.method public blacklist requestFocusOnTaskFragment(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "fragmentToken"    # Landroid/os/IBinder;

    .line 758
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 761
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 763
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    return-object p0
.end method

.method public blacklist restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "container"    # Landroid/window/WindowContainerToken;

    .line 690
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 692
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 694
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    return-object p0
.end method

.method public blacklist scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 196
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 197
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmPinnedBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    .line 198
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 200
    return-object p0
.end method

.method public blacklist sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .locals 3
    .param p1, "sender"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 537
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 538
    invoke-virtual {v1, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 539
    invoke-virtual {v1, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 540
    invoke-virtual {v1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setActivityIntent(Landroid/content/Intent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 541
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    .line 537
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    return-object p0
.end method

.method public blacklist setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 1
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "windowingMode"    # I

    .line 295
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 296
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmActivityWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 297
    return-object p0
.end method

.method public blacklist setAdjacentRoots(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 3
    .param p1, "root1"    # Landroid/window/WindowContainerToken;
    .param p2, "root2"    # Landroid/window/WindowContainerToken;
    .param p3, "moveTogether"    # Z

    .line 485
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 486
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 487
    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 485
    invoke-static {v1, v2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForAdjacentRoots(Landroid/os/IBinder;Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    return-object p0
.end method

.method public blacklist setAdjacentTaskFragments(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "fragmentToken1"    # Landroid/os/IBinder;
    .param p2, "fragmentToken2"    # Landroid/os/IBinder;
    .param p3, "params"    # Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;

    .line 670
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 672
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 673
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 674
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 675
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 676
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    return-object p0
.end method

.method public blacklist setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 3
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "appBounds"    # Landroid/graphics/Rect;

    .line 166
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 167
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 168
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 169
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 170
    return-object p0
.end method

.method public blacklist setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 3
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 151
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 152
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 153
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 154
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 155
    return-object p0
.end method

.method public blacklist setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "task"    # Landroid/window/WindowContainerToken;
    .param p2, "surfaceBounds"    # Landroid/graphics/Rect;

    .line 275
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 276
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmBoundsChangeSurfaceBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    .line 277
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmBoundsChangeSurfaceBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    .line 279
    :cond_0
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmBoundsChangeSurfaceBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 280
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 281
    return-object p0
.end method

.method public blacklist setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 248
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 249
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmBoundsChangeTransaction(Landroid/window/WindowContainerTransaction$Change;Landroid/view/SurfaceControl$Transaction;)V

    .line 250
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 251
    return-object p0
.end method

.method public blacklist setChangeStagePosition(Z)V
    .locals 0
    .param p1, "change"    # Z

    .line 1009
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    .line 1010
    return-void
.end method

.method public blacklist setChangeTransitMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 1
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "changeTransitMode"    # I

    .line 907
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 908
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitMode(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 909
    return-object p0
.end method

.method public blacklist setDismissSplit(Z)V
    .locals 0
    .param p1, "dismiss"    # Z

    .line 1019
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    .line 1020
    return-void
.end method

.method public blacklist setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "container"    # Landroid/window/WindowContainerToken;

    .line 376
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 377
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 378
    return-object p0
.end method

.method public blacklist setEmbedActivityMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 3
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "embedActivityMode"    # I

    .line 226
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 227
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    .line 228
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 229
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 230
    return-object p0
.end method

.method public blacklist setErrorCallbackToken(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 777
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 780
    iput-object p1, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 781
    return-object p0

    .line 778
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set multiple error token for one transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "focusable"    # Z

    .line 319
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 320
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmFocusable(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 321
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 322
    return-object p0
.end method

.method public blacklist setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "hidden"    # Z

    .line 333
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 334
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmHidden(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 335
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 336
    return-object p0
.end method

.method public blacklist setIgnoreOrientationRequest(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "ignoreOrientationRequest"    # Z

    .line 361
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 362
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmIgnoreOrientationRequest(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 363
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 364
    return-object p0
.end method

.method public blacklist setLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 3
    .param p1, "container"    # Landroid/window/WindowContainerToken;

    .line 499
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchAdjacentFlagRoot(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    return-object p0
.end method

.method public blacklist setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "windowingModes"    # [I
    .param p3, "activityTypes"    # [I

    .line 467
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 468
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 467
    invoke-static {v1, p2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchRoot(Landroid/os/IBinder;[I[I)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    return-object p0
.end method

.method public blacklist setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 182
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 183
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 184
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 185
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 186
    return-object p0
.end method

.method public blacklist setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "widthDp"    # I

    .line 345
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 346
    .local v0, "cfg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 347
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x800

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 348
    return-object p0
.end method

.method public blacklist setStagePosition(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 3
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "stagePosition"    # I

    .line 210
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 211
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setStagePosition(I)V

    .line 212
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 213
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 215
    return-object p0
.end method

.method public blacklist setSyncAppsCallback(Landroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "syncAppsCallback"    # Landroid/os/RemoteCallback;

    .line 893
    iput-object p1, p0, Landroid/window/WindowContainerTransaction;->mSyncAppsCallback:Landroid/os/RemoteCallback;

    .line 894
    return-void
.end method

.method public blacklist setSyncAppsReason(I)V
    .locals 0
    .param p1, "syncAppsReason"    # I

    .line 871
    iput p1, p0, Landroid/window/WindowContainerTransaction;->mSyncAppsReason:I

    .line 872
    return-void
.end method

.method blacklist setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 794
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-nez v0, :cond_0

    .line 797
    iput-object p1, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 798
    return-object p0

    .line 795
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set multiple organizers for one transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setTransactionType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 991
    iput p1, p0, Landroid/window/WindowContainerTransaction;->mType:I

    .line 992
    return-void
.end method

.method public blacklist setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 1
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "windowingMode"    # I

    .line 306
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 307
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 308
    return-object p0
.end method

.method public blacklist shouldFreezeDisplayInTransaction()Z
    .locals 1

    .line 922
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mFreezeDisplayInTransaction:Z

    return v0
.end method

.method public blacklist startActivityInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "callerToken"    # Landroid/os/IBinder;
    .param p3, "activityIntent"    # Landroid/content/Intent;
    .param p4, "activityOptions"    # Landroid/os/Bundle;

    .line 603
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 606
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 607
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 608
    invoke-virtual {v0, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setActivityIntent(Landroid/content/Intent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 609
    invoke-virtual {v0, p4}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 611
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    return-object p0
.end method

.method public blacklist startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 555
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForStartShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    return-object p0
.end method

.method public blacklist startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 523
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForTaskLaunch(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowContainerTransaction { changes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hops = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorCallbackToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " taskFragmentOrganizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 945
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 946
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 947
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 948
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 951
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mSyncAppsReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mSyncStagingTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 956
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mSyncAppsCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 957
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mFreezeDisplayInTransaction:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 958
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mFreezeDisplayReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 961
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 964
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 967
    return-void
.end method
