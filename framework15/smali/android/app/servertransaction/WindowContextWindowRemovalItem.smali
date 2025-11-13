.class public Landroid/app/servertransaction/WindowContextWindowRemovalItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "WindowContextWindowRemovalItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowContextWindowRemovalItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mClientToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/WindowContextWindowRemovalItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowContextWindowRemovalItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowContextWindowRemovalItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowContextWindowRemovalItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist obtain(Landroid/os/IBinder;)Landroid/app/servertransaction/WindowContextWindowRemovalItem;
    .locals 2

    nop

    const-class v0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/servertransaction/WindowContextWindowRemovalItem;

    invoke-direct {v1}, Landroid/app/servertransaction/WindowContextWindowRemovalItem;-><init>()V

    move-object v0, v1

    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    iput-object v1, v0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;

    iget-object v1, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 1

    iget-object v0, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->handleWindowContextWindowRemoval(Landroid/os/IBinder;)V

    return-void
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist recycle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowContextWindowRemovalItem{clientToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

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

    iget-object v0, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
