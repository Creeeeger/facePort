.class Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;
.super Landroidx/preference/SecPreference;
.source "OtherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/OtherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OtherAppPreference"
.end annotation


# instance fields
.field private final appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

.field private final listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;)V

    .line 348
    sget p1, Lcom/android/settings/R$layout;->sec_nfc_other_option:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 349
    iput-object p3, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    .line 350
    iput-object p4, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 355
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020001

    .line 357
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 359
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-boolean v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 360
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 363
    :cond_0
    sget v0, Lcom/android/settings/R$id;->banner:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 365
    sget v1, Lcom/android/settings/R$id;->linearlayout:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 366
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 369
    sget v1, Lcom/android/settings/R$id;->serviceDescription:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 370
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 372
    sget v1, Lcom/android/settings/R$id;->workProfileText:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 374
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    sget v1, Lcom/android/settings/R$string;->secure_folder_title:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-boolean v2, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isManagedProfile:Z

    if-eqz v2, :cond_2

    .line 377
    sget v1, Lcom/android/settings/R$string;->work_title:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 383
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x1

    .line 384
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 385
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-boolean p0, p0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isCurrentUser:Z

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
