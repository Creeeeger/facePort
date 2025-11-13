.class public interface abstract Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;
.super Ljava/lang/Object;
.source "ISemExclusiveTaskManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sepunion/ISemExclusiveTaskManager$Stub;,
        Lcom/samsung/android/sepunion/ISemExclusiveTaskManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.sepunion.ISemExclusiveTaskManager"


# virtual methods
.method public abstract blacklist getExclusiveTaskList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
