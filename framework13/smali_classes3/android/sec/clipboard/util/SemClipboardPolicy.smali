.class public Landroid/sec/clipboard/util/SemClipboardPolicy;
.super Ljava/lang/Object;
.source "SemClipboardPolicy.java"


# static fields
.field private static blacklist sInstance:Landroid/sec/clipboard/util/SemClipboardPolicy;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/clipboard/util/SemClipboardPolicy;->sInstance:Landroid/sec/clipboard/util/SemClipboardPolicy;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/sec/clipboard/util/SemClipboardPolicy;
    .locals 1

    .line 16
    sget-object v0, Landroid/sec/clipboard/util/SemClipboardPolicy;->sInstance:Landroid/sec/clipboard/util/SemClipboardPolicy;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Landroid/sec/clipboard/util/SemClipboardPolicy;

    invoke-direct {v0}, Landroid/sec/clipboard/util/SemClipboardPolicy;-><init>()V

    sput-object v0, Landroid/sec/clipboard/util/SemClipboardPolicy;->sInstance:Landroid/sec/clipboard/util/SemClipboardPolicy;

    .line 19
    :cond_0
    sget-object v0, Landroid/sec/clipboard/util/SemClipboardPolicy;->sInstance:Landroid/sec/clipboard/util/SemClipboardPolicy;

    return-object v0
.end method


# virtual methods
.method public blacklist isSemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/samsung/android/app/SemExecutableWhitelist;->getInstance()Lcom/samsung/android/app/SemExecutableWhitelist;

    move-result-object v0

    .line 24
    .local v0, "allowList":Lcom/samsung/android/app/SemExecutableWhitelist;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/SemExecutableWhitelist;->isAllowedToUseOrder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
