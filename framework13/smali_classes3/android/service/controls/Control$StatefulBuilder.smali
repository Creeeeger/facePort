.class public final Landroid/service/controls/Control$StatefulBuilder;
.super Ljava/lang/Object;
.source "Control.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatefulBuilder"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "StatefulBuilder"


# instance fields
.field private blacklist mAppIntent:Landroid/app/PendingIntent;

.field private blacklist mAuthRequired:Z

.field private blacklist mControlId:Ljava/lang/String;

.field private blacklist mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

.field private blacklist mCustomColor:Landroid/content/res/ColorStateList;

.field private blacklist mCustomIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

.field private blacklist mDeviceType:I

.field private blacklist mStatus:I

.field private blacklist mStatusText:Ljava/lang/CharSequence;

.field private blacklist mStructure:Ljava/lang/CharSequence;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mZone:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/service/controls/Control;)V
    .locals 2
    .param p1, "control"    # Landroid/service/controls/Control;

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    .line 759
    const-string v1, ""

    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 760
    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 766
    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    .line 767
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 768
    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mAuthRequired:Z

    .line 797
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmControlId(Landroid/service/controls/Control;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlId:Ljava/lang/String;

    .line 799
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmDeviceType(Landroid/service/controls/Control;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    .line 800
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmTitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 801
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmSubtitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 802
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmStructure(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStructure:Ljava/lang/CharSequence;

    .line 803
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmZone(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mZone:Ljava/lang/CharSequence;

    .line 804
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmAppIntent(Landroid/service/controls/Control;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mAppIntent:Landroid/app/PendingIntent;

    .line 805
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmCustomIcon(Landroid/service/controls/Control;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    .line 806
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmCustomColor(Landroid/service/controls/Control;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    .line 807
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmStatus(Landroid/service/controls/Control;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    .line 808
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmControlTemplate(Landroid/service/controls/Control;)Landroid/service/controls/templates/ControlTemplate;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 809
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmStatusText(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    .line 810
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmAuthRequired(Landroid/service/controls/Control;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mAuthRequired:Z

    .line 813
    new-instance v0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmCustomControl(Landroid/service/controls/Control;)Landroid/service/controls/CustomControl;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;-><init>(Landroid/service/controls/CustomControl;)V

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 815
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "controlId"    # Ljava/lang/String;
    .param p2, "appIntent"    # Landroid/app/PendingIntent;

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    .line 759
    const-string v1, ""

    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 760
    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 766
    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    .line 767
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 768
    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mAuthRequired:Z

    .line 781
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlId:Ljava/lang/String;

    .line 784
    iput-object p2, p0, Landroid/service/controls/Control$StatefulBuilder;->mAppIntent:Landroid/app/PendingIntent;

    .line 787
    new-instance v0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-direct {v0}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;-><init>()V

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 789
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/controls/Control;
    .locals 15

    .line 1146
    new-instance v14, Landroid/service/controls/Control;

    iget-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlId:Ljava/lang/String;

    iget v2, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    iget-object v3, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/service/controls/Control$StatefulBuilder;->mStructure:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/service/controls/Control$StatefulBuilder;->mZone:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/service/controls/Control$StatefulBuilder;->mAppIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    iget-object v9, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    iget v10, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    iget-object v11, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    iget-object v12, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    iget-boolean v13, p0, Landroid/service/controls/Control$StatefulBuilder;->mAuthRequired:Z

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/service/controls/Control;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/content/res/ColorStateList;ILandroid/service/controls/templates/ControlTemplate;Ljava/lang/CharSequence;Z)V

    .line 1160
    .local v0, "control":Landroid/service/controls/Control;
    iget-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->build()Landroid/service/controls/CustomControl;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/service/controls/Control;->-$$Nest$fputmCustomControl(Landroid/service/controls/Control;Landroid/service/controls/CustomControl;)V

    .line 1162
    return-object v0
.end method

.method public blacklist getCustomStatefulBuilder()Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 1

    .line 1137
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    return-object v0
.end method

.method public blacklist setActionIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/Control$StatefulBuilder;
    .locals 1
    .param p1, "actionIcon"    # Landroid/graphics/drawable/Icon;

    .line 1027
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setActionIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 1028
    return-object p0
.end method

.method public blacklist setAllowBasicActionWhenLocked(Z)Landroid/service/controls/Control$StatefulBuilder;
    .locals 1
    .param p1, "allowBasicActionWhenLocked"    # Z

    .line 1047
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setAllowBasicActionWhenLocked(Z)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 1048
    return-object p0
.end method

.method public whitelist setAppIntent(Landroid/app/PendingIntent;)Landroid/service/controls/Control$StatefulBuilder;
    .locals 0
    .param p1, "appIntent"    # Landroid/app/PendingIntent;

    .line 900
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mAppIntent:Landroid/app/PendingIntent;

    .line 902
    return-object p0
.end method

.method public whitelist setAuthRequired(Z)Landroid/service/controls/Control$StatefulBuilder;
    .locals 0
    .param p1, "authRequired"    # Z

    .line 987
    iput-boolean p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mAuthRequired:Z

    .line 988
    return-object p0
.end method

.method public whitelist setControlId(Ljava/lang/String;)Landroid/service/controls/Control$StatefulBuilder;
    .locals 0
    .param p1, "controlId"    # Ljava/lang/String;

    .line 823
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlId:Ljava/lang/String;

    .line 825
    return-object p0
.end method

.method public whitelist setControlTemplate(Landroid/service/controls/templates/ControlTemplate;)Landroid/service/controls/Control$StatefulBuilder;
    .locals 0
    .param p1, "controlTemplate"    # Landroid/service/controls/templates/ControlTemplate;

    .line 963
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 965
    return-object p0
.end method

.method public whitelist setCustomColor(Landroid/content/res/ColorStateList;)Landroid/service/controls/Control$StatefulBuilder;
    .locals 0
    .param p1, "customColor"    # Landroid/content/res/ColorStateList;

    .line 928
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    .line 929
    return-object p0
.end method

.method public whitelist setCustomIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/Control$StatefulBuilder;
    .locals 0
    .param p1, "customIcon"    # Landroid/graphics/drawable/Icon;

    .line 914
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    .line 915
    return-object p0
.end method

.method public blacklist setCustomIconAnimationJson(Ljava/lang/String;Ljava/lang/String;)Landroid/service/controls/Control$StatefulBuilder;
    .locals 1
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "jsonCache"    # Ljava/lang/String;

    .line 997
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v0, p1, p2}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setCustomIconAnimationJson(Ljava/lang/String;Ljava/lang/String;)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 998
    return-object p0
.end method

.method public blacklist setCustomIconAnimationRepeatCount(I)Landroid/service/controls/Control$StatefulBuilder;
    .locals 1
    .param p1, "count"    # I

    .line 1017
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setCustomIconAnimationRepeatCount(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 1018
    return-object p0
.end method

.method public blacklist setCustomIconAnimationStartAndEndFrame(II)Landroid/service/controls/Control$StatefulBuilder;
    .locals 1
    .param p1, "startFrame"    # I
    .param p2, "endFrame"    # I

    .line 1007
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v0, p1, p2}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setCustomIconAnimationStartAndEndFrame(II)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 1008
    return-object p0
.end method

.method public blacklist setCustomSound(I)Landroid/service/controls/Control$StatefulBuilder;
    .locals 1
    .param p1, "customSound"    # I

    .line 1127
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setCustomSound(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 1128
    return-object p0
.end method

.method public blacklist setCustomStatusIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/Control$StatefulBuilder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 1107
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setCustomStatusIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 1108
    return-object p0
.end method

.method public whitelist setDeviceType(I)Landroid/service/controls/Control$StatefulBuilder;
    .locals 2
    .param p1, "deviceType"    # I

    .line 835
    invoke-static {p1}, Landroid/service/controls/DeviceTypes;->validDeviceType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid device type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatefulBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    goto :goto_0

    .line 839
    :cond_0
    iput p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    .line 841
    :goto_0
    return-object p0
.end method

.method public blacklist setLayoutType(I)Landroid/service/controls/Control$StatefulBuilder;
    .locals 1
    .param p1, "type"    # I

    .line 1117
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setLayoutType(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 1118
    return-object p0
.end method

.method public blacklist setOrder(I)Landroid/service/controls/Control$StatefulBuilder;
    .locals 1
    .param p1, "order"    # I

    .line 1097
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setOrder(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 1098
    return-object p0
.end method

.method public whitelist setStatus(I)Landroid/service/controls/Control$StatefulBuilder;
    .locals 2
    .param p1, "status"    # I

    .line 939
    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 943
    :cond_0
    iput p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    goto :goto_1

    .line 940
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatefulBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :goto_1
    return-object p0
.end method

.method public blacklist setStatusIconType(I)Landroid/service/controls/Control$StatefulBuilder;
    .locals 1
    .param p1, "statusIconType"    # I

    .line 1067
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setStatusIconType(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 1068
    return-object p0
.end method

.method public whitelist setStatusText(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .locals 0
    .param p1, "statusText"    # Ljava/lang/CharSequence;

    .line 975
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    .line 977
    return-object p0
.end method

.method public blacklist setStatusTextColor(Landroid/content/res/ColorStateList;)Landroid/service/controls/Control$StatefulBuilder;
    .locals 1
    .param p1, "statusTextColor"    # Landroid/content/res/ColorStateList;

    .line 1057
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setStatusTextColor(Landroid/content/res/ColorStateList;)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 1058
    return-object p0
.end method

.method public whitelist setStructure(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .locals 0
    .param p1, "structure"    # Ljava/lang/CharSequence;

    .line 877
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStructure:Ljava/lang/CharSequence;

    .line 878
    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 862
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 864
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 850
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 852
    return-object p0
.end method

.method public blacklist setUseCustomIconWithoutPadding(Z)Landroid/service/controls/Control$StatefulBuilder;
    .locals 1
    .param p1, "useCustomIconWithoutPadding"    # Z

    .line 1087
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setUseCustomIconWithoutPadding(Z)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 1088
    return-object p0
.end method

.method public blacklist setUseCustomIconWithoutShadowBg(Z)Landroid/service/controls/Control$StatefulBuilder;
    .locals 1
    .param p1, "useCustomIconWithoutShadowBg"    # Z

    .line 1077
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setUseCustomIconWithoutShadowBg(Z)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 1078
    return-object p0
.end method

.method public blacklist setUseFullScreenDetailDialog(Z)Landroid/service/controls/Control$StatefulBuilder;
    .locals 1
    .param p1, "useFullScreenDetailDialog"    # Z

    .line 1037
    iget-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomStatefulBuilder:Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    invoke-virtual {v0, p1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setUseFullScreenDetailDialog(Z)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 1038
    return-object p0
.end method

.method public whitelist setZone(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .locals 0
    .param p1, "zone"    # Ljava/lang/CharSequence;

    .line 890
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mZone:Ljava/lang/CharSequence;

    .line 891
    return-object p0
.end method
