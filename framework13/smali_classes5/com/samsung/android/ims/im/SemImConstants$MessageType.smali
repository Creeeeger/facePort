.class public interface abstract Lcom/samsung/android/ims/im/SemImConstants$MessageType;
.super Ljava/lang/Object;
.source "SemImConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/im/SemImConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageType"
.end annotation


# static fields
.field public static final whitelist LOCATION:I = 0x2

.field public static final whitelist MULTIMEDIA:I = 0x0

.field public static final whitelist MULTIMEDIA_BURN:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MULTIMEDIA_PUBLICACCOUNT:I = 0xb

.field public static final whitelist SYSTEM:I = 0x3

.field public static final whitelist SYSTEM_CONTINUE_ON_ANOTHER_DEVICE:I = 0x7

.field public static final whitelist SYSTEM_LEADER_CHANGED:I = 0x8

.field public static final whitelist SYSTEM_LEADER_INFORMED:I = 0xd

.field public static final whitelist SYSTEM_USER_INVITED:I = 0x5

.field public static final whitelist SYSTEM_USER_JOINED:I = 0x6

.field public static final whitelist SYSTEM_USER_LEFT:I = 0x4

.field public static final whitelist TEXT:I = 0x1

.field public static final whitelist TEXT_BURN:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TEXT_PUBLICACCOUNT:I = 0xc
