.class public Landroid/app/servertransaction/ActivityRelaunchItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "ActivityRelaunchItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ActivityRelaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityRelaunchItem"


# instance fields
.field private greylist-max-o mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

.field private blacklist mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field private greylist-max-o mConfig:Landroid/util/MergedConfiguration;

.field private greylist-max-o mConfigChanges:I

.field private greylist-max-o mPendingNewIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPendingResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPreserveWindow:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/ActivityRelaunchItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ActivityRelaunchItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ActivityRelaunchItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    sget-object v0, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    sget-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MergedConfiguration;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    sget-object v0, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ActivityWindowInfo;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ActivityRelaunchItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityRelaunchItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist obtain(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;ZLandroid/window/ActivityWindowInfo;)Landroid/app/servertransaction/ActivityRelaunchItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;I",
            "Landroid/util/MergedConfiguration;",
            "Z",
            "Landroid/window/ActivityWindowInfo;",
            ")",
            "Landroid/app/servertransaction/ActivityRelaunchItem;"
        }
    .end annotation

    const-class v0, Landroid/app/servertransaction/ActivityRelaunchItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ActivityRelaunchItem;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/servertransaction/ActivityRelaunchItem;

    invoke-direct {v1}, Landroid/app/servertransaction/ActivityRelaunchItem;-><init>()V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/servertransaction/ActivityRelaunchItem;->setActivityToken(Landroid/os/IBinder;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    iput-object v2, v0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    nop

    if-eqz p2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2
    iput-object v1, v0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    iput p3, v0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    new-instance v1, Landroid/util/MergedConfiguration;

    invoke-direct {v1, p4}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    iput-object v1, v0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    iput-boolean p5, v0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    new-instance v1, Landroid/window/ActivityWindowInfo;

    invoke-direct {v1, p6}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    iput-object v1, v0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/ActivityRelaunchItem;

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    iget-object v4, v1, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    iget-object v4, v1, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    iget v4, v1, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    iget-object v4, v1, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    iget-object v4, v1, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 3

    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "activityRestart"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {p1, v0, p3}, Landroid/app/ClientTransactionHandler;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/servertransaction/ActivityRelaunchItem;->getActivityClientRecord(Landroid/app/ClientTransactionHandler;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->reportRelaunch(Landroid/app/ActivityThread$ActivityClientRecord;)V

    return-void
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .locals 9

    invoke-virtual {p1}, Landroid/app/ClientTransactionHandler;->isExecutingLocalTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-static {v0}, Landroid/content/res/CompatibilityInfo;->applyOverrideScaleIfNeeded(Landroid/util/MergedConfiguration;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/servertransaction/ActivityRelaunchItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    iget-object v4, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    iget v5, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    iget-object v6, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    iget-boolean v7, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    iget-object v8, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/app/ClientTransactionHandler;->prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;ZLandroid/window/ActivityWindowInfo;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

    return-void
.end method

.method public greylist-max-o recycle()V
    .locals 2

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    iput-boolean v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityRelaunchItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pendingResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pendingNewIntents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",configChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",preserveWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",activityWindowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

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

    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
