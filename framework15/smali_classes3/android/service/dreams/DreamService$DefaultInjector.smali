.class final Landroid/service/dreams/DreamService$DefaultInjector;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Landroid/service/dreams/DreamService$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultInjector"
.end annotation


# instance fields
.field private blacklist mClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/dreams/DreamService$DefaultInjector-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamService$DefaultInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createOverlayConnection(Landroid/content/ComponentName;)Landroid/service/dreams/DreamOverlayConnectionHandler;
    .locals 9

    iget-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v8, Landroid/service/dreams/DreamOverlayConnectionHandler;

    iget-object v2, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const v1, 0x10e00e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v1, 0x10e00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v1, 0x10e00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/service/dreams/DreamOverlayConnectionHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/content/Intent;III)V

    return-object v8
.end method

.method public blacklist getDreamActivityComponent()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    const-class v2, Landroid/service/dreams/DreamActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public blacklist getDreamComponent()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mClassName:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public blacklist getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDreamPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public blacklist getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/service/dreams/DreamService$DefaultInjector;->getDreamComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->-$$Nest$smfetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mClassName:Ljava/lang/Class;

    return-void
.end method
