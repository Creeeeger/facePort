.class public Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;
.super Ljava/lang/Object;
.source "WhitelistedFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    }
.end annotation


# instance fields
.field private blacklist mEnableApi:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

.field private blacklist mFeature:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mFeature:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->fromEnableType(Ljava/lang/Integer;)Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mEnableApi:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-void
.end method

.method private static blacklist fromEnableType(Ljava/lang/Integer;)Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->ALL:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->GET:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->ALL:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist getEnableApi()Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mEnableApi:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object v0
.end method

.method public blacklist hasFeatureName(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
