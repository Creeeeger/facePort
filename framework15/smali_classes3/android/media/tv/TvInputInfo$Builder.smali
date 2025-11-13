.class public final Landroid/media/tv/TvInputInfo$Builder;
.super Ljava/lang/Object;
.source "TvInputInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final greylist-max-o DELIMITER_INFO_IN_ID:Ljava/lang/String; = "/"

.field private static final greylist-max-o LENGTH_HDMI_DEVICE_ID:I = 0x2

.field private static final greylist-max-o LENGTH_HDMI_PHYSICAL_ADDRESS:I = 0x4

.field private static final greylist-max-o PREFIX_HARDWARE_DEVICE:Ljava/lang/String; = "HW"

.field private static final greylist-max-o PREFIX_HDMI_DEVICE:Ljava/lang/String; = "HDMI"

.field private static final greylist-max-o XML_START_TAG_NAME:Ljava/lang/String; = "tv-input"

.field private static final greylist-max-o sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;


# instance fields
.field private blacklist mCanPauseRecording:Ljava/lang/Boolean;

.field private greylist-max-o mCanRecord:Ljava/lang/Boolean;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIconDisconnected:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIconStandby:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private greylist-max-o mLabelResId:I

.field private greylist-max-o mParentId:Ljava/lang/String;

.field private final greylist-max-o mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private greylist-max-o mSetupActivity:Ljava/lang/String;

.field private greylist-max-o mTunerCount:Ljava/lang/Integer;

.field private greylist-max-o mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/16 v2, 0x3eb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/16 v2, 0x3ee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0x3ef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const/16 v2, 0x3f0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.tv.TvInputService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid component. Can\'t find the service."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resolveInfo cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o generateInputId(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o generateInputId(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .locals 5

    const-string v0, "/HDMI%04X%02X"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o generateInputId(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "HW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getRelativePosition(Landroid/content/Context;Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .locals 3

    nop

    const-string v0, "hdmi_control"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    nop

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPhysicalAddress()I

    move-result v2

    invoke-static {v1, v2}, Landroid/hardware/hdmi/HdmiUtils;->getHdmiAddressRelativePosition(II)I

    move-result v1

    return v1
.end method

.method private greylist-max-o parseServiceMetadata(I)V
    .locals 12

    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "android.media.tv.input"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_6

    :try_start_1
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v8, :cond_0

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "tv-input"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Lcom/android/internal/R$styleable;->TvInputService:[I

    invoke-virtual {v3, v4, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mSetupActivity:Ljava/lang/String;

    iget-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    const/4 v11, 0x0

    if-nez v10, :cond_1

    invoke-virtual {v9, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    :cond_1
    iget-object v7, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    if-nez v7, :cond_2

    if-nez p1, :cond_2

    const/4 v7, 0x3

    invoke-virtual {v9, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    :cond_2
    iget-object v7, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    if-nez v7, :cond_3

    const/4 v7, 0x4

    invoke-virtual {v9, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    :cond_3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    nop

    return-void

    :cond_5
    :try_start_3
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Meta-data does not start with tv-input tag for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No android.media.tv.input meta-data found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v2, :cond_7

    :try_start_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No resources found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed reading meta-data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/TvInputInfo;
    .locals 29

    move-object/from16 v0, p0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-static {v1, v5}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x3ef

    const/4 v2, 0x1

    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    iget-object v9, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-static {v8, v9}, Landroid/media/tv/TvInputInfo$Builder;->getRelativePosition(Landroid/content/Context;Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    move v3, v8

    goto :goto_1

    :cond_1
    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-static {v1, v5}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v8}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    const/4 v2, 0x1

    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v8}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_3

    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v8}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v8

    const v9, 0xffff

    invoke-static {v9, v8}, Landroid/hardware/hdmi/HdmiDeviceInfo;->hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v8

    iput-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    :cond_3
    :goto_1
    invoke-direct {v0, v7}, Landroid/media/tv/TvInputInfo$Builder;->parseServiceMetadata(I)V

    new-instance v28, Landroid/media/tv/TvInputInfo;

    iget-object v9, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v13, v0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    iget v14, v0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    iget-object v15, v0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v12, v0, Landroid/media/tv/TvInputInfo$Builder;->mIconStandby:Landroid/graphics/drawable/Icon;

    iget-object v11, v0, Landroid/media/tv/TvInputInfo$Builder;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    iget-object v10, v0, Landroid/media/tv/TvInputInfo$Builder;->mSetupActivity:Ljava/lang/String;

    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    if-nez v8, :cond_4

    move/from16 v19, v6

    goto :goto_2

    :cond_4
    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move/from16 v19, v8

    :goto_2
    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    if-nez v8, :cond_5

    move/from16 v20, v6

    goto :goto_3

    :cond_5
    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move/from16 v20, v8

    :goto_3
    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    iget-object v6, v0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_4
    move/from16 v21, v6

    iget-object v6, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-object/from16 v22, v6

    iget-object v6, v0, Landroid/media/tv/TvInputInfo$Builder;->mParentId:Ljava/lang/String;

    move-object/from16 v25, v6

    iget-object v6, v0, Landroid/media/tv/TvInputInfo$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v26, v6

    const/16 v27, 0x0

    move-object/from16 v8, v28

    move-object v6, v10

    move-object v10, v5

    move-object/from16 v17, v11

    move v11, v7

    move-object/from16 v16, v12

    move v12, v2

    move-object/from16 v18, v6

    move/from16 v23, v3

    move/from16 v24, v4

    invoke-direct/range {v8 .. v27}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;IZLjava/lang/CharSequence;ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;ZZILandroid/hardware/hdmi/HdmiDeviceInfo;ZILjava/lang/String;Landroid/os/Bundle;Landroid/media/tv/TvInputInfo-IA;)V

    return-object v28
.end method

.method public whitelist setCanPauseRecording(Z)Landroid/media/tv/TvInputInfo$Builder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    return-object p0
.end method

.method public whitelist setCanRecord(Z)Landroid/media/tv/TvInputInfo$Builder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    if-eqz v0, :cond_0

    const-string v0, "TvInputInfo"

    const-string v1, "TvInputHardwareInfo will not be used to build this TvInputInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    :cond_0
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;I)Landroid/media/tv/TvInputInfo$Builder;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-nez p2, :cond_0

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIconStandby:Landroid/graphics/drawable/Icon;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    :goto_0
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLabel(I)Landroid/media/tv/TvInputInfo$Builder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iput p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Label text is already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLabel(Ljava/lang/CharSequence;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resource ID for label is already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setParentId(Ljava/lang/String;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mParentId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setTunerCount(I)Landroid/media/tv/TvInputInfo$Builder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public whitelist setTvInputHardwareInfo(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    if-eqz v0, :cond_0

    const-string v0, "TvInputInfo"

    const-string/jumbo v1, "mHdmiDeviceInfo will not be used to build this TvInputInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    :cond_0
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    return-object p0
.end method
