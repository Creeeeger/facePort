.class public final Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAnomalyTypes:Landroid/util/ArraySet;

.field public mPackageName:Ljava/lang/String;

.field public mScreenOnTimeMs:J

.field public mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mAnomalyTypes:Landroid/util/ArraySet;

    return-void
.end method
