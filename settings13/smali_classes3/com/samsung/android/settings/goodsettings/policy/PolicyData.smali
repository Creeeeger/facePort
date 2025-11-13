.class public Lcom/samsung/android/settings/goodsettings/policy/PolicyData;
.super Ljava/lang/Object;
.source "PolicyData.java"


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
.method public constructor <init>(JLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;->mPolicyVersion:J

    .line 21
    iput-object p3, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;->mPolicyLocale:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;->mPolicies:Ljava/util/ArrayList;

    return-void
.end method
