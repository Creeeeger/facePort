.class public abstract Lcom/android/settings/vpn2/ManageablePreference;
.super Lcom/android/settings/widget/GearPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mIsAlwaysOn:Z

.field public mIsInsecureVpn:Z

.field public mState:I

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/settings/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsInsecureVpn:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->setPersistent()V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mUserId:I

    iget-object p0, p0, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const-string p2, "no_config_vpn"

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final setState$1(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->updateSummary()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    :cond_0
    return-void
.end method

.method public final updateSummary()V
    .locals 5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0301c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    aget-object v1, v1, v2

    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsInsecureVpn:Z

    const-string v3, " / "

    if-eqz v2, :cond_2

    const v2, 0x7f143203

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1, v3, v0}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1010543

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x22

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    if-eqz v2, :cond_4

    const v2, 0x7f1431ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v1, v3, v0}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
