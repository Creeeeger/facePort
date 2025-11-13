.class public interface abstract Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;
.super Ljava/lang/Object;
.source "IKnoxAnalyticsProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy$Stub;,
        Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.knoxanalyticsproxy.IKnoxAnalyticsProxy"


# virtual methods
.method public abstract blacklist log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
