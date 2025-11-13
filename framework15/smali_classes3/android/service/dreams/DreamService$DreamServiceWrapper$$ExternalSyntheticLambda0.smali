.class public final synthetic Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/dreams/DreamService$DreamServiceWrapper;

.field public final synthetic blacklist f$1:Landroid/os/IBinder;

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Z

.field public final synthetic blacklist f$4:Landroid/os/IRemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    iput-object p2, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iput-boolean p3, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$2:Z

    iput-boolean p4, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$3:Z

    iput-object p5, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$4:Landroid/os/IRemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 5

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    iget-object v1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iget-boolean v2, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$2:Z

    iget-boolean v3, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$3:Z

    iget-object v4, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$4:Landroid/os/IRemoteCallback;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->$r8$lambda$qZQt1eTV7mVHINo-KqXowFEDhzA(Landroid/service/dreams/DreamService$DreamServiceWrapper;Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    return-void
.end method
