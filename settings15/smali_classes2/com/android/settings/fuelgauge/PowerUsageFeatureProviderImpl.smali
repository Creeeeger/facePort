.class public final Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;


# static fields
.field public static final PACKAGES_SYSTEM:[Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.android.providers.calendar"

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.providers.media"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->PACKAGES_SYSTEM:[Ljava/lang/String;

    return-void
.end method
