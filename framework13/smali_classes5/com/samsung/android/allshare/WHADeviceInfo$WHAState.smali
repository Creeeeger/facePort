.class public Lcom/samsung/android/allshare/WHADeviceInfo$WHAState;
.super Ljava/lang/Object;
.source "WHADeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/WHADeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WHAState"
.end annotation


# static fields
.field public static final blacklist CLIENT:I = 0x3

.field public static final blacklist CLIENT_CONNECTING:I = 0x2

.field public static final blacklist DISABLED:I = 0x0

.field public static final blacklist FREE:I = 0x1

.field public static final blacklist MASTER:I = 0x4

.field public static final blacklist NA:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
