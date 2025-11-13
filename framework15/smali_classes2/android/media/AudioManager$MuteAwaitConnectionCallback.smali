.class public abstract Landroid/media/AudioManager$MuteAwaitConnectionCallback;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MuteAwaitConnectionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManager$MuteAwaitConnectionCallback$UnmuteEvent;
    }
.end annotation


# static fields
.field public static final whitelist EVENT_CANCEL:I = 0x3

.field public static final whitelist EVENT_CONNECTION:I = 0x1

.field public static final whitelist EVENT_TIMEOUT:I = 0x2


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onMutedUntilConnection(Landroid/media/AudioDeviceAttributes;[I)V
    .locals 0

    return-void
.end method

.method public whitelist onUnmutedEvent(ILandroid/media/AudioDeviceAttributes;[I)V
    .locals 0

    return-void
.end method
