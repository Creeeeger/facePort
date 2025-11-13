.class public interface abstract Lretrofit2/Call;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# virtual methods
.method public abstract clone()Lretrofit2/Call;
.end method

.method public abstract enqueue(Lretrofit2/Callback;)V
.end method

.method public abstract execute()Lretrofit2/Response;
.end method

.method public abstract isCanceled()Z
.end method
