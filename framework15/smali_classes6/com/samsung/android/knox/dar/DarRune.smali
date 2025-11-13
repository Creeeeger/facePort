.class public Lcom/samsung/android/knox/dar/DarRune;
.super Ljava/lang/Object;
.source "DarRune.java"


# static fields
.field public static final blacklist KNOX_SUPPORT_DAR:Z = true

.field public static final blacklist KNOX_SUPPORT_DAR_DUAL:Z = true

.field public static final blacklist KNOX_SUPPORT_DAR_DUAL_DO:Z = true

.field public static final blacklist KNOX_SUPPORT_DAR_SDP:Z = false

.field public static final blacklist KNOX_SUPPORT_DAR_SDP_LOG:Z = true

.field public static final blacklist KNOX_SUPPORT_DAR_SDP_OR_DUAL:Z = true

.field public static final blacklist KNOX_SUPPORT_DAR_SECURE_FOLDER:Z = true

.field public static final blacklist KNOX_SUPPORT_DAR_VIRTUAL_USER:Z = true

.field public static final blacklist KNOX_SUPPORT_DAR_WEAVER:Z = true

.field public static final blacklist KNOX_SUPPORT_ENDPOINT_MONITORING:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "DarRune"

.field private static blacklist sInstance:Lcom/samsung/android/knox/dar/DarRune;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/knox/dar/DarRune;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/dar/DarRune;->sInstance:Lcom/samsung/android/knox/dar/DarRune;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/dar/DarRune;

    invoke-direct {v0}, Lcom/samsung/android/knox/dar/DarRune;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/dar/DarRune;->sInstance:Lcom/samsung/android/knox/dar/DarRune;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/dar/DarRune;->sInstance:Lcom/samsung/android/knox/dar/DarRune;

    return-object v0
.end method
