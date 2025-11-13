.class public final Landroid/app/servertransaction/EnterPipRequestedItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "EnterPipRequestedItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/EnterPipRequestedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/EnterPipRequestedItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/EnterPipRequestedItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/EnterPipRequestedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/EnterPipRequestedItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/EnterPipRequestedItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist obtain(Landroid/os/IBinder;)Landroid/app/servertransaction/EnterPipRequestedItem;
    .locals 2

    const-class v0, Landroid/app/servertransaction/EnterPipRequestedItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/EnterPipRequestedItem;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/servertransaction/EnterPipRequestedItem;

    invoke-direct {v1}, Landroid/app/servertransaction/EnterPipRequestedItem;-><init>()V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/servertransaction/EnterPipRequestedItem;->setActivityToken(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/app/ClientTransactionHandler;->handlePictureInPictureRequested(Landroid/app/ActivityThread$ActivityClientRecord;)V

    return-void
.end method

.method public blacklist recycle()V
    .locals 0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->recycle()V

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterPipRequestedItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
