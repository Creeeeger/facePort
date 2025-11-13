.class public Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.super Ljava/lang/Object;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverStateListener"
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    return-void
.end method


# virtual methods
.method public greylist onCoverAttachStateChanged(Z)V
    .locals 0
    .param p1, "attached"    # Z

    .line 795
    return-void
.end method

.method public greylist onCoverSwitchStateChanged(Z)V
    .locals 0
    .param p1, "switchState"    # Z

    .line 786
    return-void
.end method
