.class Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;
.super Ljava/lang/Object;
.source "SemDvfsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/os/SemDvfsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DvfsRequester"
.end annotation


# instance fields
.field blacklist func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

.field final synthetic blacklist this$0:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/os/SemDvfsManager;Lcom/samsung/android/os/SemDvfsManager$RequestFunc;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/os/SemDvfsManager;
    .param p2, "requestFunc"    # Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    .line 889
    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    .line 890
    iput-object p2, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    .line 891
    return-void
.end method


# virtual methods
.method public blacklist acquire(IILjava/lang/String;I[I)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "token"    # I
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "hint"    # I
    .param p5, "list"    # [I

    .line 894
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    .line 895
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->acquire(IILjava/lang/String;I[I)V

    .line 897
    :cond_0
    return-void
.end method

.method public blacklist checkHintExist(I)Z
    .locals 1
    .param p1, "hint"    # I

    .line 933
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    .line 934
    invoke-interface {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->checkHintExist(I)Z

    move-result v0

    return v0

    .line 936
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkResourceExist(I)Z
    .locals 1
    .param p1, "resource"    # I

    .line 940
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    .line 941
    invoke-interface {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->checkResourceExist(I)Z

    move-result v0

    return v0

    .line 943
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkSysfsIdExist(I)Z
    .locals 1
    .param p1, "sysfsId"    # I

    .line 926
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    .line 927
    invoke-interface {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->checkSysfsIdExist(I)Z

    move-result v0

    return v0

    .line 929
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportedFrequency(II)[I
    .locals 1
    .param p1, "type"    # I
    .param p2, "level"    # I

    .line 906
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    .line 907
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->getSupportedFrequency(II)[I

    move-result-object v0

    return-object v0

    .line 909
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist release(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "token"    # I

    .line 900
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    .line 901
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->release(II)V

    .line 903
    :cond_0
    return-void
.end method

.method public blacklist sysfsRead(I)Ljava/lang/String;
    .locals 1
    .param p1, "sysfsId"    # I

    .line 919
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    .line 920
    invoke-interface {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->sysfsRead(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 922
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public blacklist sysfsWrite(ILjava/lang/String;)V
    .locals 1
    .param p1, "sysfsId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 913
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_0

    .line 914
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->sysfsWrite(ILjava/lang/String;)V

    .line 916
    :cond_0
    return-void
.end method
