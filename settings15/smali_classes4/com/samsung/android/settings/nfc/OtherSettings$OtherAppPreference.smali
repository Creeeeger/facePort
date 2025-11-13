.class public final Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;
.super Landroidx/preference/SecPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

.field public final callback:Lcom/samsung/android/settings/nfc/OtherSettings$2;

.field public checkbox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;Lcom/samsung/android/settings/nfc/OtherSettings$2;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0918

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->callback:Lcom/samsung/android/settings/nfc/OtherSettings$2;

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->checkbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-boolean v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->checkbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0196

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a08c5

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0db7

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a11c1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f142911

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f140d8a

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-boolean v2, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isManagedProfile:Z

    if-eqz v2, :cond_2

    const v1, 0x7f1437e2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

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

.method public final onClick()V
    .locals 9

    const-string/jumbo v0, "onClick()"

    const-string v1, "OtherSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->checkbox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    const-string/jumbo p0, "onClick dropped, cb null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->callback:Lcom/samsung/android/settings/nfc/OtherSettings$2;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "other payment callback is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->callback:Lcom/samsung/android/settings/nfc/OtherSettings$2;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    if-nez v2, :cond_2

    const-string p0, "appinfo null, dropping click event"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v1, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/OtherSettings$2;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    if-eqz v1, :cond_6

    iget-boolean v3, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    const/4 v4, 0x1

    const-string v5, "OtherBackend"

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v6, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    sget-boolean v7, Lcom/samsung/android/settings/nfc/OtherBackend;->DBG:Z

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setServiceEnabledForCategoryOther disable: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v6}, Lcom/samsung/android/settings/nfc/OtherBackend;->setServiceEnabledForCategoryOther(Landroid/content/ComponentName;ZI)V

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v6, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    sget-boolean v7, Lcom/samsung/android/settings/nfc/OtherBackend;->DBG:Z

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setServiceEnabledForCategoryOther enable: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v3, v1, v4, v6}, Lcom/samsung/android/settings/nfc/OtherBackend;->setServiceEnabledForCategoryOther(Landroid/content/ComponentName;ZI)V

    :goto_0
    iget-boolean v1, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    int-to-long v0, p0

    const/16 p0, 0xe4b

    const/16 v2, 0xe48

    invoke-static {p0, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_7
    :goto_1
    return-void
.end method
