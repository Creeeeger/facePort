.class public final Lcom/android/internal/app/chooser/SelectableTargetInfo;
.super Ljava/lang/Object;
.source "SelectableTargetInfo.java"

# interfaces
.implements Lcom/android/internal/app/chooser/ChooserTargetInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "SelectableTargetInfo"


# instance fields
.field private final blacklist mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

.field private blacklist mBadgeContentDescription:Ljava/lang/CharSequence;

.field private blacklist mBadgeIcon:Landroid/graphics/drawable/Drawable;

.field private final blacklist mChooserTarget:Landroid/service/chooser/ChooserTarget;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDeviceId:Ljava/lang/String;

.field private blacklist mDeviceShareProgress:I

.field private blacklist mDeviceShareStatus:I

.field private blacklist mDeviceShareStatusLabel:Ljava/lang/CharSequence;

.field private blacklist mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private final blacklist mDisplayLabel:Ljava/lang/String;

.field private final blacklist mFillInFlags:I

.field private final blacklist mFillInIntent:Landroid/content/Intent;

.field private blacklist mIsDeviceTarget:Z

.field private final blacklist mIsPinned:Z

.field private blacklist mIsSuspended:Z

.field private blacklist mIsUWBTarget:Z

.field private final blacklist mModifiedScore:F

.field private final blacklist mPm:Landroid/content/pm/PackageManager;

.field private final blacklist mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

.field private blacklist mShareId:Ljava/lang/CharSequence;

.field private blacklist mShowDeviceNBadge:Z

.field private final blacklist mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private blacklist mUWBAngle:F

