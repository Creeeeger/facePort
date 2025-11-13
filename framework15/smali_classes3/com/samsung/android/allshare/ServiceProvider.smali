.class public abstract Lcom/samsung/android/allshare/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"


# static fields
.field public static final whitelist SERVICE_MEDIA:Ljava/lang/String; = "com.samsung.android.allshare.media"


# direct methods
.method protected constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinder;
.end method

.method public abstract whitelist getDownloader()Lcom/samsung/android/allshare/extension/SECDownloader;
.end method

.method public abstract blacklist getServiceState()Lcom/samsung/android/allshare/ServiceConnector$ServiceState;
.end method

.method public abstract blacklist getServiceVersion()Ljava/lang/String;
.end method
