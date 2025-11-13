.class public final Landroid/timezone/TelephonyLookup;
.super Ljava/lang/Object;
.source "TelephonyLookup.java"


# static fields
.field private static blacklist sInstance:Landroid/timezone/TelephonyLookup;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/TelephonyLookup;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/timezone/TelephonyLookup;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/i18n/timezone/TelephonyLookup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/TelephonyLookup;

    iput-object v0, p0, Landroid/timezone/TelephonyLookup;->mDelegate:Lcom/android/i18n/timezone/TelephonyLookup;

    return-void
.end method

.method public static blacklist getInstance()Landroid/timezone/TelephonyLookup;
    .locals 3

    sget-object v0, Landroid/timezone/TelephonyLookup;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/timezone/TelephonyLookup;->sInstance:Landroid/timezone/TelephonyLookup;

    if-nez v1, :cond_0

    new-instance v1, Landroid/timezone/TelephonyLookup;

    invoke-static {}, Lcom/android/i18n/timezone/TelephonyLookup;->getInstance()Lcom/android/i18n/timezone/TelephonyLookup;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/timezone/TelephonyLookup;-><init>(Lcom/android/i18n/timezone/TelephonyLookup;)V

    sput-object v1, Landroid/timezone/TelephonyLookup;->sInstance:Landroid/timezone/TelephonyLookup;

    :cond_0
    sget-object v1, Landroid/timezone/TelephonyLookup;->sInstance:Landroid/timezone/TelephonyLookup;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist getTelephonyNetworkFinder()Landroid/timezone/TelephonyNetworkFinder;
    .locals 2

    iget-object v0, p0, Landroid/timezone/TelephonyLookup;->mDelegate:Lcom/android/i18n/timezone/TelephonyLookup;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/TelephonyLookup;->getTelephonyNetworkFinder()Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/timezone/TelephonyNetworkFinder;

    invoke-direct {v1, v0}, Landroid/timezone/TelephonyNetworkFinder;-><init>(Lcom/android/i18n/timezone/TelephonyNetworkFinder;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
