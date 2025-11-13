.class public Landroid/service/controls/CustomControl;
.super Ljava/lang/Object;
.source "CustomControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/CustomControl$CustomStatefulBuilder;,
        Landroid/service/controls/CustomControl$CustomStatelessBuilder;,
        Landroid/service/controls/CustomControl$CustomSound;,
        Landroid/service/controls/CustomControl$LayoutType;,
        Landroid/service/controls/CustomControl$StatusIconType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/controls/CustomControl;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CUSTOM_SOUND_AUTOMATION_ERROR:I = 0x1

.field public static final blacklist CUSTOM_SOUND_AUTOMATION_SUCCESS:I = 0x2

.field public static final blacklist CUSTOM_SOUND_MEDIA_PAUSE:I = 0x3

.field public static final blacklist CUSTOM_SOUND_MEDIA_PLAY_RESUME:I = 0x4

.field public static final blacklist CUSTOM_SOUND_NONE:I = 0x0

.field public static final blacklist LAYOUT_TYPE_NORMAL:I = 0x0

.field public static final blacklist LAYOUT_TYPE_SMALL:I = 0x1

.field private static final blacklist NUM_STATUS_ICON_TYPE:I = 0x3

.field public static final blacklist STATUS_ICON_TYPE_OFFLINE:I = 0x1

.field public static final blacklist STATUS_ICON_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist STATUS_ICON_TYPE_WARNING:I = 0x2


# instance fields
.field private blacklist mActionIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mAllowBasicActionWhenLocked:Z

.field private blacklist mCustomIconAnimationEndFrame:I

.field private blacklist mCustomIconAnimationJson:Ljava/lang/String;

.field private blacklist mCustomIconAnimationJsonCache:Ljava/lang/String;

.field private blacklist mCustomIconAnimationRepeatCount:I

.field private blacklist mCustomIconAnimationStartFrame:I

.field private blacklist mCustomSound:I

.field private blacklist mCustomStatusIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLayoutType:I

.field private blacklist mOrder:I

.field private blacklist mOverlayCustomIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mStatusIconType:I

.field private blacklist mStatusTextColor:Landroid/content/res/ColorStateList;

.field private blacklist mUseCustomIconWithoutPadding:Z

.field private blacklist mUseCustomIconWithoutShadowBg:Z

