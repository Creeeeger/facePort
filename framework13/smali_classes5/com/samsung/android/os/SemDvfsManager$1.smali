.class Lcom/samsung/android/os/SemDvfsManager$1;
.super Ljava/lang/Object;
.source "SemDvfsManager.java"

# interfaces
.implements Lcom/samsung/android/os/SemDvfsManager$RequestFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/os/SemDvfsManager;->createRequester(Z)Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/os/SemDvfsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/os/SemDvfsManager;

    .line 968
    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsManager$1;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acquire(IILjava/lang/String;I[I)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "token"    # I
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "hint"    # I
    .param p5, "list"    # [I

    .line 971
    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeAcquire(IILjava/lang/String;I[I)V

    .line 972
    return-void
.end method

.method public blacklist checkHintExist(I)Z
    .locals 1
    .param p1, "hint"    # I

    .line 1000
    invoke-static {p1}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeCheckHintExist(I)Z

    move-result v0

    return v0
.end method

.method public blacklist checkResourceExist(I)Z
    .locals 1
    .param p1, "resource"    # I

    .line 1005
    invoke-static {p1}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeCheckResourceExist(I)Z

    move-result v0

    return v0
.end method

.method public blacklist checkSysfsIdExist(I)Z
    .locals 1
    .param p1, "sysfsId"    # I

    .line 996
    invoke-static {p1}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeCheckSysfsIdExist(I)Z

    move-result v0

    return v0
.end method

.method public blacklist getSupportedFrequency(II)[I
    .locals 1
    .param p1, "type"    # I
    .param p2, "level"    # I

    .line 981
    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeGetSupportedFrequency(II)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist release(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "token"    # I

    .line 976
    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeRelease(II)V

    .line 977
    return-void
.end method

.method public blacklist sysfsRead(I)Ljava/lang/String;
    .locals 1
    .param p1, "sysfsId"    # I

    .line 991
    invoke-static {p1}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeSysfsRead(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist sysfsWrite(ILjava/lang/String;)V
    .locals 0
    .param p1, "sysfsId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 986
    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeSysfsWrite(ILjava/lang/String;)V

    .line 987
    return-void
.end method
