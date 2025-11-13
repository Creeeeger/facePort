.class public interface abstract Landroid/sec/clipboard/data/IClipboardDataList;
.super Ljava/lang/Object;
.source "IClipboardDataList.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/IClipboardDataList$Stub;,
        Landroid/sec/clipboard/data/IClipboardDataList$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.data.IClipboardDataList"


# virtual methods
.method public abstract blacklist getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeData(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist size()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
