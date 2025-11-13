.class public Lcom/samsung/android/sume/core/service/LocalService$LocalBinder;
.super Landroid/os/Binder;
.source "LocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/service/LocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/core/service/LocalService;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/service/LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/service/LocalService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/samsung/android/sume/core/service/LocalService$LocalBinder;->this$0:Lcom/samsung/android/sume/core/service/LocalService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getService()Lcom/samsung/android/sume/core/service/LocalService;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalService$LocalBinder;->this$0:Lcom/samsung/android/sume/core/service/LocalService;

    return-object v0
.end method
