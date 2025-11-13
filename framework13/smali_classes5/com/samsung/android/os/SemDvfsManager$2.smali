.class Lcom/samsung/android/os/SemDvfsManager$2;
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

    .line 1011
    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acquire(IILjava/lang/String;I[I)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "token"    # I
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "hint"    # I
    .param p5, "list"    # [I

    .line 1015
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/os/CustomFrequencyManager;->acquire(IILjava/lang/String;I[I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    goto :goto_0

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1019
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method public blacklist checkHintExist(I)Z
    .locals 1
    .param p1, "hint"    # I

    .line 1071
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/CustomFrequencyManager;->checkHintExist(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1075
    .end local v0    # "e":Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkResourceExist(I)Z
    .locals 1
    .param p1, "resource"    # I

    .line 1081
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/CustomFrequencyManager;->checkResourceExist(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1085
    .end local v0    # "e":Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkSysfsIdExist(I)Z
    .locals 1
    .param p1, "sysfsId"    # I

    .line 1062
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/CustomFrequencyManager;->checkSysfsIdExist(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1066
    .end local v0    # "e":Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportedFrequency(II)[I
    .locals 1
    .param p1, "type"    # I
    .param p2, "level"    # I

    .line 1033
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/CustomFrequencyManager;->getSupportedFrequency(II)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1037
    .end local v0    # "e":Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist release(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "token"    # I

    .line 1024
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/CustomFrequencyManager;->release(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    goto :goto_0

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1028
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method public blacklist sysfsRead(I)Ljava/lang/String;
    .locals 1
    .param p1, "sysfsId"    # I

    .line 1052
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/CustomFrequencyManager;->readSysfs(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1056
    .end local v0    # "e":Ljava/lang/NullPointerException;
    const-string v0, ""

    return-object v0
.end method

.method public blacklist sysfsWrite(ILjava/lang/String;)V
    .locals 1
    .param p1, "sysfsId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1043
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/CustomFrequencyManager;->writeSysfs(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    goto :goto_0

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1047
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method
