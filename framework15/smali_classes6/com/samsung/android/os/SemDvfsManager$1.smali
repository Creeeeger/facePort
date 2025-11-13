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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsManager$1;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acquire(IILjava/lang/String;I[I)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeAcquire(IILjava/lang/String;I[I)V

    return-void
.end method

.method public blacklist checkHintExist(I)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeCheckHintExist(I)Z

    move-result v0

    return v0
.end method

.method public blacklist checkResourceExist(I)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeCheckResourceExist(I)Z

    move-result v0

    return v0
.end method

.method public blacklist checkSysfsIdExist(I)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeCheckSysfsIdExist(I)Z

    move-result v0

    return v0
.end method

.method public blacklist getSupportedFrequency(II)[I
    .locals 1

    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeGetSupportedFrequency(II)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist release(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeRelease(II)V

    return-void
.end method

.method public blacklist sysfsRead(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeSysfsRead(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist sysfsWrite(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeSysfsWrite(ILjava/lang/String;)V

    return-void
.end method
