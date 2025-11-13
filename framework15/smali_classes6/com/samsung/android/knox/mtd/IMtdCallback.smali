.class public interface abstract Lcom/samsung/android/knox/mtd/IMtdCallback;
.super Ljava/lang/Object;
.source "IMtdCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/mtd/IMtdCallback$Stub;,
        Lcom/samsung/android/knox/mtd/IMtdCallback$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.mtd.IMtdCallback"


# virtual methods
.method public abstract greylist onFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/mtd/AnalysisResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
