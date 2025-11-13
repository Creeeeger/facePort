.class public final Landroid/os/ArtModuleServiceManager$ServiceRegisterer;
.super Ljava/lang/Object;
.source "ArtModuleServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ArtModuleServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceRegisterer"
.end annotation


# instance fields
.field private final blacklist mServiceName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist waitForService()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
