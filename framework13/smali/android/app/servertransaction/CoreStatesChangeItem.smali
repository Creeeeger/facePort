.class public Landroid/app/servertransaction/CoreStatesChangeItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "CoreStatesChangeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/CoreStatesChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mState:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Landroid/app/servertransaction/CoreStatesChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/CoreStatesChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/CoreStatesChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 77
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/servertransaction/CoreStatesChangeItem;->mState:Landroid/os/Bundle;

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/CoreStatesChangeItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/CoreStatesChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist obtain(Landroid/os/Bundle;)Landroid/app/servertransaction/CoreStatesChangeItem;
    .locals 2
    .param p0, "states"    # Landroid/os/Bundle;

    .line 52
    const-class v0, Landroid/app/servertransaction/CoreStatesChangeItem;

    .line 53
    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/CoreStatesChangeItem;

    .line 54
    .local v0, "instance":Landroid/app/servertransaction/CoreStatesChangeItem;
    if-nez v0, :cond_0

    .line 55
    new-instance v1, Landroid/app/servertransaction/CoreStatesChangeItem;

    invoke-direct {v1}, Landroid/app/servertransaction/CoreStatesChangeItem;-><init>()V

    move-object v0, v1

    .line 57
    :cond_0
    iput-object p0, v0, Landroid/app/servertransaction/CoreStatesChangeItem;->mState:Landroid/os/Bundle;

    .line 59
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 93
    if-ne p0, p1, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/servertransaction/CoreStatesChangeItem;

    .line 100
    .local v0, "other":Landroid/app/servertransaction/CoreStatesChangeItem;
    iget-object v1, p0, Landroid/app/servertransaction/CoreStatesChangeItem;->mState:Landroid/os/Bundle;

    iget-object v2, v0, Landroid/app/servertransaction/CoreStatesChangeItem;->mState:Landroid/os/Bundle;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 97
    .end local v0    # "other":Landroid/app/servertransaction/CoreStatesChangeItem;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 3
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 42
    const-wide/16 v0, 0x40

    const-string v2, "coreStatesChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 43
    iget-object v2, p0, Landroid/app/servertransaction/CoreStatesChangeItem;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/app/ClientTransactionHandler;->handleCoreStatesChanged(Landroid/os/Bundle;)V

    .line 44
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 45
    return-void
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/app/servertransaction/CoreStatesChangeItem;->mState:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist recycle()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/CoreStatesChangeItem;->mState:Landroid/os/Bundle;

    .line 65
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 66
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoreStatesChangeItem{State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/CoreStatesChangeItem;->mState:Landroid/os/Bundle;

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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Landroid/app/servertransaction/CoreStatesChangeItem;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 73
    return-void
.end method
