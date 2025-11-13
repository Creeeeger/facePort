.class public Lcom/samsung/android/settings/fuelgauge/Reason;
.super Ljava/lang/Object;
.source "Reason.java"


# static fields
.field public static sReasonToString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "default"

    const-string v1, "added_from_mars_auto"

    const-string v2, "added_from_user_manual"

    const-string v3, "added_from_anomaly_auto"

    const-string v4, "added_from_anomaly_manual"

    const-string v5, "added_from_pre_o"

    const-string v6, "added_from_policy_in_china"

    const-string v7, "added_from_unknown"

    const-string v8, "deleted_from_mars_auto"

    const-string v9, "deleted_from_user_manual"

    const-string v10, "deleted_from_post_o"

    const-string v11, "deleted_from_whitelist"

    const-string v12, "deleted_from_policy_in_china"

    const-string v13, "deleted_from_unknown"

    .line 47
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/fuelgauge/Reason;->sReasonToString:[Ljava/lang/String;

    return-void
.end method
