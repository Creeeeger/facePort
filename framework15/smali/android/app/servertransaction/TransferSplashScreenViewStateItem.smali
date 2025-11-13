.class public Landroid/app/servertransaction/TransferSplashScreenViewStateItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "TransferSplashScreenViewStateItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/TransferSplashScreenViewStateItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

.field private blacklist mStartingWindowLeash:Landroid/view/SurfaceControl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    iput-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/TransferSplashScreenViewStateItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist obtain(Landroid/os/IBinder;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)Landroid/app/servertransaction/TransferSplashScreenViewStateItem;
    .locals 2

    nop

    const-class v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;

    invoke-direct {v1}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;-><init>()V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->setActivityToken(Landroid/os/IBinder;)V

    iput-object p1, v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    iput-object p2, v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

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

    check-cast v1, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;

    iget-object v3, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    iget-object v4, v1, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    iget-object v4, v1, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

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
    .locals 2

    iget-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    iget-object v1, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/ClientTransactionHandler;->handleAttachSplashScreenView(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V

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

    iget-object v2, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist recycle()V
    .locals 1

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    iput-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransferSplashScreenViewStateItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",splashScreenViewParcelable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startingWindowLeash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

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

    iget-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
