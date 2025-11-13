.class public final Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;
.super Landroidx/preference/SecPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

.field public final listener:Lcom/samsung/android/settings/nfc/PaymentSettings$2;

.field public radioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;Lcom/samsung/android/settings/nfc/PaymentSettings$2;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Lcom/samsung/android/settings/nfc/PaymentSettings$2;

    const p1, 0x7f0d04c2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Lcom/samsung/android/settings/nfc/PaymentSettings$2;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->radioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->radioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a08c5

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0196

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    const v0, 0x7f0a0db7

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a11c1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f142911

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f140d8a

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v2, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isManagedProfile:Z

    if-eqz v2, :cond_2

    const v1, 0x7f1437e2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isCurrentUser:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, p1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final onClick()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Lcom/samsung/android/settings/nfc/PaymentSettings$2;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    const-string v1, "PaymentSettings"

    if-nez p0, :cond_0

    const-string p0, "appinfo null, dropping click event"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_6

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/PaymentSettings$2;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/PaymentBackend;->mDefaultAppInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    iget-object v4, v2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v5, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    :try_start_0
    iget-object v2, v2, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->radioButton:Landroid/widget/RadioButton;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v2, "prevPaymentPreference is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    iget-object v6, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iput-object p0, v6, Lcom/samsung/android/settings/nfc/PaymentBackend;->mDefaultAppInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    :try_start_1
    iget-object v3, v3, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->radioButton:Landroid/widget/RadioButton;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v3, "changedPaymentPreference is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3, v2, v5}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;I)V

    sget-boolean v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Previous Default Payment = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Changed Default Payment = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;I)V

    if-eqz v4, :cond_5

    invoke-virtual {v4, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    const-wide/16 v0, 0xe46

    const/16 p0, 0xe45

    invoke-static {p0, p0, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_6
    :goto_2
    return-void
.end method
