.class Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;
.super Landroidx/preference/SecPreference;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaymentAppPreference"
.end annotation


# instance fields
.field private final appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

.field private final listener:Landroid/view/View$OnClickListener;

.field private radioButton:Landroid/widget/RadioButton;


# direct methods
.method static bridge synthetic -$$Nest$fgetradioButton(Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->radioButton:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 462
    invoke-direct {p0, p1}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;)V

    .line 463
    sget p1, Lcom/android/settings/R$layout;->nfc_payment_option:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 464
    iput-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 465
    iput-object p3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 470
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020019

    .line 472
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->radioButton:Landroid/widget/RadioButton;

    .line 473
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 474
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->radioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->radioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 477
    sget v0, Lcom/android/settings/R$id;->linearlayout:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 478
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 480
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 482
    sget v0, Lcom/android/settings/R$id;->banner:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 483
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 485
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 486
    sget v0, Lcom/android/settings/R$id;->serviceDescription:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 487
    sget v1, Lcom/android/settings/R$id;->workProfileText:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 489
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    sget v1, Lcom/android/settings/R$string;->secure_folder_title:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v2, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isManagedProfile:Z

    if-eqz v2, :cond_1

    .line 492
    sget v1, Lcom/android/settings/R$string;->work_title:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 494
    :cond_1
    iget-object v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isCurrentUser:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, p1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method
