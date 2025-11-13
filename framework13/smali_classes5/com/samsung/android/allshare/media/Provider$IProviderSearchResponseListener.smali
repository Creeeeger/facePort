.class public interface abstract Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IProviderSearchResponseListener"
.end annotation


# virtual methods
.method public abstract onSearchResponseReceived(Ljava/util/ArrayList;IILcom/samsung/android/allshare/media/SearchCriteria;ZLcom/samsung/android/allshare/ERROR;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;II",
            "Lcom/samsung/android/allshare/media/SearchCriteria;",
            "Z",
            "Lcom/samsung/android/allshare/ERROR;",
            ")V"
        }
    .end annotation
.end method
