.class public interface abstract Lcom/android/internal/widget/IUpdateVerifierCallback;
.super Ljava/lang/Object;
.source "IUpdateVerifierCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IUpdateVerifierCallback$Stub;,
        Lcom/android/internal/widget/IUpdateVerifierCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.IUpdateVerifierCallback"


# virtual methods
.method public abstract blacklist onReceiveSaGuid(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
