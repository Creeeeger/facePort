.class public final Lcom/samsung/android/transcode/core/Encode$ConfigType;
.super Ljava/lang/Object;
.source "Encode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/core/Encode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigType"
.end annotation


# static fields
.field public static final blacklist AudioCodec:I = 0x2

.field public static final blacklist AudioMute:I = 0x7

.field public static final blacklist BitRate:I = 0x5

.field public static final blacklist Bitdepth:I = 0x4

.field public static final blacklist Framerate:I = 0x6

.field public static final blacklist MaxSize:I = 0x3

.field public static final blacklist VideoCodec:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
