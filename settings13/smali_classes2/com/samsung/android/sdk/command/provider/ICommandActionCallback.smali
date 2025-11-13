.class public interface abstract Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;
.super Ljava/lang/Object;
.source "ICommandActionCallback.java"


# virtual methods
.method public abstract onActionFinished(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "responseResult",
            "responseMessage"
        }
    .end annotation
.end method

.method public abstract onActionFinished(ILjava/lang/String;Lcom/samsung/android/sdk/command/Command;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "responseResult",
            "responseMessage",
            "updatedCommand"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
