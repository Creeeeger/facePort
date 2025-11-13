.class public final Lcom/android/settingslib/media/DeviceIconUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final AUDIO_DEVICE_TO_MEDIA_ROUTE_TYPE:Landroid/util/SparseIntArray;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIsTablet:Z

.field public final mIsTv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/settingslib/media/DeviceIconUtil;->AUDIO_DEVICE_TO_MEDIA_ROUTE_TYPE:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x1d

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.software.leanback"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/settingslib/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/settingslib/media/flags/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mIsTv:Z

    const-string p1, "ro.build.characteristics"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string/jumbo v0, "tablet"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mIsTablet:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mContext:Landroid/content/Context;

    iput-boolean p1, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mIsTv:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mIsTablet:Z

    return-void
.end method


# virtual methods
.method public final getIconResIdFromAudioDeviceType(I)I
    .locals 7

    sget-object v0, Lcom/android/settingslib/media/DeviceIconUtil;->AUDIO_DEVICE_TO_MEDIA_ROUTE_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    iget-boolean v0, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mIsTv:Z

    const v1, 0x7f08095a

    const v2, 0x7f08090f

    const/16 v3, 0x1d

    const/16 v4, 0x16

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_0

    packed-switch p1, :pswitch_data_0

    const v1, 0x7f0809ac

    goto :goto_1

    :pswitch_0
    move v1, v2

    goto :goto_1

    :pswitch_1
    const v1, 0x7f080b47

    goto :goto_1

    :cond_0
    :pswitch_2
    const v1, 0x7f080958

    goto :goto_1

    :cond_1
    const v1, 0x7f080b84

    goto :goto_1

    :cond_2
    :pswitch_3
    const v1, 0x7f080b40

    goto :goto_1

    :cond_3
    iget-boolean p0, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mIsTablet:Z

    if-eqz p0, :cond_4

    const p0, 0x7f0809af

    goto :goto_0

    :cond_4
    const p0, 0x7f080b0e

    :goto_0
    if-eq p1, v6, :cond_6

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    packed-switch p1, :pswitch_data_1

    move v1, p0

    goto :goto_1

    :cond_5
    :pswitch_4
    const v1, 0x7f08091b

    :cond_6
    :goto_1
    :pswitch_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
