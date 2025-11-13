.class Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;
.super Ljava/lang/Object;
.source "SemDvfsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/os/SemDvfsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DvfsRequester"
.end annotation


# instance fields
.field blacklist func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/os/SemDvfsManager$RequestFunc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    return-void
.end method


# virtual methods
.method public blacklist acquire(IILjava/lang/String;I[I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->acquire(IILjava/lang/String;I[I)V

    :cond_0
    return-void
.end method

.method public blacklist checkHintExist(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    invoke-interface {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->checkHintExist(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkResourceExist(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    invoke-interface {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->checkResourceExist(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkSysfsIdExist(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    invoke-interface {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->checkSysfsIdExist(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportedFrequency(II)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->getSupportedFrequency(II)[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist release(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->release(II)V

    :cond_0
    return-void
.end method

.method public blacklist sysfsRead(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    invoke-interface {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->sysfsRead(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public blacklist sysfsWrite(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->sysfsWrite(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
