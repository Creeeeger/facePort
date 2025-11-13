.class public Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;
.super Ljava/lang/Object;
.source "SemInputDeviceManagerLoader.java"


# static fields
.field private static final blacklist SECINPUTDEV_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerService"

.field private static final blacklist SECINPUTDEV_SERVICE_JAR_PATH:Ljava/lang/String; = "/system/framework/secinputdev-service.jar"

.field private static final blacklist TAG:Ljava/lang/String; = "SemInputDeviceManagerLoader"

.field private static blacklist secinputdevClass:Ljava/lang/Class;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->secinputdevClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist classLoadFromJar()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v1, "/system/framework/secinputdev-service.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v1, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerService"

    invoke-virtual {v0, v1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->secinputdevClass:Ljava/lang/Class;

    return-void
.end method

.method private static blacklist classLoadFromServices()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->secinputdevClass:Ljava/lang/Class;

    return-void
.end method

.method public static blacklist getService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->secinputdevClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->classLoadFromJar()V

    :cond_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->secinputdevClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    return-object v1
.end method

.method public static blacklist systemReady()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->secinputdevClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->secinputdevClass:Ljava/lang/Class;

    const-string v1, "systemReady"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerLoader;->secinputdevClass:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "SemInputDeviceManagerLoader"

    const-string v1, "systemReady: secinpudevclass is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
