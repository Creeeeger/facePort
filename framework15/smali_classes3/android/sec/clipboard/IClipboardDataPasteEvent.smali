.class public interface abstract Landroid/sec/clipboard/IClipboardDataPasteEvent;
.super Ljava/lang/Object;
.source "IClipboardDataPasteEvent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;,
        Landroid/sec/clipboard/IClipboardDataPasteEvent$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardDataPasteEvent"


# virtual methods
.method public abstract blacklist onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
