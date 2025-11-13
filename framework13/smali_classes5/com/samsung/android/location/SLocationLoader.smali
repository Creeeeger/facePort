.class public Lcom/samsung/android/location/SLocationLoader;
.super Ljava/lang/Object;
.source "SLocationLoader.java"


# static fields
.field private static final blacklist CLASS_SLocationService:Ljava/lang/String; = "com.samsung.android.location.SLocationService"

.field private static final blacklist METHOD_systemReady:Ljava/lang/String; = "systemReady"

.field private static final blacklist TAG:Ljava/lang/String; = "SLocation"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getClassFromLib(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    const-string v0, "com.samsung.android.location"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 43
    .local v0, "apkContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSLocationService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "sLocationService":Landroid/os/IBinder;
    const-string v1, "com.samsung.android.location.SLocationService"

    invoke-static {p0, v1}, Lcom/samsung/android/location/SLocationLoader;->getClassFromLib(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    .local v1, "sLocationServiceClass":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 53
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 55
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 57
    .local v2, "arglist":[Ljava/lang/Object;
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/IBinder;

    .line 60
    .end local v2    # "arglist":[Ljava/lang/Object;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_0
    return-object v0
.end method

.method public static blacklist systemReady(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    const-string v0, "com.samsung.android.location.SLocationService"

    invoke-static {p0, v0}, Lcom/samsung/android/location/SLocationLoader;->getClassFromLib(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    .local v0, "sLocationService":Ljava/lang/Class;
    invoke-static {p1}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 69
    .local v1, "service":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v0, :cond_0

    .line 70
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string/jumbo v4, "systemReady"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 71
    .local v3, "systemReady":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v3    # "systemReady":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method
