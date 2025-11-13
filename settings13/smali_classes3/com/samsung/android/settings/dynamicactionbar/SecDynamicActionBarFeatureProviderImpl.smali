.class public Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SecDynamicActionBarFeatureProviderImpl.java"

# interfaces
.implements Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProvider;


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$-2sIQNryoeIFKgmou6V88jE9I3Y(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/os/Bundle;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->lambda$bindLaterButtonAndGetObserver$5(Landroid/os/Bundle;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$65PheRbJ0rQm7xLk5iS3rHT1fSc(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->lambda$refreshLaterButton$7(Landroid/net/Uri;Landroid/widget/Button;)V

    return-void
.end method

.method public static synthetic $r8$lambda$894TNomrkmL57KdwDBdFw17O1MA(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->lambda$refreshTitle$1(Landroid/net/Uri;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wrs8zuRPquyAO8zTg7UHaHe6RGc(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->lambda$refreshLaterButton$6(Landroid/widget/Button;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZkM6VSJnzgbGLia2Q05NCGmpm2s(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->lambda$refreshActionButton$4(Landroid/net/Uri;Landroid/widget/Button;)V

    return-void
.end method

.method public static synthetic $r8$lambda$agIJMo_xIK2x4lSbIbQjCOrzKuE(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->lambda$refreshActionButton$3(Landroid/widget/Button;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fqvVRejyYI74aYpHblgcA_p9p_A(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/os/Bundle;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->lambda$bindActionButtonAndGetObserver$2(Landroid/os/Bundle;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ihbGxSMdQGOx0virZENZKzdyT0w(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->lambda$refreshTitle$0(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshActionButton(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->refreshActionButton(Landroid/net/Uri;Landroid/widget/Button;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshLaterButton(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->refreshLaterButton(Landroid/net/Uri;Landroid/widget/Button;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshTitle(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->refreshTitle(Landroid/net/Uri;Landroid/widget/TextView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bindActionButtonAndGetObserver(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/widget/Button;Landroid/os/Bundle;)Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;
    .locals 3

    const-string v0, "com.android.settings.component_name"

    .line 281
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 282
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 284
    new-instance v2, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/os/Bundle;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "com.android.settings.action_button_uri"

    .line 294
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "getDynamicActionButtonText"

    .line 295
    invoke-virtual {p0, p3, p1, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getCompleteUri(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->refreshActionButton(Landroid/net/Uri;Landroid/widget/Button;)V

    .line 297
    new-instance p3, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$2;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;)V

    return-object p3

    :cond_0
    const-string p0, "com.android.settings.action_button_text"

    .line 311
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 314
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 315
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SecDynamicTitleFeatureProviderImpl"

    const-string p3, "Couldn\'t find info"

    .line 317
    invoke-static {p1, p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v2

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 322
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 323
    sget p0, Lcom/android/settings/R$string;->sec_dynamic_action_bar_open_button:I

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object v2
.end method

.method private bindLaterButtonAndGetObserver(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/widget/Button;Landroid/os/Bundle;)Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;
    .locals 3

    const-string v0, "com.android.settings.component_name"

    .line 341
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 342
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 344
    new-instance v2, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p3, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/os/Bundle;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "com.android.settings.later_button_uri"

    .line 357
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "getDynamicLaterButtonText"

    .line 358
    invoke-virtual {p0, p3, p1, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getCompleteUri(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->refreshLaterButton(Landroid/net/Uri;Landroid/widget/Button;)V

    .line 360
    new-instance p3, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$3;

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$3;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;)V

    return-object p3

    :cond_0
    const-string p0, "com.android.settings.later_button_text"

    .line 374
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 377
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 378
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SecDynamicTitleFeatureProviderImpl"

    const-string p3, "Couldn\'t find info"

    .line 380
    invoke-static {p1, p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v2

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 385
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 386
    sget p0, Lcom/android/settings/R$string;->sec_dynamic_action_bar_later_button:I

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 388
    :cond_2
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object v2
.end method

.method private bindTitleAndGetObserver(Landroidx/typoanimation/TypoAnimationView;Landroid/os/Bundle;Ljava/lang/CharSequence;)Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;
    .locals 4

    const-string v0, "com.android.settings.component_name"

    .line 194
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 195
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.settings.title_uri"

    .line 197
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p3, "getDynamicTitle"

    .line 198
    invoke-virtual {p0, p2, v2, p3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getCompleteUri(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 199
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->refreshTitle(Landroid/net/Uri;Landroid/widget/TextView;)V

    .line 200
    new-instance p3, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$1;

    invoke-direct {p3, p0, p2, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$1;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroidx/typoanimation/TypoAnimationView;)V

    return-object p3

    :cond_0
    const-string p0, "com.android.settings.title"

    .line 214
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 217
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 218
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "SecDynamicTitleFeatureProviderImpl"

    const-string v0, "Couldn\'t find info"

    .line 220
    invoke-static {p2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v3

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 226
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 227
    move-object p0, p3

    check-cast p0, Ljava/lang/String;

    .line 230
    :cond_2
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method private buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 516
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "content"

    .line 517
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 518
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 519
    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 520
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private buildUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 524
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "content"

    .line 525
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 526
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 527
    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 528
    invoke-virtual {p0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 529
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getActionBarMetaDataListForAction(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getActivityActionBarMetaDataList(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 407
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getProviderActionBarMetaDataList(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getActivityActionBarMetaDataList(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 416
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 417
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 418
    iget-boolean v3, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPlatformKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 422
    :cond_1
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 423
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 425
    invoke-direct {p0, v4, p1, v3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->verifyMetaData(Landroid/os/Bundle;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const-string v3, "com.android.settings.component_name"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 427
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 540
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getMethodAndKey(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 544
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 545
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 546
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 549
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getProviderFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/content/IContentProvider;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    .line 553
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    if-nez p4, :cond_3

    .line 555
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    move-object p4, p0

    :cond_3
    const-string p0, "com.android.settings.keyhint"

    .line 557
    invoke-virtual {p4, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v8, p4

    .line 560
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private getDataFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 486
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "getTitle"

    .line 487
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    .line 488
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "data"

    .line 490
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getMethodAndKey(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 585
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 586
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 589
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 590
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 591
    :cond_2
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method private getProviderActionBarMetaDataList(Landroid/content/Intent;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 438
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 439
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 440
    iget-boolean v3, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPlatformKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 444
    :cond_1
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 445
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getDataFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 446
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 450
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 451
    invoke-direct {p0, v5, p1, v3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->verifyMetaData(Landroid/os/Bundle;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 452
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v6}, Landroid/content/pm/ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    const-string v7, "com.android.settings.component_name"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 453
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private getProviderFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/content/IContentProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;)",
            "Landroid/content/IContentProvider;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return-object p0

    .line 571
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 575
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 576
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object p0

    invoke-interface {p3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    :cond_2
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/IContentProvider;

    return-object p0
.end method

.method private getTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 534
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 535
    invoke-virtual {p0, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$bindActionButtonAndGetObserver$2(Landroid/os/Bundle;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/view/View;)V
    .locals 1

    const-string p3, "com.android.settings.action_button_uri"

    .line 285
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    const-string v0, "onActionButtonClicked"

    .line 287
    invoke-virtual {p0, p1, p3, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getCompleteUri(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 288
    iget-object p3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->onActionButtonClicked(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$bindLaterButtonAndGetObserver$5(Landroid/os/Bundle;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/view/View;)V
    .locals 3

    const-string p3, "com.android.settings.later_button_uri"

    .line 345
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "onLaterButtonClicked"

    .line 347
    invoke-virtual {p0, p1, p3, v1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getCompleteUri(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 348
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p3, v0, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p3, 0x1

    const-string v0, "later_error"

    .line 349
    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 354
    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->onLaterButtonClicked(Landroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$refreshActionButton$3(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0

    .line 336
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$refreshActionButton$4(Landroid/net/Uri;Landroid/widget/Button;)V
    .locals 3

    .line 333
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 334
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings.action_button_text"

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 336
    new-instance p1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda5;-><init>(Landroid/widget/Button;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$refreshLaterButton$6(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0

    .line 399
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$refreshLaterButton$7(Landroid/net/Uri;Landroid/widget/Button;)V
    .locals 3

    .line 396
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 397
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings.later_button_text"

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 399
    new-instance p1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda7;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda7;-><init>(Landroid/widget/Button;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$refreshTitle$0(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 276
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$refreshTitle$1(Landroid/net/Uri;Landroid/widget/TextView;)V
    .locals 3

    .line 273
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings.title"

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 276
    new-instance p1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshActionButton(Landroid/net/Uri;Landroid/widget/Button;)V
    .locals 1

    .line 332
    new-instance v0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private refreshLaterButton(Landroid/net/Uri;Landroid/widget/Button;)V
    .locals 1

    .line 395
    new-instance v0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private refreshTitle(Landroid/net/Uri;Landroid/widget/TextView;)V
    .locals 1

    .line 272
    new-instance v0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/TextView;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private verifyMetaData(Landroid/os/Bundle;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;)Z
    .locals 6

    const/4 p0, 0x0

    const-string v0, " for intent "

    const-string v1, "Found "

    const-string v2, "SecDynamicTitleFeatureProviderImpl"

    if-nez p1, :cond_0

    .line 463
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " missing metadata"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const-string v3, "com.android.settings.category"

    .line 468
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const-string v5, " missing metadata "

    if-nez v4, :cond_1

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    const-string v3, "com.android.settings.keyhint"

    .line 475
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bindDynamicActionBarAndGetObserver(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;",
            "Landroid/view/ViewGroup;",
            "Landroid/os/Bundle;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 171
    :cond_0
    sget v0, Lcom/android/settings/R$id;->sec_dynamic_app_bar_title:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/typoanimation/TypoAnimationView;

    .line 172
    sget v1, Lcom/android/settings/R$id;->sec_dynamic_app_bar_open:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 173
    sget v2, Lcom/android/settings/R$id;->sec_dynamic_app_bar_later:I

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-direct {p0, v0, p3, p4}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->bindTitleAndGetObserver(Landroidx/typoanimation/TypoAnimationView;Landroid/os/Bundle;Ljava/lang/CharSequence;)Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 179
    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    invoke-direct {p0, p1, v1, p3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->bindActionButtonAndGetObserver(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/widget/Button;Landroid/os/Bundle;)Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 183
    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->bindLaterButtonAndGetObserver(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/widget/Button;Landroid/os/Bundle;)Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 187
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v2
.end method

.method public getCompleteUri(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 495
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 496
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 500
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 502
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "com.android.settings.keyhint"

    .line 506
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 508
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Please specify the meta-data com.android.settings.keyhint in AndroidManifest.xml for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecDynamicTitleFeatureProviderImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 512
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->buildUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getDynamicActionBarMetaDataList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    sget-object v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-object v0

    .line 91
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.settings.intent.action.DYNAMIC_ACTION_BAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getActionBarMetaDataListForAction(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get dynamic action bars : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SecDynamicTitleFeatureProviderImpl"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "com.android.settings.category"

    .line 98
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public getFirstDynamicActionBarMetaData(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Ljava/util/List;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const/4 p0, 0x0

    const-string v0, "SecDynamicTitleFeatureProviderImpl"

    if-eqz p2, :cond_7

    .line 111
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/high16 v1, -0x80000000

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 118
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 119
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "com.android.settings.keyhint"

    .line 121
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->isDynamicActionBarDismissed(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dismissed dynamic action bar : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v6, "com.android.settings.order"

    .line 126
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-le v6, v1, :cond_2

    .line 129
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 130
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v6

    goto :goto_1

    :cond_2
    if-ne v6, v1, :cond_3

    .line 132
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 138
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    .line 139
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    :cond_5
    if-nez p0, :cond_6

    const-string p1, "All Dynamic action bars are dismissed."

    .line 143
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object p0

    :cond_7
    :goto_2
    const-string p1, "Dynamic action bar not present."

    .line 112
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
