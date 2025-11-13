.class public Landroid/os/LazyService$DefaultServiceCreator;
.super Ljava/lang/Object;
.source "LazyService.java"

# interfaces
.implements Landroid/os/IServiceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/LazyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultServiceCreator"
.end annotation


# instance fields
.field private blacklist mConstructor:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/LazyService$DefaultServiceCreator;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 116
    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    const/4 v0, 0x0

    .line 123
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_0
    iget-object v1, p0, Landroid/os/LazyService$DefaultServiceCreator;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 127
    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    const-string v2, "LazyService"

    const-string v3, "Error in createService (DefaultServiceCreator)"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    sget-object v2, Landroid/os/LazyService;->historyServices:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure creating Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    return-object v0
.end method
