.class public Lcom/samsung/android/settings/inputmethod/MouseSecondaryButtonFragment;
.super Lcom/samsung/android/settings/inputmethod/CustomMousePreference;
.source "MouseSecondaryButtonFragment.java"


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/samsung/android/settings/inputmethod/MouseSecondaryButtonFragment$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/inputmethod/MouseSecondaryButtonFragment$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/MouseSecondaryButtonFragment;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;-><init>()V

    return-void
.end method


# virtual methods
.method protected getButtonType()I
    .locals 2

    .line 33
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mouse_secondary_button_option"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0xbc035

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 28
    sget p0, Lcom/android/settings/R$xml;->sec_mouse_secondary_button_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->key_mouse_secondary_button_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonValue:[Ljava/lang/String;

    const/16 p1, 0xa

    .line 22
    iput p1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonType:I

    const p1, 0x12cd6

    .line 23
    iput p1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonSAConstantValue:I

    return-void
.end method

.method protected setButtonType(I)V
    .locals 1

    .line 39
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mouse_secondary_button_option"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
