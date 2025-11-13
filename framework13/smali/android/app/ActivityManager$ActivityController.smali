.class Landroid/app/ActivityManager$ActivityController;
.super Landroid/app/IActivityController$Stub;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityController"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityManager;


# direct methods
.method private constructor blacklist <init>(Landroid/app/ActivityManager;)V
    .locals 0

    .line 935
    iput-object p1, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityManager;Landroid/app/ActivityManager$ActivityController-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$ActivityController;-><init>(Landroid/app/ActivityManager;)V

    return-void
.end method


# virtual methods
.method public blacklist activityResuming(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 951
    const/4 v0, 0x1

    .line 952
    .local v0, "ret":Z
    iget-object v1, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v1}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 953
    iget-object v1, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v1}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 954
    .local v2, "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v2, p1}, Landroid/app/ActivityManager$SemActivityControllerListener;->onActivityResuming(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 955
    const/4 v0, 0x0

    .line 957
    .end local v2    # "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    :cond_0
    goto :goto_0

    .line 959
    :cond_1
    return v0
.end method

.method public blacklist activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 938
    const/4 v0, 0x1

    .line 939
    .local v0, "ret":Z
    iget-object v1, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v1}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 940
    iget-object v1, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v1}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 941
    .local v2, "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v2, p1, p2}, Landroid/app/ActivityManager$SemActivityControllerListener;->onActivityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 942
    const/4 v0, 0x0

    .line 944
    .end local v2    # "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    :cond_0
    goto :goto_0

    .line 946
    :cond_1
    return v0
.end method

.method public blacklist appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 12
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "m"    # Ljava/lang/String;
    .param p4, "m2"    # Ljava/lang/String;
    .param p5, "time"    # J
    .param p7, "st"    # Ljava/lang/String;

    .line 964
    move-object v0, p0

    const/4 v1, 0x1

    .line 965
    .local v1, "ret":Z
    iget-object v2, v0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 966
    iget-object v2, v0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 967
    .local v3, "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    move-object v4, v3

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    invoke-interface/range {v4 .. v11}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 968
    const/4 v1, 0x0

    .line 970
    .end local v3    # "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    :cond_0
    goto :goto_0

    .line 972
    :cond_1
    return v1
.end method

.method public blacklist appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "annotation"    # Ljava/lang/String;

    .line 977
    const/4 v0, 0x0

    .line 978
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 979
    .local v1, "tempRet":I
    iget-object v2, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 980
    iget-object v2, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 981
    .local v3, "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v3, p1, p2, p3}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 982
    if-eqz v1, :cond_1

    .line 983
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 984
    move v0, v1

    goto :goto_1

    .line 986
    :cond_0
    if-eq v0, v4, :cond_1

    .line 987
    move v0, v1

    .line 991
    .end local v3    # "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    :cond_1
    :goto_1
    goto :goto_0

    .line 993
    :cond_2
    return v0
.end method

.method public blacklist appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "st"    # Ljava/lang/String;

    .line 998
    const/4 v0, 0x0

    .line 999
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 1000
    .local v1, "tempRet":I
    iget-object v2, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1001
    iget-object v2, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 1002
    .local v3, "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v3, p1, p2, p3}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 1003
    if-eqz v1, :cond_1

    .line 1004
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 1005
    move v0, v1

    goto :goto_1

    .line 1007
    :cond_0
    if-eq v0, v4, :cond_1

    .line 1008
    move v0, v1

    .line 1012
    .end local v3    # "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1014
    :cond_2
    return v0
.end method

.method public blacklist systemNotResponding(Ljava/lang/String;)I
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .line 1019
    const/4 v0, 0x0

    .line 1020
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 1021
    .local v1, "tempRet":I
    iget-object v2, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1022
    iget-object v2, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 1023
    .local v3, "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v3, p1}, Landroid/app/ActivityManager$SemActivityControllerListener;->onSystemNotResponding(Ljava/lang/String;)I

    move-result v1

    .line 1024
    if-eqz v1, :cond_1

    .line 1025
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 1026
    move v0, v1

    goto :goto_1

    .line 1028
    :cond_0
    if-eq v0, v4, :cond_1

    .line 1029
    move v0, v1

    .line 1033
    .end local v3    # "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1035
    :cond_2
    return v0
.end method
