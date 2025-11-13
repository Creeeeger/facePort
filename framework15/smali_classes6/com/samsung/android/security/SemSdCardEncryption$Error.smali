.class public final Lcom/samsung/android/security/SemSdCardEncryption$Error;
.super Ljava/lang/Object;
.source "SemSdCardEncryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/security/SemSdCardEncryption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation


# static fields
.field public static final blacklist DECRYPT:I = 0x6

.field public static final blacklist ENCRYPT:I = 0x5

.field public static final blacklist FILE_OPEN:I = 0xb

.field public static final blacklist MOUNT:I = 0x7

.field public static final blacklist NO:I = 0x0

.field public static final blacklist OTHER_ENCRYPT:I = 0x8

.field public static final blacklist PRESCAN_FULL:I = 0x4

.field public static final blacklist PWD_CREATE:I = 0x1

.field public static final blacklist PWD_DELETE:I = 0x3

.field public static final blacklist PWD_UPDATE:I = 0x2

.field public static final blacklist UNMOUNT:I = 0x8


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
