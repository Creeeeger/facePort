.class public final Landroid/window/WindowContainerTransaction;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContainerTransaction$HierarchyOp;,
        Landroid/window/WindowContainerTransaction$ContainerChange;,
        Landroid/window/WindowContainerTransaction$Change;,
        Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;,
        Landroid/window/WindowContainerTransaction$AdditionalFlags;,
        Landroid/window/WindowContainerTransaction$ChangeTransitRequest;
    }
.end annotation


# static fields
.field public static final blacklist ADDITIONAL_FLAG_KEEP_ROTATION_DURING_TRANSITION:I = 0x1

.field public static final blacklist CHANGE_TRANSIT_REQUEST_FULLSCREEN_TO_SPLIT:I = 0x1

.field public static final blacklist CHANGE_TRANSIT_REQUEST_FULLSCREEN_TO_SPLIT_ROTATION:I = 0x3

.field public static final blacklist CHANGE_TRANSIT_REQUEST_SPLIT_TO_FULLSCREEN:I = 0x2

.field public static final blacklist CHANGE_TRANSIT_REQUEST_UNDEFINED:I = 0x0

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TRANSACTION_TYPE_DISMISS_SPLIT_WITH_ALL_APPS:I = 0x7

.field public static final blacklist TRANSACTION_TYPE_DISMISS_SPLIT_WITH_FREEFORM:I = 0x6

.field public static final blacklist TRANSACTION_TYPE_START_INTENTS:I = 0x1

.field public static final blacklist TRANSACTION_TYPE_START_TASKS:I = 0x3

.field public static final blacklist TRANSACTION_TYPE_START_TASKS_FROM_RECENT:I = 0x5

.field public static final blacklist TRANSACTION_TYPE_START_TASK_AND_INTENT:I = 0x2

.field public static final blacklist TRANSACTION_TYPE_UNDEFINED:I = 0x0

.field public static final blacklist TRANSACTION_TYPE_UPDATE_DESKTOP_MODE_ACTIVE:I = 0x4


# instance fields
.field private blacklist mAdditionalFlag:I

.field private blacklist mAvoidReady:Z

.field private final blacklist mChangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/WindowContainerTransaction$ContainerChange;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mChangeTransitionRequest:I

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

.field private blacklist mDisplayChangeTransitionReason:Ljava/lang/String;

.field private blacklist mDisplayIdForChangeTransition:I

.field private blacklist mErrorCallbackToken:Landroid/os/IBinder;

.field private final blacklist mHierarchyOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/WindowContainerTransaction$HierarchyOp;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMergedTransitionTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPositionChange:Z

.field private blacklist mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

.field private blacklist mTransferLeashMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransferTransitionTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/WindowContainerTransaction$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mTransferLeashMap:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mMergedTransitionTokens:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mTransferTransitionTokens:Ljava/util/ArrayList;

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mChangeList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mTransferLeashMap:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mMergedTransitionTokens:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mTransferTransitionTokens:Ljava/util/ArrayList;

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mChangeList:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    sget-object v2, Landroid/window/WindowContainerTransaction$HierarchyOp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayChangeTransitionReason:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChangeList:Ljava/util/ArrayList;

    sget-object v2, Landroid/window/WindowContainerTransaction$ContainerChange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTransferLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mAvoidReady:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mAdditionalFlag:I

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v0, :cond_4

    const-class v0, Landroid/os/IBinder;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mTransferTransitionTokens:Ljava/util/ArrayList;

    const-class v0, Landroid/os/IBinder;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mMergedTransitionTokens:Ljava/util/ArrayList;

    :cond_4
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/WindowContainerTransaction-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist changeTransitRequestToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "CHANGE_TRANSIT_REQUEST_SPLIT_TO_FULLSCREEN"

    return-object v0

    :pswitch_1
    const-string v0, "CHANGE_TRANSIT_REQUEST_FULLSCREEN_TO_SPLIT"

    return-object v0

    :pswitch_2
    const-string v0, "CHANGE_TRANSIT_REQUEST_UNDEFINED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;
    .locals 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction$Change;

    if-nez v0, :cond_0

    new-instance v1, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction$Change;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public blacklist addAdditionalInfo(I)V
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mAdditionalFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mAdditionalFlag:I

    return-void
.end method

