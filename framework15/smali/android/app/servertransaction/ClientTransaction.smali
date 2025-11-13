.class public Landroid/app/servertransaction/ClientTransaction;
.super Ljava/lang/Object;
.source "ClientTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/app/servertransaction/ObjectPoolItem;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ClientTransaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist mActivityCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mActivityToken:Landroid/os/IBinder;

.field private greylist-max-o mClient:Landroid/app/IApplicationThread;

.field private greylist-max-o mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

.field private blacklist mTransactionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/ClientTransaction$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ClientTransaction$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ClientTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v3}, Landroid/app/servertransaction/ClientTransactionItem;->isActivityLifecycleItem()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-direct {p0, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/servertransaction/ActivityLifecycleItem;

    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-direct {p0, v1}, Landroid/app/servertransaction/ClientTransaction;->setActivityTokenIfNotSet(Landroid/app/servertransaction/ClientTransactionItem;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    if-nez v4, :cond_3

    if-ge v3, v2, :cond_3

    iget-object v4, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-direct {p0, v4}, Landroid/app/servertransaction/ClientTransaction;->setActivityTokenIfNotSet(Landroid/app/servertransaction/ClientTransactionItem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ClientTransaction-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ClientTransaction;->setActivityTokenIfNotSet(Landroid/app/servertransaction/ClientTransactionItem;)V

    return-void
.end method

.method public static blacklist obtain(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;
    .locals 2

    const-class v0, Landroid/app/servertransaction/ClientTransaction;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/servertransaction/ClientTransaction;

    invoke-direct {v1}, Landroid/app/servertransaction/ClientTransaction;-><init>()V

    move-object v0, v1

    :cond_0
    iput-object p0, v0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method private blacklist setActivityTokenIfNotSet(Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 1

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method private greylist-max-o setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ClientTransaction;->setActivityTokenIfNotSet(Landroid/app/servertransaction/ClientTransactionItem;)V

    return-void
.end method


# virtual methods
.method public blacklist addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 1

    invoke-static {}, Lcom/android/window/flags/Flags;->bundleClientTransactionFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransactionItem;->isActivityLifecycleItem()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-direct {p0, v0}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    :goto_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/app/ClientTransactionHandler;)V
    .locals 6

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "ClientTransaction{"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    const-string v1, "  ]"

    const-string/jumbo v2, "}"

    const-string v3, "]"

    const-string v4, "    "

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v5, "  transactionItems=["

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    iget-object v5, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v5, v0, p2, p3}, Landroid/app/servertransaction/ClientTransactionItem;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/app/ClientTransactionHandler;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v5, "  callbacks=["

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-lez v4, :cond_5

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_4

    iget-object v5, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v5, v0, p2, p3}, Landroid/app/servertransaction/ClientTransactionItem;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/app/ClientTransactionHandler;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v3, "  stateRequest="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-virtual {v1, v0, p2, p3}, Landroid/app/servertransaction/ActivityLifecycleItem;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/app/ClientTransactionHandler;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v3, "null"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/ClientTransaction;

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public greylist getActivityToken()Landroid/os/IBinder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getClient()Landroid/app/IApplicationThread;
    .locals 1

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method public greylist getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    return-object v0
.end method

.method public blacklist getTransactionItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public greylist-max-o preExecute(Landroid/app/ClientTransactionHandler;)V
    .locals 3

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v2, p1}, Landroid/app/servertransaction/ClientTransactionItem;->preExecute(Landroid/app/ClientTransactionHandler;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v2, p1}, Landroid/app/servertransaction/ClientTransactionItem;->preExecute(Landroid/app/ClientTransactionHandler;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-virtual {v0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;->preExecute(Landroid/app/ClientTransactionHandler;)V

    :cond_3
    return-void
.end method

.method public greylist-max-o recycle()V
    .locals 4

    invoke-static {}, Lcom/android/window/flags/Flags;->disableObjectPool()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v3}, Landroid/app/servertransaction/ClientTransactionItem;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v3}, Landroid/app/servertransaction/ClientTransactionItem;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    :cond_4
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-virtual {v0}, Landroid/app/servertransaction/ActivityLifecycleItem;->recycle()V

    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    :cond_5
    :goto_2
    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public greylist-max-o schedule()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    invoke-interface {v0, p0}, Landroid/app/IApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientTransaction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    const-string v2, "\n    "

    const-string v3, "\n  ]"

    if-eqz v1, :cond_1

    const-string v1, "\n  transactionItems=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const-string v1, "\n  callbacks=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  stateRequest="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    :cond_3
    :goto_2
    return-void
.end method
