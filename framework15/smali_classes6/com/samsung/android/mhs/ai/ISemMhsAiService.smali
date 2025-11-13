.class public interface abstract Lcom/samsung/android/mhs/ai/ISemMhsAiService;
.super Ljava/lang/Object;
.source "ISemMhsAiService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mhs/ai/ISemMhsAiService$Stub;,
        Lcom/samsung/android/mhs/ai/ISemMhsAiService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mhs.ai.ISemMhsAiService"


# virtual methods
.method public abstract blacklist serviceTypeQuery([[F[Ljava/lang/String;[II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist toggleDebugMode(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
