.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;
.super Landroidx/preference/Preference;
.source "WifiApPreferenceWith2Buttons.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$WifiApPreferenceWith2ButtonsListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mClickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$WifiApPreferenceWith2ButtonsListener;

.field private mContext:Landroid/content/Context;

.field private mInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$WifiApPreferenceWith2ButtonsListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mClickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$WifiApPreferenceWith2ButtonsListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInvitationConfig(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$WifiApPreferenceWith2ButtonsListener;)V
    .locals 3

    .line 31
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 32
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->TAG:Ljava/lang/String;

    const-string v1, "WifiApPreferenceWith2Buttons()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    .line 35
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mClickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$WifiApPreferenceWith2ButtonsListener;

    .line 36
    sget p2, Lcom/android/settings/R$layout;->sec_wifi_ap_preference_with_2_buttons:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 37
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getGroupId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 38
    sget p2, Lcom/android/settings/R$string;->wifi_ap_invitation_from_x:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getRequesterName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getPhoto(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 41
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getPhoto(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 43
    :cond_0
    sget p2, Lcom/android/settings/R$drawable;->sec_profile_default_image:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIcon(I)V

    .line 45
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getExpiryTime()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/android/settings/fuelgauge/ConvertUtils;->utcToLocalTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    .line 46
    sget v0, Lcom/android/settings/R$string;->wifi_ap_invitation_expires:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 52
    sget v0, Lcom/android/settings/R$id;->decline_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    sget v1, Lcom/android/settings/R$id;->accept_button:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 54
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 73
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference clicked for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mClickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$WifiApPreferenceWith2ButtonsListener;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$WifiApPreferenceWith2ButtonsListener;->onPreferenceClicked(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
