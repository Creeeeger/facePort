.class public interface abstract Lcom/samsung/android/ims/SemImsDmConfigListener;
.super Ljava/lang/Object;
.source "SemImsDmConfigListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;,
        Lcom/samsung/android/ims/SemImsDmConfigListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.ims.SemImsDmConfigListener"


# virtual methods
.method public abstract blacklist onChangeDmValue(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
