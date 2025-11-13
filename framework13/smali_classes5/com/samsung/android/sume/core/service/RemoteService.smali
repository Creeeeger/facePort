.class public abstract Lcom/samsung/android/sume/core/service/RemoteService;
.super Lcom/samsung/android/sume/core/service/ServiceStub;
.source "RemoteService.java"

# interfaces
.implements Lcom/samsung/android/sume/core/service/ServiceController;
.implements Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/sume/core/service/ServiceStub;-><init>()V

    return-void
.end method
