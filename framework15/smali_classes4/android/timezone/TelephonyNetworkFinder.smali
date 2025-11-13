.class public final Landroid/timezone/TelephonyNetworkFinder;
.super Ljava/lang/Object;
.source "TelephonyNetworkFinder.java"


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/timezone/TelephonyNetworkFinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    iput-object v0, p0, Landroid/timezone/TelephonyNetworkFinder;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    return-void
.end method


# virtual methods
.method public blacklist findNetworkByMccMnc(Ljava/lang/String;Ljava/lang/String;)Landroid/timezone/TelephonyNetwork;
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/timezone/TelephonyNetworkFinder;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->findNetworkByMccMnc(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/TelephonyNetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/timezone/TelephonyNetwork;

    invoke-direct {v1, v0}, Landroid/timezone/TelephonyNetwork;-><init>(Lcom/android/i18n/timezone/TelephonyNetwork;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
