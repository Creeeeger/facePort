.class public abstract Landroid/app/servertransaction/WindowStateTransactionItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "WindowStateTransactionItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;
    }
.end annotation


# instance fields
.field private blacklist mWindow:Landroid/view/IWindow;


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    return-void
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

    check-cast v0, Landroid/app/servertransaction/WindowStateTransactionItem;

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    iget-object v2, v0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2

    iget-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    instance-of v1, v0, Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;

    invoke-interface {v0}, Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;->onExecutingWindowStateTransactionItem()V

    :cond_0
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/servertransaction/WindowStateTransactionItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V

    return-void
.end method

.method public abstract blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist recycle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    return-void
.end method

.method blacklist setWindow(Landroid/view/IWindow;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindow;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
