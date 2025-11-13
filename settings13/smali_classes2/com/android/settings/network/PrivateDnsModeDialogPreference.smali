.class public Lcom/android/settings/network/PrivateDnsModeDialogPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "PrivateDnsModeDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/text/TextWatcher;


# static fields
.field static final HOSTNAME_KEY:Ljava/lang/String; = "private_dns_specifier"

.field static final MODE_KEY:Ljava/lang/String; = "private_dns_mode"

.field private static final PRIVATE_DNS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mEditText:Landroid/widget/EditText;

.field mMode:I

.field mRadioGroup:Landroid/widget/RadioGroup;

.field private final mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;


# direct methods
.method public static synthetic $r8$lambda$j5mEayZJ0qicx4s__dz_US_lP00(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    const/4 v1, 0x1

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->private_dns_mode_off:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->private_dns_mode_opportunistic:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->private_dns_mode_provider:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 110
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    new-instance v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v1, "url"

    invoke-direct {p1, v1, v0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    new-instance p2, Lcom/android/settings/network/PrivateDnsModeDialogPreference$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/settings/network/PrivateDnsModeDialogPreference$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v0, "url"

    invoke-direct {p1, v0, p2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    new-instance p2, Lcom/android/settings/network/PrivateDnsModeDialogPreference$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/settings/network/PrivateDnsModeDialogPreference$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo p3, "url"

    invoke-direct {p1, p3, p2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 126
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    new-instance p2, Lcom/android/settings/network/PrivateDnsModeDialogPreference$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/settings/network/PrivateDnsModeDialogPreference$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo p3, "url"

    invoke-direct {p1, p3, p2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    return-void
.end method

.method private getEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    .line 267
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "disallow_config_private_dns"

    .line 266
    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public static getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "private_dns_specifier"

    .line 99
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSaveButton()Landroid/widget/Button;
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 279
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method private isDisabledByAdmin()Z
    .locals 0

    .line 271
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    sget v1, Lcom/android/settings/R$string;->help_uri_private_dns:I

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity was not found for intent, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PrivateDnsModeDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private notifyDnsConfigChanged(Landroid/content/Context;I)V
    .locals 2

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NotifyDnsConfigChanged mode:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PrivateDnsModeDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.PRIVATE_DNS_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.fast"

    const-string v1, "com.samsung.android.fast.common.SecureWifiReceiver"

    .line 299
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "private_dns_mode"

    .line 300
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.permission.WRITE_SECURE_SETTINGS"

    .line 301
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private updateDialogInfo()V
    .locals 3

    .line 283
    iget v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 284
    :goto_0
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 285
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getSaveButton()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 290
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/InternetDomainName;->isValid(Ljava/lang/String;)Z

    move-result v1

    .line 289
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->updateDialogInfo()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5

    .line 154
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 157
    invoke-static {v0}, Landroid/net/ConnectivitySettingsManager;->getPrivateDnsMode(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:I

    .line 159
    sget v2, Lcom/android/settings/R$id;->private_dns_mode_provider_hostname:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    const-string v3, "disableEmoticonInput=true;disableImage=true"

    .line 162
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    sget v1, Lcom/android/settings/R$id;->private_dns_radio_group:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 169
    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    sget-object v2, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    iget p0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget v3, Lcom/android/settings/R$id;->private_dns_mode_opportunistic:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p0, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->check(I)V

    .line 173
    sget p0, Lcom/android/settings/R$id;->private_dns_mode_off:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    .line 174
    sget v1, Lcom/android/settings/R$string;->private_dns_mode_off:I

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 176
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    .line 177
    sget v1, Lcom/android/settings/R$string;->private_dns_mode_opportunistic:I

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 178
    sget p0, Lcom/android/settings/R$id;->private_dns_mode_provider:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    .line 179
    sget v1, Lcom/android/settings/R$string;->private_dns_mode_provider:I

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 181
    sget p0, Lcom/android/settings/R$id;->private_dns_help_info:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 182
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 183
    sget p1, Lcom/android/settings/R$string;->help_uri_private_dns:I

    .line 184
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v0, p1, v1}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 186
    new-instance v1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string/jumbo v2, "url"

    invoke-direct {v1, v0, v2, p1}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 188
    invoke-virtual {v1}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->isActionable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    sget p1, Lcom/android/settings/R$string;->private_dns_help_message:I

    .line 190
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 189
    invoke-static {p1, v0}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 193
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/16 p0, 0x6e

    .line 200
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1be7    # 1.001E-41f

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->isDisabledByAdmin()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 148
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 229
    sget p1, Lcom/android/settings/R$id;->private_dns_mode_off:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 230
    iput p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:I

    goto :goto_0

    .line 231
    :cond_0
    sget p1, Lcom/android/settings/R$id;->private_dns_mode_opportunistic:I

    if-ne p2, p1, :cond_1

    const/4 p1, 0x2

    .line 232
    iput p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:I

    goto :goto_0

    .line 233
    :cond_1
    sget p1, Lcom/android/settings/R$id;->private_dns_mode_provider:I

    if-ne p2, p1, :cond_2

    const/4 p1, 0x3

    .line 234
    iput p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:I

    .line 236
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->updateDialogInfo()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 207
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 208
    iget p2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 210
    iget-object p2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    .line 211
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 210
    invoke-static {p1, p2}, Landroid/net/ConnectivitySettingsManager;->setPrivateDnsHostname(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    :cond_0
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    const/16 v0, 0x4e1

    iget v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:I

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 216
    iget p2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:I

    invoke-static {p1, p2}, Landroid/net/ConnectivitySettingsManager;->setPrivateDnsMode(Landroid/content/Context;I)V

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "private_dns_by_swifi"

    invoke-static {p2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "on"

    .line 220
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 221
    iget p2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->notifyDnsConfigChanged(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public performClick()V
    .locals 1

    .line 254
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_0
    return-void
.end method