.field private blacklist mUseFullScreenDetailDialog:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActionIcon(Landroid/service/controls/CustomControl;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/CustomControl;->mActionIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowBasicActionWhenLocked(Landroid/service/controls/CustomControl;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/controls/CustomControl;->mAllowBasicActionWhenLocked:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomIconAnimationEndFrame(Landroid/service/controls/CustomControl;)I
    .locals 0

    iget p0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationEndFrame:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomIconAnimationJson(Landroid/service/controls/CustomControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationJson:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomIconAnimationJsonCache(Landroid/service/controls/CustomControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomIconAnimationRepeatCount(Landroid/service/controls/CustomControl;)I
    .locals 0

    iget p0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationRepeatCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomIconAnimationStartFrame(Landroid/service/controls/CustomControl;)I
    .locals 0

    iget p0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationStartFrame:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomSound(Landroid/service/controls/CustomControl;)I
    .locals 0

    iget p0, p0, Landroid/service/controls/CustomControl;->mCustomSound:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomStatusIcon(Landroid/service/controls/CustomControl;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/CustomControl;->mCustomStatusIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLayoutType(Landroid/service/controls/CustomControl;)I
    .locals 0

    iget p0, p0, Landroid/service/controls/CustomControl;->mLayoutType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOrder(Landroid/service/controls/CustomControl;)I
    .locals 0

    iget p0, p0, Landroid/service/controls/CustomControl;->mOrder:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverlayCustomIcon(Landroid/service/controls/CustomControl;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/CustomControl;->mOverlayCustomIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusIconType(Landroid/service/controls/CustomControl;)I
    .locals 0

    iget p0, p0, Landroid/service/controls/CustomControl;->mStatusIconType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusTextColor(Landroid/service/controls/CustomControl;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/CustomControl;->mStatusTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseCustomIconWithoutPadding(Landroid/service/controls/CustomControl;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/controls/CustomControl;->mUseCustomIconWithoutPadding:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseCustomIconWithoutShadowBg(Landroid/service/controls/CustomControl;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/controls/CustomControl;->mUseCustomIconWithoutShadowBg:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseFullScreenDetailDialog(Landroid/service/controls/CustomControl;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/controls/CustomControl;->mUseFullScreenDetailDialog:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActionIcon(Landroid/service/controls/CustomControl;Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Landroid/service/controls/CustomControl;->mActionIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowBasicActionWhenLocked(Landroid/service/controls/CustomControl;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/controls/CustomControl;->mAllowBasicActionWhenLocked:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCustomIconAnimationEndFrame(Landroid/service/controls/CustomControl;I)V
    .locals 0

    iput p1, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationEndFrame:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCustomIconAnimationJson(Landroid/service/controls/CustomControl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationJson:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCustomIconAnimationJsonCache(Landroid/service/controls/CustomControl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCustomIconAnimationRepeatCount(Landroid/service/controls/CustomControl;I)V
    .locals 0

    iput p1, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationRepeatCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCustomIconAnimationStartFrame(Landroid/service/controls/CustomControl;I)V
    .locals 0

    iput p1, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationStartFrame:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCustomSound(Landroid/service/controls/CustomControl;I)V
    .locals 0

    iput p1, p0, Landroid/service/controls/CustomControl;->mCustomSound:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCustomStatusIcon(Landroid/service/controls/CustomControl;Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Landroid/service/controls/CustomControl;->mCustomStatusIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLayoutType(Landroid/service/controls/CustomControl;I)V
    .locals 0

    iput p1, p0, Landroid/service/controls/CustomControl;->mLayoutType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOrder(Landroid/service/controls/CustomControl;I)V
    .locals 0

    iput p1, p0, Landroid/service/controls/CustomControl;->mOrder:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOverlayCustomIcon(Landroid/service/controls/CustomControl;Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Landroid/service/controls/CustomControl;->mOverlayCustomIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStatusIconType(Landroid/service/controls/CustomControl;I)V
    .locals 0

    iput p1, p0, Landroid/service/controls/CustomControl;->mStatusIconType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStatusTextColor(Landroid/service/controls/CustomControl;Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/service/controls/CustomControl;->mStatusTextColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUseCustomIconWithoutPadding(Landroid/service/controls/CustomControl;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/controls/CustomControl;->mUseCustomIconWithoutPadding:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUseCustomIconWithoutShadowBg(Landroid/service/controls/CustomControl;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/controls/CustomControl;->mUseCustomIconWithoutShadowBg:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUseFullScreenDetailDialog(Landroid/service/controls/CustomControl;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/controls/CustomControl;->mUseFullScreenDetailDialog:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 392
    new-instance v0, Landroid/service/controls/CustomControl$1;

    invoke-direct {v0}, Landroid/service/controls/CustomControl$1;-><init>()V

    sput-object v0, Landroid/service/controls/CustomControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationJson:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationStartFrame:I

    .line 56
    iput v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationEndFrame:I

    .line 59
    iput v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationRepeatCount:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseFullScreenDetailDialog:Z

    .line 69
    iput-boolean v0, p0, Landroid/service/controls/CustomControl;->mAllowBasicActionWhenLocked:Z

    .line 76
    iput v0, p0, Landroid/service/controls/CustomControl;->mStatusIconType:I

    .line 80
    iput-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseCustomIconWithoutShadowBg:Z

    .line 83
    iput-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseCustomIconWithoutPadding:Z

    .line 86
    iput v0, p0, Landroid/service/controls/CustomControl;->mOrder:I

    .line 108
    iput v0, p0, Landroid/service/controls/CustomControl;->mLayoutType:I

    .line 139
    iput v0, p0, Landroid/service/controls/CustomControl;->mCustomSound:I

    .line 147
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationJson:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationStartFrame:I

    .line 56
    iput v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationEndFrame:I

    .line 59
    iput v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationRepeatCount:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseFullScreenDetailDialog:Z

    .line 69
    iput-boolean v0, p0, Landroid/service/controls/CustomControl;->mAllowBasicActionWhenLocked:Z

    .line 76
    iput v0, p0, Landroid/service/controls/CustomControl;->mStatusIconType:I

    .line 80
    iput-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseCustomIconWithoutShadowBg:Z

    .line 83
    iput-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseCustomIconWithoutPadding:Z

    .line 86
    iput v0, p0, Landroid/service/controls/CustomControl;->mOrder:I

    .line 108
    iput v0, p0, Landroid/service/controls/CustomControl;->mLayoutType:I

    .line 139
    iput v0, p0, Landroid/service/controls/CustomControl;->mCustomSound:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationJson:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationStartFrame:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationEndFrame:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationRepeatCount:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 160
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/controls/CustomControl;->mActionIcon:Landroid/graphics/drawable/Icon;

    goto :goto_0

    .line 162
    :cond_0
    iput-object v1, p0, Landroid/service/controls/CustomControl;->mActionIcon:Landroid/graphics/drawable/Icon;

    .line 167
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseFullScreenDetailDialog:Z

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/CustomControl;->mAllowBasicActionWhenLocked:Z

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    .line 176
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/service/controls/CustomControl;->mStatusTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 178
    :cond_1
    iput-object v1, p0, Landroid/service/controls/CustomControl;->mStatusTextColor:Landroid/content/res/ColorStateList;

    .line 181
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/CustomControl;->mStatusIconType:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseCustomIconWithoutShadowBg:Z

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseCustomIconWithoutPadding:Z

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/CustomControl;->mOrder:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    .line 198
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/controls/CustomControl;->mCustomStatusIcon:Landroid/graphics/drawable/Icon;

    goto :goto_2

    .line 200
    :cond_2
    iput-object v1, p0, Landroid/service/controls/CustomControl;->mCustomStatusIcon:Landroid/graphics/drawable/Icon;

    .line 205
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/CustomControl;->mLayoutType:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/CustomControl;->mCustomSound:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Icon;

    :cond_3
    iput-object v1, p0, Landroid/service/controls/CustomControl;->mOverlayCustomIcon:Landroid/graphics/drawable/Icon;

    .line 215
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActionIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 247
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mActionIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getAllowBasicActionWhenLocked()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Landroid/service/controls/CustomControl;->mAllowBasicActionWhenLocked:Z

    return v0
.end method

.method public blacklist getCustomIconAnimationEndFrame()I
    .locals 1

    .line 236
    iget v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationEndFrame:I

    return v0
.end method

.method public blacklist getCustomIconAnimationJson()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationJson:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCustomIconAnimationJsonCache()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCustomIconAnimationRepeatCount()I
    .locals 1

    .line 241
    iget v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationRepeatCount:I

    return v0
.end method

.method public blacklist getCustomIconAnimationStartFrame()I
    .locals 1

    .line 231
    iget v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationStartFrame:I

    return v0
.end method

.method public blacklist getCustomSound()I
    .locals 1

    .line 300
    iget v0, p0, Landroid/service/controls/CustomControl;->mCustomSound:I

    return v0
.end method

.method public blacklist getCustomStatusIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 290
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mCustomStatusIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getLayoutType()I
    .locals 1

    .line 295
    iget v0, p0, Landroid/service/controls/CustomControl;->mLayoutType:I

    return v0
.end method

.method public blacklist getOrder()I
    .locals 1

    .line 284
    iget v0, p0, Landroid/service/controls/CustomControl;->mOrder:I

    return v0
.end method

.method public blacklist getOverlayCustomIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 306
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mOverlayCustomIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getStatusIconType()I
    .locals 1

    .line 269
    iget v0, p0, Landroid/service/controls/CustomControl;->mStatusIconType:I

    return v0
.end method

.method public blacklist getStatusTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 263
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mStatusTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public blacklist getUseCustomIconWithoutPadding()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseCustomIconWithoutPadding:Z

    return v0
.end method

.method public blacklist getUseCustomIconWithoutShadowBg()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseCustomIconWithoutShadowBg:Z

    return v0
.end method

.method public blacklist getUseFullScreenDetailDialog()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseFullScreenDetailDialog:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 317
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationJson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationStartFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationEndFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Landroid/service/controls/CustomControl;->mCustomIconAnimationRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mActionIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 327
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mActionIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 334
    :goto_0
    iget-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseFullScreenDetailDialog:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 338
    iget-boolean v0, p0, Landroid/service/controls/CustomControl;->mAllowBasicActionWhenLocked:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 342
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mStatusTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 344
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mStatusTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 346
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 349
    :goto_1
    iget v0, p0, Landroid/service/controls/CustomControl;->mStatusIconType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseCustomIconWithoutShadowBg:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 357
    iget-boolean v0, p0, Landroid/service/controls/CustomControl;->mUseCustomIconWithoutPadding:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 361
    iget v0, p0, Landroid/service/controls/CustomControl;->mOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mCustomStatusIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2

    .line 366
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 367
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mCustomStatusIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 369
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 374
    :goto_2
    iget v0, p0, Landroid/service/controls/CustomControl;->mLayoutType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget v0, p0, Landroid/service/controls/CustomControl;->mCustomSound:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mOverlayCustomIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_3

    .line 383
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 384
    iget-object v0, p0, Landroid/service/controls/CustomControl;->mOverlayCustomIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 386
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 389
    :goto_3
    return-void
.end method
