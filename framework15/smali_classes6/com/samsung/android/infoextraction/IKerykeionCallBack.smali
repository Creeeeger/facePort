.class public interface abstract Lcom/samsung/android/infoextraction/IKerykeionCallBack;
.super Ljava/lang/Object;
.source "IKerykeionCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/infoextraction/IKerykeionCallBack$Stub;,
        Lcom/samsung/android/infoextraction/IKerykeionCallBack$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.infoextraction.IKerykeionCallBack"


# virtual methods
.method public abstract blacklist onCompleted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/infoextraction/SemExtractedInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
