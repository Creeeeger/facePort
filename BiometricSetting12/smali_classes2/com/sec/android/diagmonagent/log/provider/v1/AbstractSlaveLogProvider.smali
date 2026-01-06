.class public abstract Lcom/sec/android/diagmonagent/log/provider/v1/AbstractSlaveLogProvider;
.super Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;
.source "AbstractSlaveLogProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 3

    invoke-super {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->onCreate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractSlaveLogProvider;->data:Landroid/os/Bundle;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string v2, "authorityList"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0
.end method
