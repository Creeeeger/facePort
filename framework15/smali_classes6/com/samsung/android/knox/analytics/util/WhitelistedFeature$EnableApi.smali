.class public final enum Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
.super Ljava/lang/Enum;
.source "WhitelistedFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnableApi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

.field public static final enum blacklist ALL:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

.field public static final enum blacklist GET:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->ALL:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    sget-object v1, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->GET:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    filled-new-array {v0, v1}, [Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->ALL:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    new-instance v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    const-string v1, "GET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->GET:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    invoke-static {}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->$values()[Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->$VALUES:[Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->$VALUES:[Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object v0
.end method
