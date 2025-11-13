.class public final Landroid/service/controls/Control$StatelessBuilder;
.super Ljava/lang/Object;
.source "Control.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatelessBuilder"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "StatelessBuilder"


# instance fields
.field private blacklist mAppIntent:Landroid/app/PendingIntent;

.field private blacklist mControlId:Ljava/lang/String;

.field private blacklist mCustomColor:Landroid/content/res/ColorStateList;

.field private blacklist mCustomIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mCustomStatelessBuilder:Landroid/service/controls/CustomControl$CustomStatelessBuilder;

.field private blacklist mDeviceType:I

.field private blacklist mStructure:Ljava/lang/CharSequence;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mZone:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/service/controls/Control;)V
    .locals 2
    .param p1, "control"    # Landroid/service/controls/Control;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    .line 459
    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 460
    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 493
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmControlId(Landroid/service/controls/Control;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mControlId:Ljava/lang/String;

    .line 495
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmDeviceType(Landroid/service/controls/Control;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    .line 496
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmTitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 497
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmSubtitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 498
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmStructure(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mStructure:Ljava/lang/CharSequence;

    .line 499
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmZone(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mZone:Ljava/lang/CharSequence;

    .line 500
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmAppIntent(Landroid/service/controls/Control;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mAppIntent:Landroid/app/PendingIntent;

    .line 501
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmCustomIcon(Landroid/service/controls/Control;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    .line 502
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmCustomColor(Landroid/service/controls/Control;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    .line 505
    new-instance v0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmCustomControl(Landroid/service/controls/Control;)Landroid/service/controls/CustomControl;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;-><init>(Landroid/service/controls/CustomControl;)V

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomStatelessBuilder:Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    .line 507
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "controlId"    # Ljava/lang/String;
    .param p2, "appIntent"    # Landroid/app/PendingIntent;

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    .line 459
    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 460
    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 477
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mControlId:Ljava/lang/String;

    .line 480
    iput-object p2, p0, Landroid/service/controls/Control$StatelessBuilder;->mAppIntent:Landroid/app/PendingIntent;

    .line 483
    new-instance v0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-direct {v0}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;-><init>()V

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomStatelessBuilder:Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    .line 485
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/controls/Control;
    .locals 15

    .line 699
    new-instance v14, Landroid/service/controls/Control;

    iget-object v1, p0, Landroid/service/controls/Control$StatelessBuilder;->mControlId:Ljava/lang/String;

    iget v2, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    iget-object v3, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/service/controls/Control$StatelessBuilder;->mStructure:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/service/controls/Control$StatelessBuilder;->mZone:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/service/controls/Control$StatelessBuilder;->mAppIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    iget-object v9, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    sget-object v11, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    const/4 v10, 0x0

    const-string v12, ""

    const/4 v13, 0x1

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/service/controls/Control;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/content/res/ColorStateList;ILandroid/service/controls/templates/ControlTemplate;Ljava/lang/CharSequence;Z)V

    .line 713
    .local v0, "control":Landroid/service/controls/Control;
    iget-object v1, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomStatelessBuilder:Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-virtual {v1}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->build()Landroid/service/controls/CustomControl;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/service/controls/Control;->-$$Nest$fputmCustomControl(Landroid/service/controls/Control;Landroid/service/controls/CustomControl;)V

    .line 715
    return-object v0
.end method

.method public blacklist getCustomStatelessBuilder()Landroid/service/controls/CustomControl$CustomStatelessBuilder;
    .locals 1

    .line 690
    iget-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomStatelessBuilder:Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    return-object v0
.end method

.method public whitelist setAppIntent(Landroid/app/PendingIntent;)Landroid/service/controls/Control$StatelessBuilder;
    .locals 0
    .param p1, "appIntent"    # Landroid/app/PendingIntent;

    .line 592
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mAppIntent:Landroid/app/PendingIntent;

    .line 594
    return-object p0
.end method

.method public whitelist setControlId(Ljava/lang/String;)Landroid/service/controls/Control$StatelessBuilder;
    .locals 0
    .param p1, "controlId"    # Ljava/lang/String;

    .line 515
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mControlId:Ljava/lang/String;

    .line 517
    return-object p0
.end method

.method public whitelist setCustomColor(Landroid/content/res/ColorStateList;)Landroid/service/controls/Control$StatelessBuilder;
    .locals 0
    .param p1, "customColor"    # Landroid/content/res/ColorStateList;

    .line 620
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    .line 621
    return-object p0
.end method

.method public whitelist setCustomIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/Control$StatelessBuilder;
    .locals 0
    .param p1, "customIcon"    # Landroid/graphics/drawable/Icon;

    .line 606
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    .line 607
    return-object p0
.end method

.method public blacklist setCustomIconAnimationJson(Ljava/lang/String;Ljava/lang/String;)Landroid/service/controls/Control$StatelessBuilder;
    .locals 1
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "jsonCache"    # Ljava/lang/String;

    .line 660
    iget-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomStatelessBuilder:Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-virtual {v0, p1, p2}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->setCustomIconAnimationJson(Ljava/lang/String;Ljava/lang/String;)Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    .line 661
    return-object p0
.end method

.method public blacklist setCustomIconAnimationRepeatCount(I)Landroid/service/controls/Control$StatelessBuilder;
    .locals 1
    .param p1, "count"    # I

    .line 680
    iget-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomStatelessBuilder:Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->setCustomIconAnimationRepeatCount(I)Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    .line 681
    return-object p0
.end method

.method public blacklist setCustomIconAnimationStartAndEndFrame(II)Landroid/service/controls/Control$StatelessBuilder;
    .locals 1
    .param p1, "startFrame"    # I
    .param p2, "endFrame"    # I

    .line 670
    iget-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomStatelessBuilder:Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-virtual {v0, p1, p2}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->setCustomIconAnimationStartAndEndFrame(II)Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    .line 671
    return-object p0
.end method

.method public whitelist setDeviceType(I)Landroid/service/controls/Control$StatelessBuilder;
    .locals 2
    .param p1, "deviceType"    # I

    .line 527
    invoke-static {p1}, Landroid/service/controls/DeviceTypes;->validDeviceType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid device type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatelessBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    goto :goto_0

    .line 531
    :cond_0
    iput p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    .line 533
    :goto_0
    return-object p0
.end method

.method public blacklist setLayoutType(I)Landroid/service/controls/Control$StatelessBuilder;
    .locals 1
    .param p1, "type"    # I

    .line 650
    iget-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomStatelessBuilder:Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->setLayoutType(I)Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    .line 651
    return-object p0
.end method

.method public whitelist setStructure(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;
    .locals 0
    .param p1, "structure"    # Ljava/lang/CharSequence;

    .line 569
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mStructure:Ljava/lang/CharSequence;

    .line 570
    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 554
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 556
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 542
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 544
    return-object p0
.end method

.method public blacklist setUseCustomIconWithoutPadding(Z)Landroid/service/controls/Control$StatelessBuilder;
    .locals 1
    .param p1, "useCustomIconWithoutPadding"    # Z

    .line 640
    iget-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomStatelessBuilder:Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->setUseCustomIconWithoutPadding(Z)Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    .line 641
    return-object p0
.end method

.method public blacklist setUseCustomIconWithoutShadowBg(Z)Landroid/service/controls/Control$StatelessBuilder;
    .locals 1
    .param p1, "useCustomIconWithoutShadowBg"    # Z

    .line 630
    iget-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomStatelessBuilder:Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->setUseCustomIconWithoutShadowBg(Z)Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    .line 631
    return-object p0
.end method

.method public whitelist setZone(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;
    .locals 0
    .param p1, "zone"    # Ljava/lang/CharSequence;

    .line 582
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mZone:Ljava/lang/CharSequence;

    .line 583
    return-object p0
.end method
