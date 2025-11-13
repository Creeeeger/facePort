.class public interface abstract Lcom/samsung/android/sume/core/service/ServiceController;
.super Ljava/lang/Object;
.source "ServiceController.java"


# virtual methods
.method public abstract blacklist createMediaFilterController()I
.end method

.method public abstract blacklist releaseMediaFilterController(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract blacklist request(ILcom/samsung/android/sume/core/message/Request;)Lcom/samsung/android/sume/core/message/Response;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "request"
        }
    .end annotation
.end method
