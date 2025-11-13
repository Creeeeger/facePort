.class final Landroid/service/dreams/DreamService$DreamServiceWrapper;
.super Landroid/service/dreams/IDreamService$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DreamServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/dreams/DreamService;


# direct methods
.method public static synthetic blacklist $r8$lambda$1LeV6PgvJQarx7-tBMQHBSWLLCM(Landroid/service/dreams/DreamService;)V
    .locals 0

    invoke-static {p0}, Landroid/service/dreams/DreamService;->-$$Nest$mdetach(Landroid/service/dreams/DreamService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3WvVtP5_k-GzY07_b3gDYRE4FHM(Landroid/service/dreams/DreamService;)V
    .locals 0

    invoke-static {p0}, Landroid/service/dreams/DreamService;->-$$Nest$mcomeToFront(Landroid/service/dreams/DreamService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SFP-NasoKFNaaOvKHyJqrl_aPt8(Landroid/service/dreams/DreamService$DreamServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->lambda$wakeUp$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qZQt1eTV7mVHINo-KqXowFEDhzA(Landroid/service/dreams/DreamService$DreamServiceWrapper;Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->lambda$attach$0(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/dreams/DreamService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamService$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$attach$0(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/service/dreams/DreamService;->-$$Nest$mattach(Landroid/service/dreams/DreamService;Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$wakeUp$1()V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->-$$Nest$mwakeUp(Landroid/service/dreams/DreamService;Z)V

    return-void
.end method


# virtual methods
.method public blacklist attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .locals 8

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist comeToFront()V
    .locals 3

    invoke-static {}, Landroid/service/dreams/Flags;->dreamHandlesBeingObscured()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    new-instance v2, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public greylist-max-o detach()V
    .locals 3

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    new-instance v2, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public greylist-max-o wakeUp()V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
