.class public final Landroidx/room/MultiInstanceInvalidationService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final binder:Landroidx/room/MultiInstanceInvalidationService$binder$1;

.field public final callbackList:Landroidx/room/MultiInstanceInvalidationService$callbackList$1;

.field public final clientNames:Ljava/util/Map;

.field public maxClientId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->clientNames:Ljava/util/Map;

    new-instance v0, Landroidx/room/MultiInstanceInvalidationService$callbackList$1;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationService$callbackList$1;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->callbackList:Landroidx/room/MultiInstanceInvalidationService$callbackList$1;

    new-instance v0, Landroidx/room/MultiInstanceInvalidationService$binder$1;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationService$binder$1;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->binder:Landroidx/room/MultiInstanceInvalidationService$binder$1;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->binder:Landroidx/room/MultiInstanceInvalidationService$binder$1;

    return-object p0
.end method
