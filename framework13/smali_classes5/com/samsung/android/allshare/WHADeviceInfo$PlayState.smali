.class public Lcom/samsung/android/allshare/WHADeviceInfo$PlayState;
.super Ljava/lang/Object;
.source "WHADeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/WHADeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayState"
.end annotation


# static fields
.field public static final blacklist CLIENT_STAND_BY:I = 0x64

.field public static final blacklist PLAYING:I = 0x1

.field public static final blacklist STOPPED:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
