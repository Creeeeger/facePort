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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

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

    iget-object v0, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$SemActivityControllerListener;

    invoke-interface {v1, p1}, Landroid/app/ActivityManager$SemActivityControllerListener;->onActivityResuming(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to abort onActivityResuming, pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/app/ActivityManager$SemActivityControllerListener;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$SemActivityControllerListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ActivityManager$SemActivityControllerListener;->onActivityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to abort onActivityStarting, pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/app/ActivityManager$SemActivityControllerListener;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

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

    move-object v3, v2

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v1}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$SemActivityControllerListener;

    invoke-interface {v2, p1, p2, p3}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    if-eq v0, v4, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    goto :goto_0

    :cond_2
    return v0
.end method

.method public blacklist appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v1}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$SemActivityControllerListener;

    invoke-interface {v2, p1, p2, p3}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    if-eq v0, v4, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    goto :goto_0

    :cond_2
    return v0
.end method

.method public blacklist systemNotResponding(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v1}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$SemActivityControllerListener;

    invoke-interface {v2, p1}, Landroid/app/ActivityManager$SemActivityControllerListener;->onSystemNotResponding(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    if-eq v0, v4, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    goto :goto_0

    :cond_2
    return v0
.end method
