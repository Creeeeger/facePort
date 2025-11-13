.class public final Lcom/android/settings/enterprise/PrivacySettingsFinancedPreference;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/enterprise/PrivacySettingsPreference;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/PrivacySettingsFinancedPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Z)Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700a4

    return p0
.end method

.method public final getXmlResourcesToIndex()Ljava/util/List;
    .locals 1

    new-instance v0, Landroid/provider/SearchIndexableResource;

    iget-object p0, p0, Lcom/android/settings/enterprise/PrivacySettingsFinancedPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p0, 0x7f1700a4

    iput p0, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
