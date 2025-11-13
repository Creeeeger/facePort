.class public Lcom/samsung/android/knox/dar/DarRune;
.super Ljava/lang/Object;
.source "DarRune.java"


# static fields
.field public static final blacklist KNOX_SUPPORT_DAR_SDP_LOG:Z = true

.field public static final blacklist KNOX_SUPPORT_DAR_SDP_OR_DUAL:Z = true

.field public static final blacklist KNOX_SUPPORT_DAR_SECURE_FOLDER:Z = true

.field public static final blacklist KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

.field public static final blacklist KNOX_SUPPORT_DAR_WEAVER:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "DarRune"

.field private static blacklist sInstance:Lcom/samsung/android/knox/dar/DarRune;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/knox/dar/DarRune;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/knox/dar/DarRune;
    .locals 1

    .line 38
    sget-object v0, Lcom/samsung/android/knox/dar/DarRune;->sInstance:Lcom/samsung/android/knox/dar/DarRune;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/samsung/android/knox/dar/DarRune;

    invoke-direct {v0}, Lcom/samsung/android/knox/dar/DarRune;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/dar/DarRune;->sInstance:Lcom/samsung/android/knox/dar/DarRune;

    .line 41
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/dar/DarRune;->sInstance:Lcom/samsung/android/knox/dar/DarRune;

    return-object v0
.end method
