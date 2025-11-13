.class public Lcom/android/settings/wifi/p2p/WifiP2pPeer;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;
    }
.end annotation


# static fields
.field public static final deviceTypeDefaultIcon:[I

.field public static final deviceTypeDefaultIconExt:[I

.field public static final sDeviceTypeImages:[I


# instance fields
.field public mBinding:Z

.field public final mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public mDeviceName:Landroid/widget/TextView;

.field public final mIconIndex:I

.field public mSecondSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIcon:[I

    const v0, 0x7f080b23

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIconExt:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    return-void

    :array_0
    .array-data 4
        0x7f080b0e
        0x7f080b21
        0x7f080b25
        0x7f080b13
        0x7f080b02
        0x7f080b22
        0x7f080b0c
        0x7f080b1b
        0x7f080b17
        0x7f080b24
        0x7f080b08
        0x7f080b09
        0x7f080b19
        0x7f080b20
        0x7f080b03
        0x7f080b12
        0x7f080b16
        0x7f080b18
        0x7f080b1c
        0x7f080b15
        0x7f080b0d
        0x7f080b1e
        0x7f080b22
        0x7f080b1b
        0x7f080b1a
        0x7f080b07
        0x7f080b06
    .end array-data

    :array_1
    .array-data 4
        0x7f080b13
        0x7f080b0b
        0x7f080b15
        0x7f080b07
        0x7f080b1f
        0x7f080b11
        0x7f080b22
        0x7f080b1d
        0x7f080b0a
        0x7f080b0e
        0x7f080b0c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->getDeviceType()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    const v0, 0x7f0d0a85

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    if-lez p3, :cond_1

    const/16 v0, 0x1b

    if-gt p3, v0, :cond_1

    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIcon:[I

    add-int/lit8 p3, p3, -0x1

    aget p1, p1, p3

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_2

    :cond_1
    const/16 v0, 0x32

    if-ne p3, v0, :cond_2

    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIconExt:[I

    sub-int/2addr p3, v0

    aget p1, p1, p3

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_2

    :cond_2
    iget-object p3, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    if-nez p3, :cond_6

    iget-object p3, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_3
    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const/4 p3, 0x2

    const/4 v2, 0x4

    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const/16 p1, 0x10

    invoke-static {p2, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    :cond_4
    :goto_1
    sget-object p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->pc:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    iget p2, p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mValue:I

    if-lt p1, p2, :cond_5

    sget-object p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->level_box:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    iget p2, p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mValue:I

    if-gt p1, p2, :cond_5

    add-int/lit8 p1, p1, -0x1

    aget p1, v1, p1

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_2

    :cond_5
    iget p1, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mValue:I

    add-int/lit8 p1, p1, -0x1

    aget p1, v1, p1

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_2

    :cond_6
    const-string p1, "WifiP2pPeer"

    const-string p2, "Malformed primaryDeviceType"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mValue:I

    add-int/lit8 p1, p1, -0x1

    aget p1, v1, p1

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    :goto_2
    return-void
.end method


# virtual methods
.method public final compareTo(Landroidx/preference/Preference;)I
    .locals 3

    instance-of v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v0, v2, :cond_2

    if-ge v0, v2, :cond_1

    const/4 v1, -0x1

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object p0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public final notifyChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mBinding:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mBinding:Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    const v1, 0x7f0a0d7f

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0301f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v4, 0x0

    const v5, 0x7f060b81

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    const v2, 0x3ebd70a4    # 0.37f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f14289e

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const v2, 0x7f1428a7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060790

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const v2, 0x7f1428a8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v0, v2, v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iput-boolean v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mBinding:Z

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method
