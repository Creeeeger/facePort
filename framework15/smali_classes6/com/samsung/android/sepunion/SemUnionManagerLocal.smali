.class public abstract Lcom/samsung/android/sepunion/SemUnionManagerLocal;
.super Ljava/lang/Object;
.source "SemUnionManagerLocal.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist accessoryStateChanged(Z[B[B)V
.end method

.method public abstract blacklist createSemSystemService(Ljava/lang/String;)V
.end method

.method public abstract blacklist getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;
.end method

.method public abstract blacklist notifyCoverSwitchStateChanged(JZ)V
.end method

.method public abstract blacklist notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
.end method

.method public abstract blacklist screenTurnedOff()V
.end method
