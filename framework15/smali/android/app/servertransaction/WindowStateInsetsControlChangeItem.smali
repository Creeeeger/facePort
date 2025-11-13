.class public Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;
.super Landroid/app/servertransaction/WindowStateTransactionItem;
.source "WindowStateInsetsControlChangeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "WindowStateInsetsControlChangeItem"


# instance fields
.field public blacklist mActiveControls:Landroid/view/InsetsSourceControl$Array;

.field private blacklist mInsetsState:Landroid/view/InsetsState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

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

    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    sget-object v0, Landroid/view/InsetsSourceControl$Array;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceControl$Array;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowStateInsetsControlChangeItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist obtain(Landroid/view/IWindow;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;
    .locals 3

    nop

    const-class v0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;

    invoke-direct {v1}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;-><init>()V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->setWindow(Landroid/view/IWindow;)V

    new-instance v1, Landroid/view/InsetsState;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object v1, v0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    new-instance v1, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v1, p2, v2}, Landroid/view/InsetsSourceControl$Array;-><init>(Landroid/view/InsetsSourceControl$Array;Z)V

    iput-object v1, v0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    iget-object v1, v0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {v1, v2}, Landroid/view/InsetsSourceControl$Array;->setParcelableFlags(I)V

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

    check-cast v1, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;

    iget-object v3, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    iget-object v4, v1, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    iget-object v4, v1, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

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
    .locals 5

    const-string/jumbo v0, "windowInsetsControlChanged"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-interface {p2, v0, v3}, Landroid/view/IWindow;->insetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "WindowStateInsetsControlChangeItem"

    const-string v4, "The original window no longer exists in the new process"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl$Array;->release()V

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

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

    iget-object v2, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist recycle()V
    .locals 1

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowStateInsetsControlChangeItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->toString()Ljava/lang/String;

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

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/WindowStateTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
