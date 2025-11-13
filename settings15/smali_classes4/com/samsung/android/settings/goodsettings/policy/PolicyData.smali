.class public Lcom/samsung/android/settings/goodsettings/policy/PolicyData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mPolicies:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "policy"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPolicyLocale:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "policy_locale"
    .end annotation
.end field

.field public mPolicyVersion:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "policy_version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;->mPolicyVersion:J

    iput-object p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;->mPolicyLocale:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;->mPolicies:Ljava/util/ArrayList;

    return-void
.end method
