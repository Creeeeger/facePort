.class public final Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

.field public mBluetoothLeBroadcastReceiveState:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

.field public mFrictionImageView:Landroid/widget/ImageView;

.field public mIsEncrypted:Z

.field public mStatus:Z

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d0501

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const p1, 0x7f0d001f

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f140c90

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mStatus:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080cd0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010429

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getProgramInfo()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastReceiveState:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    const v1, 0x7f140c90

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getSubgroupMetadata()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a10a0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a079c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0a06b3

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mFrictionImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateStatusButton()V

    return-void
.end method

.method public final updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->getProgramInfo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->isEncrypted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mIsEncrypted:Z

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastReceiveState:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mStatus:Z

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateStatusButton()V

    return-void
.end method

.method public final updateStatusButton()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mFrictionImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mStatus:Z

    if-nez v1, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mIsEncrypted:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080200

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080402

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010429

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mFrictionImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mFrictionImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method
