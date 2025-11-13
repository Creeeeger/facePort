.class public Landroid/app/servertransaction/DexCompatRestartItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "DexCompatRestartItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/DexCompatRestartItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Landroid/app/servertransaction/DexCompatRestartItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/DexCompatRestartItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/DexCompatRestartItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 31
    return-void
.end method

.method public static blacklist obtain()Landroid/app/servertransaction/DexCompatRestartItem;
    .locals 2

    .line 34
    const-class v0, Landroid/app/servertransaction/DexCompatRestartItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/DexCompatRestartItem;

    .line 35
    .local v0, "instance":Landroid/app/servertransaction/DexCompatRestartItem;
    if-nez v0, :cond_0

    .line 36
    new-instance v1, Landroid/app/servertransaction/DexCompatRestartItem;

    invoke-direct {v1}, Landroid/app/servertransaction/DexCompatRestartItem;-><init>()V

    move-object v0, v1

    .line 38
    :cond_0
    return-object v0
.end method


# virtual methods
.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 0
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 56
    invoke-virtual {p1, p2}, Landroid/app/ClientTransactionHandler;->handleShowDexCompatRestartDialog(Landroid/os/IBinder;)V

    .line 57
    return-void
.end method

.method public blacklist recycle()V
    .locals 0

    .line 61
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 62
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    return-void
.end method
