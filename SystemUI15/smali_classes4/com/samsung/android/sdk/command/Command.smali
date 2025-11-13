.class public final Lcom/samsung/android/sdk/command/Command;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCategory:Ljava/lang/String;

.field public final mClassification:Ljava/lang/String;

.field public final mCommandId:Ljava/lang/String;

.field public final mCustomConfigComponent:Ljava/lang/String;

.field public final mForTarget:Ljava/lang/String;

.field public final mIconResId:I

.field public final mLaunchIntent:Landroid/app/PendingIntent;

.field public mPackageName:Ljava/lang/String;

.field public final mStatus:I

.field public final mStatusCode:Ljava/lang/String;

.field public final mStatusText:Ljava/lang/String;

.field public final mSubCategory:Ljava/lang/String;

.field public final mSubTitle:Ljava/lang/String;

.field public final mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_command_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    :cond_0
    const-string v0, "key_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mTitle:Ljava/lang/String;

    :cond_1
    const-string v0, "key_subtitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mSubTitle:Ljava/lang/String;

    :cond_2
    const-string v0, "key_pacakge_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    :cond_3
    const-string v0, "key_for_target"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mForTarget:Ljava/lang/String;

    :cond_4
    const-string v0, "key_classification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mClassification:Ljava/lang/String;

    :cond_5
    const-string v0, "key_category"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mCategory:Ljava/lang/String;

    :cond_6
    const-string v0, "key_subcategory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mSubCategory:Ljava/lang/String;

    :cond_7
    const-string v0, "key_launch_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mLaunchIntent:Landroid/app/PendingIntent;

    :cond_8
    const-string v0, "key_custom_config_component"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mCustomConfigComponent:Ljava/lang/String;

    :cond_9
    const-string v0, "key_status_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mStatusText:Ljava/lang/String;

    :cond_a
    const-string v0, "key_status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mStatusCode:Ljava/lang/String;

    :cond_b
    const-string v0, "key_template"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$2;

    if-nez v0, :cond_c

    goto :goto_1

    :cond_c
    const-string v2, "key_template_type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_12

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    const/4 v3, 0x3

    if-eq v2, v3, :cond_10

    const/4 v3, 0x5

    if-eq v2, v3, :cond_f

    const/4 v3, 0x6

    if-eq v2, v3, :cond_e

    const/4 v3, 0x7

    if-eq v2, v3, :cond_d

    goto :goto_1

    :cond_d
    :try_start_0
    new-instance v2, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;-><init>(Landroid/os/Bundle;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_e
    new-instance v2, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_f
    new-instance v2, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_10
    new-instance v2, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_11
    new-instance v2, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_12
    sget-object v1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    iput-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    :cond_13
    const-string v0, "key_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/Command;->mStatus:I

    :cond_14
    const-string v0, "key_icon_res_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/command/Command;->mIconResId:I

    :cond_15
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/samsung/android/sdk/command/template/CommandTemplate;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/command/Command;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/command/Command;->mSubTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/command/Command;->mForTarget:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/command/Command;->mClassification:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/command/Command;->mCategory:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/sdk/command/Command;->mSubCategory:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/sdk/command/Command;->mLaunchIntent:Landroid/app/PendingIntent;

    iput-object p10, p0, Lcom/samsung/android/sdk/command/Command;->mCustomConfigComponent:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    iput p12, p0, Lcom/samsung/android/sdk/command/Command;->mStatus:I

    iput-object p13, p0, Lcom/samsung/android/sdk/command/Command;->mStatusText:Ljava/lang/String;

    iput-object p14, p0, Lcom/samsung/android/sdk/command/Command;->mStatusCode:Ljava/lang/String;

    iput p15, p0, Lcom/samsung/android/sdk/command/Command;->mIconResId:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/samsung/android/sdk/command/template/CommandTemplate;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/command/Command$1;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/samsung/android/sdk/command/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/samsung/android/sdk/command/template/CommandTemplate;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getDataBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "key_command_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "key_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mSubTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "key_subtitle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "key_pacakge_name"

    iget-object v2, p0, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mForTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "key_for_target"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mClassification:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "key_classification"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mCategory:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "key_category"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mSubCategory:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "key_subcategory"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mLaunchIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_8

    const-string v2, "key_launch_intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mCustomConfigComponent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "key_custom_config_component"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mStatusText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "key_status_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mStatusCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "key_status_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_template"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_c
    const-string v1, "key_status"

    iget v2, p0, Lcom/samsung/android/sdk/command/Command;->mStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_icon_res_id"

    iget p0, p0, Lcom/samsung/android/sdk/command/Command;->mIconResId:I

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".command"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    return-object p0
.end method
