.class public interface abstract Lcom/samsung/aasaservice/AASAServiceManager;
.super Ljava/lang/Object;
.source "AASAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/aasaservice/AASAServiceManager$Callback;
    }
.end annotation


# direct methods
.method public static blacklist create(Landroid/content/Context;)Lcom/samsung/aasaservice/AASAServiceManager;
    .locals 1

    new-instance v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist deinitialize()V
.end method

.method public abstract blacklist initialize(Lcom/samsung/aasaservice/AASAServiceManager$Callback;)V
.end method

.method public abstract blacklist notifyPolicyUpdateCompletion()V
.end method
