.class public interface abstract Lcom/samsung/android/pass/IPassChecker;
.super Ljava/lang/Object;
.source "IPassChecker.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/pass/IPassChecker$Stub;,
        Lcom/samsung/android/pass/IPassChecker$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.pass.IPassChecker"


# virtual methods
.method public abstract blacklist hasPermission(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
