.class public Lcom/samsung/android/photoremasterservice/ServiceID;
.super Ljava/lang/Object;
.source "ServiceID.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/photoremasterservice/ServiceID$Description;
    }
.end annotation


# static fields
.field public static final blacklist MSG_DEINIT:I = 0x3

.field public static final blacklist MSG_EXCEPTION:I = -0x1

.field public static final blacklist MSG_GET_BITMAP_PARAM:I = 0x13

.field public static final blacklist MSG_GET_FOCUS_ROI:I = 0x11

.field public static final blacklist MSG_GET_INT_PARAM:I = 0xc

.field public static final blacklist MSG_GET_LONG_PARAM:I = 0xd

.field public static final blacklist MSG_GET_STRING_PARAM:I = 0xb

.field public static final blacklist MSG_INIT:I = 0x2

.field public static final blacklist MSG_ON_UPDATE_METADATA:I = 0xf

.field public static final blacklist MSG_ON_UPDATE_PROGRESS:I = 0x10

.field public static final blacklist MSG_PROCESS_AESTHETIC_SCORING:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist MSG_PROCESS_IMAGE:I = 0x5

.field public static final blacklist MSG_PROCESS_IMAGE_LEGACY:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist MSG_RET:I = 0x0

.field public static final blacklist MSG_SET_BITMAP_PARAM:I = 0x14

.field public static final blacklist MSG_SET_CONTEXT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist MSG_SET_LONG_PARAM:I = 0xa

.field public static final blacklist MSG_SET_PROGRESS_UPDATE_LISTENER:I = 0xe

.field public static final blacklist MSG_SET_STRING_PARAM:I = 0x9

.field public static final blacklist MSG_SET_URI_PARAM:I = 0x8

.field public static final blacklist MSG_STOP:I = 0x4

.field public static final blacklist MSG_TRY_INIT:I = 0x12

.field public static final blacklist TAG:Ljava/lang/String; = "PhotoRemasterServiceID"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
