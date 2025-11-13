.class public abstract Landroid/app/servertransaction/ClientTransactionItem;
.super Ljava/lang/Object;
.source "ClientTransactionItem.java"

# interfaces
.implements Landroid/app/servertransaction/BaseClientRequest;
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/app/ClientTransactionHandler;)V
    .locals 1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getActivityToken()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getPostExecutionState()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist isActivityLifecycleItem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method blacklist shouldHaveDefinedPreExecutionState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
