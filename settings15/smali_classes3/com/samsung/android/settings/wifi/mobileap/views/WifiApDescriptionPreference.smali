.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDescriptionPreference;
.super Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDescriptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDescriptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDescriptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d0a1d

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedAbove:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedBelow:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIsTitleSingleLine:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method
