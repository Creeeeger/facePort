.class public Landroid/app/servertransaction/WindowStateResizeItem;
.super Landroid/app/servertransaction/WindowStateTransactionItem;
.source "WindowStateResizeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowStateResizeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "WindowStateResizeItem"


# instance fields
.field private blacklist mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field private blacklist mAlwaysConsumeSystemBars:Z

.field private blacklist mConfiguration:Landroid/util/MergedConfiguration;

.field private blacklist mDisplayId:I

.field private blacklist mDragResizing:Z

.field private blacklist mForceLayout:Z

.field private blacklist mFrames:Landroid/window/ClientWindowFrames;

.field private blacklist mInsetsState:Landroid/view/InsetsState;

.field private blacklist mReportDraw:Z

.field private blacklist mSyncSeqId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/WindowStateResizeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowStateResizeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowStateResizeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/window/ClientWindowFrames;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ClientWindowFrames;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    sget-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MergedConfiguration;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    sget-object v0, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ActivityWindowInfo;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowStateResizeItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateResizeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist obtain(Landroid/view/IWindow;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)Landroid/app/servertransaction/WindowStateResizeItem;
    .locals 3

    nop

    const-class v0, Landroid/app/servertransaction/WindowStateResizeItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/WindowStateResizeItem;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/servertransaction/WindowStateResizeItem;

    invoke-direct {v1}, Landroid/app/servertransaction/WindowStateResizeItem;-><init>()V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/servertransaction/WindowStateResizeItem;->setWindow(Landroid/view/IWindow;)V

    new-instance v1, Landroid/window/ClientWindowFrames;

    invoke-direct {v1, p1}, Landroid/window/ClientWindowFrames;-><init>(Landroid/window/ClientWindowFrames;)V

    iput-object v1, v0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    iput-boolean p2, v0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    new-instance v1, Landroid/util/MergedConfiguration;

    invoke-direct {v1, p3}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    iput-object v1, v0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    new-instance v1, Landroid/view/InsetsState;

    const/4 v2, 0x1

    invoke-direct {v1, p4, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object v1, v0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    iput-boolean p5, v0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    iput-boolean p6, v0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    iput p7, v0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    iput p8, v0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    iput-boolean p9, v0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    if-eqz p10, :cond_1

    new-instance v1, Landroid/window/ActivityWindowInfo;

    invoke-direct {v1, p10}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/WindowStateResizeItem;

    iget-object v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    iget-object v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    iget-object v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    iget-object v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    iget v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    iget v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    iget-object v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 15

    move-object v1, p0

    iget-boolean v0, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "windowResizedReport"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "windowResized"

    :goto_0
    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v5, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    iget-boolean v6, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    iget-object v7, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    iget-object v8, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    iget-boolean v9, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    iget-boolean v10, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    iget v11, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    iget v12, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    iget-boolean v13, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    iget-object v14, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    move-object/from16 v4, p2

    invoke-interface/range {v4 .. v14}, Landroid/view/IWindow;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "WindowStateResizeItem"

    const-string v5, "The original window no longer exists in the new process"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist recycle()V
    .locals 3

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    iput-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    iput-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    iput v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    iput-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowStateResizeItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reportDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityWindowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/WindowStateTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
