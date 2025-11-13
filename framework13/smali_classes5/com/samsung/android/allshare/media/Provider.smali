.class public abstract Lcom/samsung/android/allshare/media/Provider;
.super Lcom/samsung/android/allshare/Device;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;,
        Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;,
        Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;
    }
.end annotation


# direct methods
.method protected constructor whitelist <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/allshare/Device;-><init>()V

    .line 150
    return-void
.end method


# virtual methods
.method public abstract whitelist browse(Lcom/samsung/android/allshare/Item;II)V
.end method

.method public abstract blacklist getReceiver()Lcom/samsung/android/allshare/media/Receiver;
.end method

.method public abstract whitelist getRootFolder()Lcom/samsung/android/allshare/Item;
.end method

.method public abstract blacklist isSearchable()Z
.end method

.method public abstract whitelist search(Lcom/samsung/android/allshare/media/SearchCriteria;II)V
.end method

.method public abstract whitelist setBrowseItemsResponseListener(Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;)V
.end method

.method public abstract blacklist setEventListener(Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;)V
.end method

.method public abstract whitelist setSearchResponseListener(Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;)V
.end method
