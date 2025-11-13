.class public final Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public mLastDensity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    return-void
.end method