.field private blacklist mUWBFocused:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;FLcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/ShortcutInfo;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceInfo"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "chooserTarget"    # Landroid/service/chooser/ChooserTarget;
    .param p4, "modifiedScore"    # F
    .param p5, "selectableTargetInfoComunicator"    # Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;
    .param p6, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 91
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 74
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    .line 76
    iput-boolean v6, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsDeviceTarget:Z

    .line 82
    iput-boolean v6, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsUWBTarget:Z

    .line 83
    const v7, -0x383cb000    # -100000.0f

    iput v7, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mUWBAngle:F

    .line 84
    iput-boolean v6, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mUWBFocused:Z

    .line 85
    iput-boolean v6, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShowDeviceNBadge:Z

    .line 92
    move-object/from16 v7, p1

    iput-object v7, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    .line 93
    iput-object v1, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 94
    iput-object v2, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 95
    move/from16 v8, p4

    iput v8, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 97
    iput-object v3, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    .line 98
    const/4 v9, 0x1

    if-eqz v4, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    move v10, v6

    :goto_0
    iput-boolean v10, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    .line 100
    const-string v10, ""

    iput-object v10, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDeviceId:Ljava/lang/String;

    .line 101
    iput-object v10, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDeviceShareStatusLabel:Ljava/lang/CharSequence;

    .line 102
    iput-object v10, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShareId:Ljava/lang/CharSequence;

    .line 105
    sget-boolean v11, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v11, :cond_4

    invoke-interface {v3, v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->semIsDeviceTargetComponent(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 106
    iput-boolean v9, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsDeviceTarget:Z

    .line 107
    invoke-interface/range {p5 .. p5}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->semGetNearbyShareUwbDefaultAngle()F

    move-result v11

    iput v11, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mUWBAngle:F

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 110
    .local v11, "extras":Landroid/os/Bundle;
    const-string v12, "SelectableTargetInfo"

    if-eqz v11, :cond_3

    .line 111
    const-string v13, "com.samsung.intent.chooser.SHARE_STATUS"

    invoke-virtual {v11, v13, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDeviceShareStatus:I

    .line 112
    const-string v13, "com.samsung.intent.chooser.SHARE_PROGRESS"

    invoke-virtual {v11, v13, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDeviceShareProgress:I

    .line 113
    const-string v13, "com.samsung.intent.chooser.SHARE_STATUS_LABEL"

    invoke-virtual {v11, v13, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    iput-object v13, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDeviceShareStatusLabel:Ljava/lang/CharSequence;

    .line 114
    const-string v13, "deviceId"

    invoke-virtual {v11, v13, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDeviceId:Ljava/lang/String;

    .line 115
    const-string/jumbo v13, "shareId"

    invoke-virtual {v11, v13, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShareId:Ljava/lang/CharSequence;

    .line 117
    invoke-interface/range {p5 .. p5}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->semIsDeviceInLandscape()Z

    move-result v10

    if-nez v10, :cond_3

    .line 118
    const-string v10, "com.samsung.intent.chooser.SHARE_UWB_DEVICE"

    invoke-virtual {v11, v10, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsUWBTarget:Z

    .line 119
    if-eqz v10, :cond_3

    .line 120
    invoke-interface/range {p5 .. p5}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->semGetNearbyShareUwbDefaultAngle()F

    move-result v10

    .line 121
    .local v10, "defaultAngle":F
    invoke-interface/range {p5 .. p5}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->semGetNearbyShareUwbRightBoundAngle()F

    move-result v13

    .line 122
    .local v13, "rightBound":F
    invoke-interface/range {p5 .. p5}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->semGetNearbyShareUwbLeftBoundAngle()F

    move-result v14

    .line 124
    .local v14, "leftBound":F
    float-to-double v6, v10

    const-string v9, "com.samsung.intent.chooser.SHARE_UWB_AOA"

    invoke-virtual {v11, v9, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mUWBAngle:F

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mUWBAngle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mUWBAngle:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-interface/range {p5 .. p5}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->semGetNearbyShareUwbLeftBoundAngle()F

    .line 129
    iget v6, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mUWBAngle:F

    cmpl-float v7, v6, v10

    if-eqz v7, :cond_3

    .line 130
    cmpl-float v7, v6, v14

    if-ltz v7, :cond_1

    cmpg-float v7, v6, v13

    if-gtz v7, :cond_1

    .line 131
    const-string v6, "UWBAngle is valid to focus"

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 132
    :cond_1
    cmpl-float v7, v6, v13

    if-lez v7, :cond_2

    .line 133
    iput v13, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mUWBAngle:F

    goto :goto_1

    .line 134
    :cond_2
    cmpg-float v6, v6, v14

    if-gez v6, :cond_3

    .line 135
    iput v14, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mUWBAngle:F

    .line 142
    .end local v10    # "defaultAngle":F
    .end local v13    # "rightBound":F
    .end local v14    # "leftBound":F
    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mDeviceShareStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDeviceShareStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDeviceShareProgress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDeviceShareProgress:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v11    # "extras":Landroid/os/Bundle;
    :cond_4
    if-eqz v1, :cond_6

    .line 147
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 148
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_6

    .line 149
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 150
    .local v7, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v7, :cond_6

    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_6

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 152
    .local v9, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 153
    iget-object v10, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 154
    iget-object v10, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x40000000    # 2.0f

    and-int/2addr v10, v11

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    iput-boolean v10, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    .line 160
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v7    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    invoke-direct {p0, v2, v4}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getChooserTargetIconDrawable(Landroid/service/chooser/ChooserTarget;Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 162
    if-eqz v1, :cond_7

    .line 163
    iput-object v5, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v9, 0x0

    goto :goto_3

    .line 165
    :cond_7
    nop

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 169
    :goto_3
    iput-object v5, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    .line 170
    iput v9, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInFlags:I

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    .line 173
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/app/chooser/SelectableTargetInfo;Landroid/content/Intent;I)V
    .locals 2
    .param p1, "other"    # Lcom/android/internal/app/chooser/SelectableTargetInfo;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsDeviceTarget:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsUWBTarget:Z

    .line 83
    const v1, -0x383cb000    # -100000.0f

    iput v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mUWBAngle:F

    .line 84
    iput-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mUWBFocused:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShowDeviceNBadge:Z

    .line 177
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    .line 178
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 179
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    .line 180
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 181
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 182
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 183
    iget-object v1, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 184
    iget-object v1, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 185
    iget-object v1, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 186
    iput-object p2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    .line 187
    iput p3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInFlags:I

    .line 188
    iget v1, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    iput v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    .line 189
    iget-boolean v1, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    .line 191
    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    .line 192
    return-void
.end method

.method private blacklist getBaseIntentToSend()Landroid/content/Intent;
    .locals 3

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 284
    .local v0, "result":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 285
    const-string v1, "SelectableTargetInfo"

    const-string v2, "ChooserTargetInfo: no base intent available to send"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v1

    .line 288
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 289
    iget v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->getReferrerFillInIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 293
    :goto_0
    return-object v0
.end method

.method private blacklist getChooserTargetIconDrawable(Landroid/service/chooser/ChooserTarget;Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "target"    # Landroid/service/chooser/ChooserTarget;
    .param p2, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 215
    const/4 v0, 0x0

    .line 218
    .local v0, "directShareIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 219
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 220
    iget-object v3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_0
    if-eqz p2, :cond_1

    .line 222
    iget-object v3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "launcherapps"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps;

    .line 224
    .local v3, "launcherApps":Landroid/content/pm/LauncherApps;
    invoke-virtual {v3, p2, v2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 227
    .end local v3    # "launcherApps":Landroid/content/pm/LauncherApps;
    :cond_1
    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_2

    return-object v3

    .line 229
    :cond_2
    const/4 v4, 0x0

    .line 231
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v2

    .line 234
    goto :goto_1

    .line 232
    :catch_0
    move-exception v2

    .line 233
    .local v2, "error":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "SelectableTargetInfo"

    const-string v6, "Could not find activity associated with ChooserTarget"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v2    # "error":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    if-nez v4, :cond_3

    return-object v3

    .line 239
    :cond_3
    return-object v0
.end method

.method private blacklist sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 196
    if-nez p1, :cond_0

    .line 197
    const-string v0, ""

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 201
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 202
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1
    .param p1, "fillInIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .line 360
    new-instance v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/app/chooser/SelectableTargetInfo;-><init>(Lcom/android/internal/app/chooser/SelectableTargetInfo;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public blacklist getAllSourceIntents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_0
    return-object v0
.end method

.method public blacklist getChooserTarget()Landroid/service/chooser/ChooserTarget;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    return-object v0
.end method

.method public blacklist getDeviceShareId()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceShareProgress()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDeviceShareProgress:I

    return v0
.end method

.method public blacklist getDeviceShareStatus()I
    .locals 1

    .line 415
    iget v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDeviceShareStatus:I

    return v0
.end method

.method public blacklist getDeviceShareStatusLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDeviceShareStatusLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 351
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDisplayResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public blacklist getExtendedInfo()Ljava/lang/CharSequence;
    .locals 1

    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getModifiedScore()F
    .locals 1

    .line 256
    iget v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    return v0
.end method

.method public blacklist getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    :goto_0
    return-object v0
.end method

.method public blacklist getResolvedComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    .line 276
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 279
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getResolvedIntent()Landroid/content/Intent;
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 266
    .local v0, "targetIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 268
    return-object v0
.end method

.method public blacklist getShareId()Ljava/lang/CharSequence;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShareId:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getUWBAngle()F
    .locals 1

    .line 439
    iget v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mUWBAngle:F

    return v0
.end method

.method public blacklist isDeviceBadgeShown()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShowDeviceNBadge:Z

    return v0
.end method

.method public blacklist isDeviceTarget()Z
    .locals 1

    .line 411
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsDeviceTarget:Z

    return v0
.end method

.method public blacklist isPinned()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    return v0
.end method

.method public blacklist isSuspended()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    return v0
.end method

.method public blacklist isUWBFocused()Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mUWBFocused:Z

    return v0
.end method

.method public blacklist isUWBTarget()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsUWBTarget:Z

    return v0
.end method

.method public blacklist semGetBadgeContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist semGetBadgeIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist setDeviceBadgeShow(Z)V
    .locals 0
    .param p1, "set"    # Z

    .line 455
    iput-boolean p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShowDeviceNBadge:Z

    .line 456
    return-void
.end method

.method public blacklist setUWBAngle(F)V
    .locals 0
    .param p1, "uwbAngle"    # F

    .line 447
    iput p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mUWBAngle:F

    .line 448
    return-void
.end method

.method public blacklist setUWBFocus(Z)V
    .locals 0
    .param p1, "set"    # Z

    .line 451
    iput-boolean p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mUWBFocused:Z

    .line 452
    return-void
.end method

.method public blacklist start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 298
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ChooserTargets should be started as caller."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .locals 5
    .param p1, "activity"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 303
    invoke-direct {p0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getBaseIntentToSend()Landroid/content/Intent;

    move-result-object v0

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 305
    return v1

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 308
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 309
    invoke-static {v0, p3}, Lcom/android/internal/app/chooser/TargetInfo;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V

    .line 319
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 320
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 321
    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    nop

    .line 323
    .local v1, "ignoreTargetSecurity":Z
    :goto_0
    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/android/internal/app/ResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 324
    return v3
.end method

.method public blacklist startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 330
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ChooserTargets should be started as caller."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
