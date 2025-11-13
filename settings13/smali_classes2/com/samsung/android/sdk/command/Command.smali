.class public final Lcom/samsung/android/sdk/command/Command;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/command/Command$StatefulBuilder;,
        Lcom/samsung/android/sdk/command/Command$StatelessBuilder;
    }
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mClassification:Ljava/lang/String;

.field private mCommandId:Ljava/lang/String;

.field private mCustomConfigComponent:Ljava/lang/String;

.field private mForTarget:Ljava/lang/String;

.field private mIconResId:I

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private mPackageName:Ljava/lang/String;

.field private mStatus:I

.field private mStatusCode:Ljava/lang/String;

.field private mStatusText:Ljava/lang/String;

.field private mSubCategory:Ljava/lang/String;

.field private mSubTitle:Ljava/lang/String;

.field private mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_command_id"

    .line 287
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    :cond_0
    const-string v0, "key_title"

    .line 288
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mTitle:Ljava/lang/String;

    :cond_1
    const-string v0, "key_subtitle"

    .line 289
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mSubTitle:Ljava/lang/String;

    :cond_2
    const-string v0, "key_pacakge_name"

    .line 290
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    :cond_3
    const-string v0, "key_for_target"

    .line 291
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mForTarget:Ljava/lang/String;

    :cond_4
    const-string v0, "key_classification"

    .line 292
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 293
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mClassification:Ljava/lang/String;

    :cond_5
    const-string v0, "key_category"

    .line 294
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mCategory:Ljava/lang/String;

    :cond_6
    const-string v0, "key_subcategory"

    .line 295
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mSubCategory:Ljava/lang/String;

    :cond_7
    const-string v0, "key_launch_intent"

    .line 296
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 297
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mLaunchIntent:Landroid/app/PendingIntent;

    :cond_8
    const-string v0, "key_custom_config_component"

    .line 298
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 299
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mCustomConfigComponent:Ljava/lang/String;

    :cond_9
    const-string v0, "key_status_text"

    .line 300
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mStatusText:Ljava/lang/String;

    :cond_a
    const-string v0, "key_status_code"

    .line 301
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mStatusCode:Ljava/lang/String;

    :cond_b
    const-string v0, "key_template"

    .line 302
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 303
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->createTemplateFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    :cond_c
    const-string v0, "key_status"

    .line 305
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/Command;->mStatus:I

    :cond_d
    const-string v0, "key_icon_res_id"

    .line 306
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/command/Command;->mIconResId:I

    :cond_e
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/samsung/android/sdk/command/template/CommandTemplate;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "commandId",
            "title",
            "subTitle",
            "packageName",
            "forTarget",
            "classification",
            "category",
            "subCategory",
            "launchIntent",
            "configComponent",
            "template",
            "status",
            "statusText",
            "statusCode",
            "iconResId"
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 269
    iput-object p2, p0, Lcom/samsung/android/sdk/command/Command;->mTitle:Ljava/lang/String;

    .line 270
    iput-object p3, p0, Lcom/samsung/android/sdk/command/Command;->mSubTitle:Ljava/lang/String;

    .line 271
    iput-object p4, p0, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    .line 272
    iput-object p5, p0, Lcom/samsung/android/sdk/command/Command;->mForTarget:Ljava/lang/String;

    .line 273
    iput-object p6, p0, Lcom/samsung/android/sdk/command/Command;->mClassification:Ljava/lang/String;

    .line 274
    iput-object p7, p0, Lcom/samsung/android/sdk/command/Command;->mCategory:Ljava/lang/String;

    .line 275
    iput-object p8, p0, Lcom/samsung/android/sdk/command/Command;->mSubCategory:Ljava/lang/String;

    .line 276
    iput-object p9, p0, Lcom/samsung/android/sdk/command/Command;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 277
    iput-object p10, p0, Lcom/samsung/android/sdk/command/Command;->mCustomConfigComponent:Ljava/lang/String;

    .line 278
    iput-object p11, p0, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 279
    iput p12, p0, Lcom/samsung/android/sdk/command/Command;->mStatus:I

    .line 280
    iput-object p13, p0, Lcom/samsung/android/sdk/command/Command;->mStatusText:Ljava/lang/String;

    .line 281
    iput-object p14, p0, Lcom/samsung/android/sdk/command/Command;->mStatusCode:Ljava/lang/String;

    .line 282
    iput p15, p0, Lcom/samsung/android/sdk/command/Command;->mIconResId:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/samsung/android/sdk/command/template/CommandTemplate;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/command/Command$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p15}, Lcom/samsung/android/sdk/command/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/samsung/android/sdk/command/template/CommandTemplate;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/samsung/android/sdk/command/Command;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public getClassification()Ljava/lang/String;
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/samsung/android/sdk/command/Command;->mClassification:Ljava/lang/String;

    return-object p0
.end method

.method public getCommandId()Ljava/lang/String;
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    return-object p0
.end method

.method public getCommandTemplate()Lcom/samsung/android/sdk/command/template/CommandTemplate;
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    return-object p0
.end method

.method public getCustomConfigComponent()Ljava/lang/String;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/samsung/android/sdk/command/Command;->mCustomConfigComponent:Ljava/lang/String;

    return-object p0
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 424
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 426
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    const-string v2, "key_command_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mTitle:Ljava/lang/String;

    const-string v2, "key_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mSubTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mSubTitle:Ljava/lang/String;

    const-string v2, "key_subtitle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    const-string v2, "key_pacakge_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mForTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mForTarget:Ljava/lang/String;

    const-string v2, "key_for_target"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mClassification:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 432
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mClassification:Ljava/lang/String;

    const-string v2, "key_classification"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mCategory:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mCategory:Ljava/lang/String;

    const-string v2, "key_category"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mSubCategory:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mSubCategory:Ljava/lang/String;

    const-string v2, "key_subcategory"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mLaunchIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_8

    const-string v2, "key_launch_intent"

    .line 436
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 438
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mCustomConfigComponent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 439
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mCustomConfigComponent:Ljava/lang/String;

    const-string v2, "key_custom_config_component"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mStatusText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mStatusText:Ljava/lang/String;

    const-string v2, "key_status_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mStatusCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mStatusCode:Ljava/lang/String;

    const-string v2, "key_status_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_template"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 444
    :cond_c
    iget v1, p0, Lcom/samsung/android/sdk/command/Command;->mStatus:I

    const-string v2, "key_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    iget p0, p0, Lcom/samsung/android/sdk/command/Command;->mIconResId:I

    const-string v1, "key_icon_res_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getIconResId()I
    .locals 0

    .line 420
    iget p0, p0, Lcom/samsung/android/sdk/command/Command;->mIconResId:I

    return p0
.end method

.method public getLaunchIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/samsung/android/sdk/command/Command;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".command"

    const-string v2, ""

    .line 338
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    .line 342
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 399
    iget p0, p0, Lcom/samsung/android/sdk/command/Command;->mStatus:I

    return p0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/samsung/android/sdk/command/Command;->mStatusCode:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/samsung/android/sdk/command/Command;->mStatusText:Ljava/lang/String;

    return-object p0
.end method

.method public getSubCategory()Ljava/lang/String;
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/samsung/android/sdk/command/Command;->mSubCategory:Ljava/lang/String;

    return-object p0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/samsung/android/sdk/command/Command;->mSubTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/samsung/android/sdk/command/Command;->mForTarget:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/samsung/android/sdk/command/Command;->mTitle:Ljava/lang/String;

    return-object p0
.end method