.method public blacklist addChangeTransitFlags(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeTransitFlags(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/2addr v1, p2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitFlags(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist addInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;IILandroid/graphics/Rect;[Landroid/graphics/Rect;I)Landroid/window/WindowContainerTransaction;
    .locals 3

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsFrameProvider;

    invoke-direct {v1, p2, p3, p4}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/view/InsetsFrameProvider;->setArbitraryRectangle(Landroid/graphics/Rect;)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/view/InsetsFrameProvider;->setBoundingRects([Landroid/graphics/Rect;)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    invoke-virtual {v1, p7}, Landroid/view/InsetsFrameProvider;->setFlags(I)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsFrameProvider(Landroid/view/InsetsFrameProvider;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsFrameOwner(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addMergedTransitionToken(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mMergedTransitionTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setTaskFragmentOperation(Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addTransferLeash(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTransferLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist addTransferTransitionToken(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTransferTransitionTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist avoidReady()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mAvoidReady:Z

    return v0
.end method

.method public blacklist changeTransitionRequested()Z
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist clear()V
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    return-void
.end method

.method public blacklist clearAdjacentRoots(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForClearAdjacentRoots(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist clearAdjacentTaskFragments(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public blacklist clearLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 3

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchAdjacentFlagRoot(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist closeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForCloseTask(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist createTaskFragment(Landroid/window/TaskFragmentCreationParams;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentOperation$Builder;->setTaskFragmentCreationParams(Landroid/window/TaskFragmentCreationParams;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public blacklist deferConfigToTransitionEnd(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigAtTransitionEnd(Landroid/window/WindowContainerTransaction$Change;Z)V

    return-object p0
.end method

.method public blacklist deleteTaskFragment(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist displayChangeTransitionRequested()Z
    .locals 2

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist finishActivity(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist getAdditionalFlags()I
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mAdditionalFlag:I

    return v0
.end method

.method public blacklist getChangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/WindowContainerTransaction$ContainerChange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChangeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getChangeTransitionRequest()I
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    return v0
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

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getDisplayChangeTransitionReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayChangeTransitionReason:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDisplayIdForChangeTransition()I
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    return v0
.end method

.method public blacklist getErrorCallbackToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

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

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getMergedTransitionTokens()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mMergedTransitionTokens:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    return-object v0
.end method

.method public blacklist getTransferLeashMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTransferLeashMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getTransferTransitionTokens()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTransferTransitionTokens:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist isDismissSplit()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    return v0
.end method

.method public blacklist isDismissSplitWithAllApps()Z
    .locals 2

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isDismissSplitWithFreeform()Z
    .locals 2

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

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

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    return v0
.end method

.method public blacklist isStartIntentsType()Z
    .locals 2

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

.method public blacklist isStartTasksFromRecentType()Z
    .locals 2

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v1, 0x5

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

.method public blacklist isUpdateDesktopModeActive()Z
    .locals 2

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v1, 0x4

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

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$Change;

    if-nez v3, :cond_0

    new-instance v4, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction$Change;-><init>()V

    move-object v3, v4

    iget-object v4, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v4, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v3, v4, p2}, Landroid/window/WindowContainerTransaction$Change;->merge(Landroid/window/WindowContainerTransaction$Change;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    iget-object v3, p1, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$HierarchyOp;

    goto :goto_2

    :cond_2
    new-instance v3, Landroid/window/WindowContainerTransaction$HierarchyOp;

    iget-object v4, p1, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-direct {v3, v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(Landroid/window/WindowContainerTransaction$HierarchyOp;)V

    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-ne v0, v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t merge two WCTs with different error token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, v1

    :goto_4
    nop

    iget-object v2, p1, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v2, :cond_7

    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_5

    :cond_7
    nop

    :goto_5
    nop

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    goto :goto_6

    :cond_8
    iget-object v2, p1, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    :goto_6
    iput-object v2, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    return-void

    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t merge two WCTs from different TaskFragmentOrganizers"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist movePipActivityToPinnedRootTask(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 3

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setBounds(Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist orderedSetChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$ContainerChange;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$ContainerChange;-><init>()V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/window/WindowContainerTransaction$ContainerChange;->mToken:Landroid/os/IBinder;

    new-instance v1, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction$Change;-><init>()V

    iput-object v1, v0, Landroid/window/WindowContainerTransaction$ContainerChange;->mChange:Landroid/window/WindowContainerTransaction$Change;

    iget-object v1, v0, Landroid/window/WindowContainerTransaction$ContainerChange;->mChange:Landroid/window/WindowContainerTransaction$Change;

    invoke-static {v1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitMode(Landroid/window/WindowContainerTransaction$Change;I)V

    iget-object v1, v0, Landroid/window/WindowContainerTransaction$ContainerChange;->mChange:Landroid/window/WindowContainerTransaction$Change;

    invoke-static {v1, p3}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitReason(Landroid/window/WindowContainerTransaction$Change;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist orderedSetWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$ContainerChange;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$ContainerChange;-><init>()V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/window/WindowContainerTransaction$ContainerChange;->mToken:Landroid/os/IBinder;

    new-instance v1, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction$Change;-><init>()V

    iput-object v1, v0, Landroid/window/WindowContainerTransaction$ContainerChange;->mChange:Landroid/window/WindowContainerTransaction$Change;

    iget-object v1, v0, Landroid/window/WindowContainerTransaction$ContainerChange;->mChange:Landroid/window/WindowContainerTransaction$Change;

    invoke-static {v1, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist removeInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;II)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsFrameProvider;

    invoke-direct {v1, p2, p3, p4}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsFrameProvider(Landroid/view/InsetsFrameProvider;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsFrameOwner(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist removeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForRemoveTask(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;ZZ)Landroid/window/WindowContainerTransaction;

    move-result-object v0

    return-object v0
.end method

.method public blacklist reorder(Landroid/window/WindowContainerToken;ZZ)Landroid/window/WindowContainerTransaction;
    .locals 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForReorder(Landroid/os/IBinder;ZZ)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 3

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForReparent(Landroid/os/IBinder;Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist reparentActivityToTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public blacklist reparentFirst(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 3

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForReparent(Landroid/os/IBinder;Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public blacklist reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;
    .locals 7

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

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_1
    move-object v4, v1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v3 .. v8}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForChildrenTasksReparent(Landroid/os/IBinder;Landroid/os/IBinder;[I[IZZ)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist requestFocusOnTaskFragment(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public blacklist requestForceTaskInfoChange(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmForceTaskInfoChangeRequested(Landroid/window/WindowContainerTransaction$Change;Z)V

    return-object p0
.end method

.method public blacklist restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmPinnedBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .locals 3

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {v1, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setActivityIntent(Landroid/content/Intent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmActivityWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setAdjacentRoots(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 3

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForAdjacentRoots(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setAdjacentTaskFragments(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setSecondaryFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;->setBundle(Landroid/os/Bundle;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setAlwaysOnTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 3

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setAvoidReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mAvoidReady:Z

    return-void
.end method

.method public blacklist setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 3

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmBoundsChangeSurfaceBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmBoundsChangeSurfaceBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    :cond_0
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmBoundsChangeSurfaceBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmBoundsChangeTransaction(Landroid/window/WindowContainerTransaction$Change;Landroid/view/SurfaceControl$Transaction;)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setChangeFreeformStashMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeFreeformStashMode(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setChangeFreeformStashScale(Landroid/window/WindowContainerToken;F)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeFreeformStashScale(Landroid/window/WindowContainerTransaction$Change;F)V

    return-object p0
.end method

.method public blacklist setChangeStagePosition(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    return-void
.end method

.method public blacklist setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitMode(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {v0, p3}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitReason(Landroid/window/WindowContainerTransaction$Change;Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setChangeTransitStartBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeTransitStartBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitStartBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    :cond_0
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeTransitStartBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public blacklist setChangeTransitionRequest(I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    return-void
.end method

.method public blacklist setCompanionTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setSecondaryFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setDensityDpi(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p2, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x1000

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setDismissSplit(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    return-void
.end method

.method public blacklist setDisplayIdForChangeTransition(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    iput-object p2, p0, Landroid/window/WindowContainerTransaction;->mDisplayChangeTransitionReason:Ljava/lang/String;

    return-void
.end method

.method public blacklist setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setDragResizing(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmDragResizing(Landroid/window/WindowContainerTransaction$Change;Z)V

    return-object p0
.end method

.method public blacklist setEmbedActivityMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 3

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setErrorCallbackToken(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .locals 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set multiple error token for one transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmFocusable(Landroid/window/WindowContainerTransaction$Change;Z)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setForceTranslucent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmForceTranslucent(Landroid/window/WindowContainerTransaction$Change;Z)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setFreeformTranslucent(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 3

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setFreeformTranslucent(I)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmHidden(Landroid/window/WindowContainerTransaction$Change;Z)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setIgnoreOrientationRequest(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmIgnoreOrientationRequest(Landroid/window/WindowContainerTransaction$Change;Z)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .locals 3

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchAdjacentFlagRoot(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;
    .locals 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchRoot(Landroid/os/IBinder;[I[I)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setRelativeBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .locals 3

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    :cond_0
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentLeafTaskIfRelaunch(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 2

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x800

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setStagePosition(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 3

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setStagePosition(I)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    return-object p0
.end method

.method public blacklist setTaskViewTaskOrganizerTaskId(Landroid/window/WindowContainerToken;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmTaskViewTaskOrganizerTaskId(Landroid/window/WindowContainerTransaction$Change;I)V

    return-void
.end method

.method public blacklist setTransactionType(I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction;->mType:I

    return-void
.end method

.method public blacklist setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .locals 1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V

    return-object p0
.end method

.method public blacklist startActivityInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/window/TaskFragmentOperation$Builder;->setActivityIntent(Landroid/content/Intent;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/window/TaskFragmentOperation$Builder;->setBundle(Landroid/os/Bundle;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public blacklist startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .locals 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForStartShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .locals 2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForTaskLaunch(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction;->changeTransitionRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changeTransitRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    invoke-static {v2}, Landroid/window/WindowContainerTransaction;->changeTransitRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowContainerTransaction { changes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hops = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorCallbackToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " taskFragmentOrganizer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayChangeTransitionReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChangeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTransferLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mAvoidReady:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/window/WindowContainerTransaction;->mAdditionalFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTransferTransitionTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mMergedTransitionTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    :cond_4
    return-void
.end method
