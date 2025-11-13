.class Lcom/samsung/android/core/CompatChangeableApps$OrientationOverrideDisallowedLazyHolder;
.super Ljava/lang/Object;
.source "CompatChangeableApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/CompatChangeableApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrientationOverrideDisallowedLazyHolder"
.end annotation


# static fields
.field static final blacklist sList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.samsung.android.globalroaming"

    const-string v2, "com.samsung.android.app.watchmanager"

    const-string v3, "com.sec.android.app.camera"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/core/CompatChangeableApps$OrientationOverrideDisallowedLazyHolder;->sList:Ljava/util/HashSet;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
