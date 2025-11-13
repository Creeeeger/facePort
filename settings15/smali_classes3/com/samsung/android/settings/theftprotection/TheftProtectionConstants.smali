.class public abstract Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final MINUTE_MILLIS:J

.field public static final SAMSUNG_ACCOUNT_PLACE_URI:Landroid/net/Uri;

.field public static final SECOND_MILLIS:J

.field public static final SECURITY_DELAY_DURATION_MILLIS:J

.field public static final SECURITY_GRACE_DURATION_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "content://com.samsung.android.unifiedprofile/location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SAMSUNG_ACCOUNT_PLACE_URI:Landroid/net/Uri;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECURITY_DELAY_DURATION_MILLIS:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECURITY_GRACE_DURATION_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECOND_MILLIS:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->MINUTE_MILLIS:J

    return-void
.end method
