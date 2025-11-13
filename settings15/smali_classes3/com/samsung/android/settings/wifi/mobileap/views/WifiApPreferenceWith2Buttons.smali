.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mClickListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;

.field public mInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a04b9

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0035

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Preference clicked for key "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiApPreferenceWith2Buttons"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mClickListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method
