.class public interface abstract Lcom/samsung/android/sume/core/channel/BufferChannel;
.super Ljava/lang/Object;
.source "BufferChannel.java"

# interfaces
.implements Lcom/samsung/android/sume/core/channel/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/channel/BufferChannel$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/channel/Channel<",
        "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT:I = 0x0

.field public static final blacklist SUPPLY:I = 0x1

.field public static final blacklist SURFACE_RECEIVE:I = 0x2

.field public static final blacklist SURFACE_SEND:I = 0x3

.field public static final blacklist SURFACE_TRANSIT:I = 0x4
