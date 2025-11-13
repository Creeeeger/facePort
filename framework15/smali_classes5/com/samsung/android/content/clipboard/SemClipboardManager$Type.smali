.class public Lcom/samsung/android/content/clipboard/SemClipboardManager$Type;
.super Ljava/lang/Object;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/clipboard/SemClipboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final whitelist ALL:I = -0x1

.field public static final whitelist HTML:I = 0x4

.field public static final whitelist IMAGE:I = 0x2

.field public static final whitelist INTENT:I = 0x8

.field public static final whitelist NONE:I = 0x0

.field public static final whitelist TEXT:I = 0x1

.field public static final whitelist URI:I = 0x10

.field public static final whitelist URI_LIST:I = 0x20


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
