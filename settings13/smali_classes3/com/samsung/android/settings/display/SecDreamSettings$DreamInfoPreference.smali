.class Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;
.super Landroidx/preference/SecPreference;
.source "SecDreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoPreference"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

.field private mLastPreference:Ljava/lang/Boolean;

.field private mRadioButton:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDreamSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmInfo(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minsertCurrentScreenSaverLogging(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->insertCurrentScreenSaverLogging()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    .line 445
    invoke-direct {p0, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;)V

    .line 442
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mLastPreference:Ljava/lang/Boolean;

    .line 446
    iput-object p3, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    .line 447
    sget p1, Lcom/android/settings/R$layout;->sec_dream_info_row:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 448
    iget-object p1, p3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    iget-object p1, p3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 450
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    return-void
.end method

.method private insertCurrentScreenSaverLogging()V
    .locals 8

    .line 542
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    .line 544
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.dreams.basic/com.android.dreams.basic.Colors"

    .line 545
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "com.android.dreams.phototable/com.android.dreams.phototable.FlipperDream"

    .line 547
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    goto :goto_2

    :cond_1
    const-string v1, "com.android.dreams.phototable/com.android.dreams.phototable.PhotoTableDream"

    .line 549
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    goto :goto_2

    :cond_2
    const-string v1, "com.google.android.apps.photos/com.google.android.apps.photos.daydream.PhotosDreamService"

    .line 551
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    goto :goto_2

    .line 556
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmBackend(Lcom/samsung/android/settings/display/SecDreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    move v5, v4

    .line 559
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0xd

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 560
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v6, v6, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 561
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->isPreInstalledSaver(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 563
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/2addr v4, v3

    sub-int/2addr v4, v5

    mul-int/lit8 v3, v4, 0xb

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    move v3, v2

    :goto_2
    if-eq v3, v2, :cond_7

    const/16 p0, 0x2f

    .line 571
    invoke-static {}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$sfgetSCREEN_SAVER_CURRENT_COMPONENT()I

    move-result v0

    int-to-long v1, v3

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_7
    return-void
.end method

.method private isPreInstalledSaver(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "com.android.dreams.basic/com.android.dreams.basic.Colors"

    .line 577
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "com.android.dreams.phototable/com.android.dreams.phototable.FlipperDream"

    .line 579
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const-string p0, "com.android.dreams.phototable/com.android.dreams.phototable.PhotoTableDream"

    .line 581
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const-string p0, "com.google.android.apps.photos/com.google.android.apps.photos.daydream.PhotosDreamService"

    .line 583
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 453
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020019

    .line 455
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 456
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecDreamSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->isDreamEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 457
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mRadioButton:Landroid/widget/RadioButton;

    new-instance v1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$1;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 464
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmBackend(Lcom/samsung/android/settings/display/SecDreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 474
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    const v1, 0x102001a

    .line 475
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v4, 0x4

    if-eqz v2, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v4

    .line 476
    :goto_3
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const v5, 0x3ecccccd    # 0.4f

    .line 477
    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 478
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 479
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 480
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVerticalScrollBarEnabled(Z)V

    .line 481
    new-instance v0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$3;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    sget v0, Lcom/android/settings/R$id;->config_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move v3, v4

    .line 502
    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 504
    sget v0, Lcom/android/settings/R$id;->divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 505
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mLastPreference:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x8

    .line 506
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public performClick()V
    .locals 5

    .line 516
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fputmBlockListClickEvent(Lcom/samsung/android/settings/display/SecDreamSettings;Z)V

    .line 518
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    .line 519
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fputmSkipRemoveAddPreferenceUpdateFromTouch(Lcom/samsung/android/settings/display/SecDreamSettings;Z)V

    move v0, v1

    .line 520
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-virtual {v3}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 521
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-virtual {v3}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 522
    instance-of v4, v3, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    if-eqz v4, :cond_0

    .line 523
    check-cast v3, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    .line 524
    iget-object v4, v3, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iput-boolean v1, v4, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    .line 525
    invoke-virtual {v3}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_1

    .line 526
    :cond_0
    instance-of v4, v3, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    if-eqz v4, :cond_1

    .line 527
    check-cast v3, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    .line 528
    invoke-virtual {v3}, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->updateDataChanged()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iput-boolean v2, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    .line 532
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecDreamSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->isDreamEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 533
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecDreamSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    .line 535
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmBackend(Lcom/samsung/android/settings/display/SecDreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    .line 536
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 537
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$mupdateOnOffLoggingHelper(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 590
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz p0, :cond_0

    .line 591
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setLastPreference(Ljava/lang/Boolean;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mLastPreference:Ljava/lang/Boolean;

    return-void
.end method

.method public updateDataChanged()V
    .locals 0

    .line 596
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
