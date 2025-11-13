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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    if-nez v2, :cond_2

    return v0

    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    iget-object v3, v2, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    nop

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
