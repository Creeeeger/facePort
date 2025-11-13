.class public final Lcom/samsung/android/media/codec/SemVideoTranscoder$ConfigType;
.super Ljava/lang/Object;
.source "SemVideoTranscoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/SemVideoTranscoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigType"
.end annotation


# static fields
.field public static final whitelist audioCodec:I = 0x2

.field public static final whitelist audioMute:I = 0x7

.field public static final whitelist bitDepth:I = 0x4

.field public static final whitelist bitRate:I = 0x5

.field public static final whitelist frameRate:I = 0x6

.field public static final whitelist maxSize:I = 0x3

.field public static final whitelist videoCodec:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
