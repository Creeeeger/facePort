.class public interface abstract Lcom/samsung/android/sume/core/service/ServiceProxy;
.super Ljava/lang/Object;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/service/ServiceProxy$Action;,
        Lcom/samsung/android/sume/core/service/ServiceProxy$Option;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_START_FOREGROUND:Ljava/lang/String; = "start-foreground"

.field public static final blacklist ACTION_STOP_FOREGROUND:Ljava/lang/String; = "start-foreground"

.field public static final blacklist OPTION_AS_DAEMON:I = 0x1

.field public static final blacklist OPTION_AS_FOREGROUND:I


# direct methods
.method public static blacklist of(Landroid/content/Context;)Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static blacklist of(Landroid/content/Context;Ljava/lang/Class;)Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/android/sume/core/service/ServiceProxySupplier;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 50
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static blacklist of(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 54
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sume/core/service/ServiceProxy;->of(Landroid/content/Context;Ljava/lang/Class;)Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName",
            "serviceName"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getBinder()Landroid/os/IBinder;
.end method

.method public abstract blacklist getExceptionHandler()Lcom/samsung/android/sume/core/functional/ExceptionHandler;
.end method

.method public abstract blacklist release()V
.end method

.method public abstract blacklist request(Lcom/samsung/android/sume/core/message/Request;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/message/Request;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/samsung/android/sume/core/message/Response;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist setEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventListener"
        }
    .end annotation
.end method

.method public abstract blacklist setExceptionHandler(Lcom/samsung/android/sume/core/functional/ExceptionHandler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exceptionHandler"
        }
    .end annotation
.end method
