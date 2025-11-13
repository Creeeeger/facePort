.class public Lcom/samsung/android/settings/inputmethod/MouseMiddleButtonFragment;
.super Lcom/samsung/android/settings/inputmethod/CustomMousePreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/inputmethod/MouseMiddleButtonFragment$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/MouseMiddleButtonFragment;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;-><init>()V

    return-void
.end method


# virtual methods
.method public final getButtonType()I
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "mouse_middle_button_option"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, 0xbc036

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701c8

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300fc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonValue:[Ljava/lang/String;

    const/16 p1, 0xb

    iput p1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonType:I

    const p1, 0x12cd7

    iput p1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonSAConstantValue:I

    return-void
.end method

.method public final setButtonType(I)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "mouse_middle_button_option"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
