.class Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
.super Ljava/lang/Object;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field blacklist mBundle:Landroid/os/Bundle;

.field blacklist mEventId:Ljava/lang/String;

.field blacklist mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handler"    # Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    .line 1338
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    .line 1340
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 1343
    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    .line 1344
    iput-object p2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    .line 1345
    iput-object p3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 1346
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1350
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1351
    return v0

    .line 1352
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 1353
    return v1

    .line 1354
    :cond_1
    instance-of v2, p1, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    if-nez v2, :cond_2

    .line 1355
    return v0

    .line 1356
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    .line 1357
    .local v2, "obj":Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    iget-object v3, v2, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    .line 1358
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 1359
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    nop

    .line 1357
    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 1364
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
