.class public Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RingtoneActionActivity.java"


# instance fields
.field private mAbsolutePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mRingtoneUri:Landroid/net/Uri;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAbsolutePath(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->mAbsolutePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRingtoneUri(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->mRingtoneUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAbsolutePath(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->mAbsolutePath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRingtoneUri(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->mRingtoneUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTitle(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 43
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "RingtoneActionActivity"

    const-string v0, "OnCreate"

    .line 45
    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->mContext:Landroid/content/Context;

    .line 47
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;-><init>(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)V

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->mResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x1

    .line 95
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 97
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v1

    const-string v4, ""

    if-eqz p1, :cond_0

    .line 100
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PARAMETER_VALUES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v1

    :cond_0
    const-string p1, "routines_ringtone_uri"

    .line 102
    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const-string p1, "android.intent.extra.ringtone.TYPE"

    .line 107
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->incoming_call_volume_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.samsung.intent.extra.ringtone.SHOW_VOLUME_SEEKBAR"

    .line 109
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "from"

    const-string v1, "com.samsung.android.sdk.routines.v3"

    .line 110
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.secsoundpicker"

    const-string v2, "com.samsung.android.secsoundpicker.SecSoundPickerActivity"

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 113
    iget-object p0, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->mResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
