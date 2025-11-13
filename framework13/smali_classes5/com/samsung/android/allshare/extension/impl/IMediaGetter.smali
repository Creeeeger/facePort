.class public interface abstract Lcom/samsung/android/allshare/extension/impl/IMediaGetter;
.super Ljava/lang/Object;
.source "IMediaGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/extension/impl/IMediaGetter$IMediaGetterConnection;
    }
.end annotation


# virtual methods
.method public abstract blacklist cancel(Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
.end method

.method public abstract blacklist start(Lcom/samsung/android/allshare/media/Provider;Lcom/samsung/android/allshare/Item$MediaType;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
.end method

.method public abstract blacklist start(Lcom/samsung/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/media/Provider;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$MediaType;",
            ">;",
            "Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;",
            ")V"
        }
    .end annotation
.end method
