.class public abstract Lcom/android/settings/network/telephony/MobileNetworkUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/telephony/MobileNetworkUtils;->EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static activeNetworkIsCellular(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method public static buildConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getActiveSubscriptionIdList(Landroid/content/Context;)[I
    .locals 3

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    new-array p0, v0, [I

    return-object p0
.end method

.method public static getImsRcsManager(Landroid/telephony/ims/ImsManager;I)Landroid/telephony/ims/ImsRcsManager;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Could not resolve ImsRcsManager: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileNetworkUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getNetworkTypeFromRaf(I)I
    .locals 2

    const v0, 0x8003

    and-int v1, p0, v0

    if-lez v1, :cond_0

    or-int/2addr p0, v0

    :cond_0
    and-int/lit16 v0, p0, 0x4384

    if-lez v0, :cond_1

    or-int/lit16 p0, p0, 0x4384

    :cond_1
    and-int/lit8 v0, p0, 0x48

    if-lez v0, :cond_2

    or-int/lit8 p0, p0, 0x48

    :cond_2
    and-int/lit16 v0, p0, 0x2830

    if-lez v0, :cond_3

    or-int/lit16 p0, p0, 0x2830

    :cond_3
    const v0, 0x41000

    and-int v1, p0, v0

    if-lez v1, :cond_4

    or-int/2addr p0, v0

    :cond_4
    const/high16 v0, 0x80000

    and-int v1, p0, v0

    if-lez v1, :cond_5

    or-int/2addr p0, v0

    :cond_5
    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/16 p0, 0x21

    return p0

    :sswitch_1
    const/16 p0, 0x20

    return p0

    :sswitch_2
    const/16 p0, 0x1e

    return p0

    :sswitch_3
    const/16 p0, 0x1f

    return p0

    :sswitch_4
    const/16 p0, 0x1d

    return p0

    :sswitch_5
    const/16 p0, 0x1b

    return p0

    :sswitch_6
    const/16 p0, 0x1a

    return p0

    :sswitch_7
    const/16 p0, 0x1c

    return p0

    :sswitch_8
    const/16 p0, 0x19

    return p0

    :sswitch_9
    const/16 p0, 0x18

    return p0

    :sswitch_a
    const/16 p0, 0x17

    return p0

    :sswitch_b
    const/16 p0, 0x16

    return p0

    :sswitch_c
    const/16 p0, 0x14

    return p0

    :sswitch_d
    const/16 p0, 0x11

    return p0

    :sswitch_e
    const/16 p0, 0x13

    return p0

    :sswitch_f
    const/16 p0, 0xf

    return p0

    :sswitch_10
    const/16 p0, 0xa

    return p0

    :sswitch_11
    const/16 p0, 0x9

    return p0

    :sswitch_12
    const/16 p0, 0xc

    return p0

    :sswitch_13
    const/16 p0, 0x8

    return p0

    :sswitch_14
    const/16 p0, 0xb

    return p0

    :sswitch_15
    const/16 p0, 0x15

    return p0

    :sswitch_16
    const/16 p0, 0x12

    return p0

    :sswitch_17
    const/16 p0, 0x10

    return p0

    :sswitch_18
    const/16 p0, 0xe

    return p0

    :sswitch_19
    const/16 p0, 0xd

    return p0

    :sswitch_1a
    const/4 p0, 0x7

    return p0

    :sswitch_1b
    const/4 p0, 0x0

    return p0

    :sswitch_1c
    const/4 p0, 0x1

    return p0

    :sswitch_1d
    const/4 p0, 0x2

    return p0

    :sswitch_1e
    const/4 p0, 0x4

    return p0

    :sswitch_1f
    const/4 p0, 0x6

    return p0

    :sswitch_20
    const/4 p0, 0x5

    return p0

    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_20
        0x2830 -> :sswitch_1f
        0x2878 -> :sswitch_1e
        0x4384 -> :sswitch_1d
        0x8003 -> :sswitch_1c
        0xc387 -> :sswitch_1b
        0xebff -> :sswitch_1a
        0x10000 -> :sswitch_19
        0x14384 -> :sswitch_18
        0x18003 -> :sswitch_17
        0x1c387 -> :sswitch_16
        0x1ebff -> :sswitch_15
        0x41000 -> :sswitch_14
        0x43878 -> :sswitch_13
        0x45384 -> :sswitch_12
        0x4d387 -> :sswitch_11
        0x4fbff -> :sswitch_10
        0x51000 -> :sswitch_f
        0x55384 -> :sswitch_e
        0x59003 -> :sswitch_d
        0x5d387 -> :sswitch_c
        0x5fbff -> :sswitch_b
        0x80000 -> :sswitch_a
        0xc1000 -> :sswitch_9
        0xc3878 -> :sswitch_8
        0xc5384 -> :sswitch_7
        0xcd387 -> :sswitch_6
        0xcfbff -> :sswitch_5
        0xd1000 -> :sswitch_4
        0xd5384 -> :sswitch_3
        0xd9003 -> :sswitch_2
        0xdd387 -> :sswitch_1
        0xdfbff -> :sswitch_0
    .end sparse-switch
.end method

.method public static getPreferredStatus(ZLandroid/content/Context;ZLjava/util/List;)Ljava/lang/CharSequence;
    .locals 9

    const-string v0, ""

    if-eqz p3, :cond_7

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v3, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    iget-boolean v4, v3, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isValidSubscription:Z

    if-eqz v4, :cond_1

    return-object v5

    :cond_1
    const v4, 0x7f1408ad

    if-eqz p2, :cond_3

    invoke-virtual {v3}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->getSubId()I

    move-result v7

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v8

    if-ne v7, v8, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->getSubId()I

    move-result v7

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v8

    if-ne v7, v8, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static {v6, p3}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_5

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz p0, :cond_0

    const/4 v3, 0x0

    const-string v4, "\u200f"

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    return-object v1

    :cond_7
    return-object v0
.end method

.method public static getRafFromNetworkType(I)J
    .locals 2

    const-wide/32 v0, 0xc387

    packed-switch p0, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_0
    const-wide/32 v0, 0xdfbff

    return-wide v0

    :pswitch_1
    const-wide/32 v0, 0xdd387

    return-wide v0

    :pswitch_2
    const-wide/32 v0, 0xd5384

    return-wide v0

    :pswitch_3
    const-wide/32 v0, 0xd9003

    return-wide v0

    :pswitch_4
    const-wide/32 v0, 0xd1000

    return-wide v0

    :pswitch_5
    const-wide/32 v0, 0xc5384

    return-wide v0

    :pswitch_6
    const-wide/32 v0, 0xcfbff

    return-wide v0

    :pswitch_7
    const-wide/32 v0, 0xcd387

    return-wide v0

    :pswitch_8
    const-wide/32 v0, 0xc3878

    return-wide v0

    :pswitch_9
    const-wide/32 v0, 0xc1000

    return-wide v0

    :pswitch_a
    const-wide/32 v0, 0x80000

    return-wide v0

    :pswitch_b
    const-wide/32 v0, 0x5fbff

    return-wide v0

    :pswitch_c
    const-wide/32 v0, 0x1ebff

    return-wide v0

    :pswitch_d
    const-wide/32 v0, 0x5d387

    return-wide v0

    :pswitch_e
    const-wide/32 v0, 0x55384

    return-wide v0

    :pswitch_f
    const-wide/32 v0, 0x1c387

    return-wide v0

    :pswitch_10
    const-wide/32 v0, 0x59003

    return-wide v0

    :pswitch_11
    const-wide/32 v0, 0x18003

    return-wide v0

    :pswitch_12
    const-wide/32 v0, 0x51000

    return-wide v0

    :pswitch_13
    const-wide/32 v0, 0x14384

    return-wide v0

    :pswitch_14
    const-wide/32 v0, 0x10000

    return-wide v0

    :pswitch_15
    const-wide/32 v0, 0x45384

    return-wide v0

    :pswitch_16
    const-wide/32 v0, 0x41000

    return-wide v0

    :pswitch_17
    const-wide/32 v0, 0x4fbff

    return-wide v0

    :pswitch_18
    const-wide/32 v0, 0x4d387

    return-wide v0

    :pswitch_19
    const-wide/32 v0, 0x43878

    return-wide v0

    :pswitch_1a
    const-wide/32 v0, 0xebff

    return-wide v0

    :pswitch_1b
    const-wide/16 v0, 0x2830

    return-wide v0

    :pswitch_1c
    const-wide/16 v0, 0x48

    return-wide v0

    :pswitch_1d
    const-wide/16 v0, 0x2878

    :pswitch_1e
    return-wide v0

    :pswitch_1f
    const-wide/16 v0, 0x4384

    return-wide v0

    :pswitch_20
    const-wide/32 v0, 0x8003

    :pswitch_21
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSignalStrengthIcon(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    shl-int/lit8 p1, p2, 0x8

    const/high16 p2, 0x30000

    or-int/2addr p1, p2

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    move p4, v1

    goto :goto_0

    :cond_1
    move p4, v2

    :goto_0
    shl-int/lit8 p4, p4, 0x10

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, p4

    or-int/2addr p1, p2

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setLevel(I)Z

    if-nez p3, :cond_2

    sget-object p1, Lcom/android/settings/network/telephony/MobileNetworkUtils;->EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_2
    new-array p2, v1, [Landroid/graphics/drawable/Drawable;

    aput-object p1, p2, v2

    const/4 p1, 0x1

    aput-object v0, p2, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f07121c

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    new-instance p4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p4, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x33

    invoke-virtual {p4, v2, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    const/16 p2, 0x55

    invoke-virtual {p4, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {p4, p1, p3, p3}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    const p1, 0x1010429

    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/LayerDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object p4
.end method

.method public static isCdmaOptions(Landroid/content/Context;I)Z
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v3, "hide_carrier_network_settings_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "world_phone_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    return v2

    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getNetworkTypeFromRaf(I)I

    move-result v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_4

    const/16 v3, 0x8

    if-eq v0, v3, :cond_4

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_4

    const/16 v3, 0x19

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->shouldSpeciallyUpdateGsmCdma(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    :goto_0
    return v2

    :cond_5
    return v1
.end method

.method public static isContactDiscoveryEnabled(Landroid/telephony/ims/ImsManager;I)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getImsRcsManager(Landroid/telephony/ims/ImsManager;I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsRcsManager;->getUceAdapter()Landroid/telephony/ims/RcsUceAdapter;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/RcsUceAdapter;->isUceSettingEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UCE service is not available: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MobileNetworkUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static isContactDiscoveryVisible(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/settings/network/CarrierConfigCache;->hasCarrierConfigManager()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "MobileNetworkUtils"

    const-string p1, "isContactDiscoveryVisible: Could not resolve carrier config"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "use_rcs_presence_bool"

    invoke-virtual {p0, p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ims.rcs_bulk_capability_exchange_bool"

    invoke-virtual {p0, p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public static isGsmBasicOptions(Landroid/content/Context;I)Z
    .locals 3

    invoke-static {p0}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "hide_carrier_network_settings_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "world_phone_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isGsmOptions(Landroid/content/Context;I)Z
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isGsmBasicOptions(Landroid/content/Context;I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getNetworkTypeFromRaf(I)I

    move-result v0

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_3

    const/16 v3, 0x19

    if-eq v0, v3, :cond_3

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->shouldSpeciallyUpdateGsmCdma(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    :goto_0
    return v2

    :cond_4
    return v1
.end method

.method public static isMobileDataEnabled(Landroid/content/Context;)Z
    .locals 1

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isMobileNetworkUserRestricted(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "no_config_mobile_networks"

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isTdscdmaSupported(Landroid/content/Context;I)Z
    .locals 5

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-static {p0}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/settings/network/CarrierConfigCache;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "support_tdscdma_bool"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    :goto_0
    move v0, v2

    goto :goto_3

    :cond_1
    const-string v1, "support_tdscdma_roaming_networks_string_array"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    array-length v1, p0

    move v3, v0

    :goto_2
    if-ge v3, v1, :cond_6

    aget-object v4, p0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return v0
.end method

.method public static isWfcProvisionedOnDevice(I)Z
    .locals 1

    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v0, v0}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningStatusForCapability(II)Z

    move-result p0

    return p0
.end method

.method public static isWorldMode(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "world_mode_enabled_bool"

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static launchMobileNetworkSettings(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)V
    .locals 4

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "MobileNetworkUtils"

    if-nez v0, :cond_0

    const-string p0, "launchMobileNetworkSettings fail, device without such UI."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string p0, "launchMobileNetworkSettings fail, subId is invalid."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "launchMobileNetworkSettings for subId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.provider.extra.SUB_ID"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    iget-object p1, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, p1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    const-class p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    iput p0, p1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v1, p1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public static setContactDiscoveryEnabled(Landroid/telephony/ims/ImsManager;IZ)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getImsRcsManager(Landroid/telephony/ims/ImsManager;I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsRcsManager;->getUceAdapter()Landroid/telephony/ims/RcsUceAdapter;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/telephony/ims/RcsUceAdapter;->setUceSettingEnabled(Z)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "UCE service is not available: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileNetworkUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setMobileDataEnabled(ILandroid/content/Context;ZZ)V
    .locals 4

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object v1

    const-string v2, "setDataEnabledForReason: "

    const-string v3, "MobileNetworkUtils"

    invoke-static {v2, v3, p2}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IZ)V

    if-eqz p3, :cond_1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    if-eq v0, p0, :cond_0

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p3

    invoke-virtual {p3, v2, v2}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static shouldDisplayNetworkSelectOptions(Landroid/content/Context;I)Z
    .locals 4

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    if-eqz v1, :cond_4

    const-string v2, "operator_selection_expand_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "hide_carrier_network_settings_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "csp_enabled_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isManualNetworkSelectionAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getNetworkTypeFromRaf(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->shouldSpeciallyUpdateGsmCdma(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isGsmBasicOptions(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v3
.end method

.method public static shouldSpeciallyUpdateGsmCdma(Landroid/content/Context;I)Z
    .locals 4

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getNetworkTypeFromRaf(I)I

    move-result v0

    const/16 v2, 0x11

    if-eq v0, v2, :cond_1

    const/16 v2, 0x14

    if-eq v0, v2, :cond_1

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1

    const/16 v2, 0x13

    if-eq v0, v2, :cond_1

    const/16 v2, 0x16

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static showEuiccSettings(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :try_start_0
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getBackgroundExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-interface {p0, v4, v5, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Accessing Euicc takes too long: +"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MobileNetworkUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static showEuiccSettingsDetecting(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 10

    const-class v0, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    const-string v1, "MobileNetworkUtils"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ro.setupwizard.esim_cid_ignore"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "ro.boot.cid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "esim.enable_esim_system_ui_by_default"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "euicc_provisioned"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    invoke-static {p0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v5

    const-string v7, "showEuiccSettings: esimIgnoredDevice: "

    const-string v8, ", enabledEsimUiByDefault: "

    const-string v9, ", euiccProvisioned: "

    invoke-static {v7, v2, v8, v3, v9}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", inDeveloperMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_6

    if-nez v2, :cond_2

    if-nez v5, :cond_6

    :cond_2
    if-nez v2, :cond_5

    if-eqz v3, :cond_5

    const-class v0, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v3, v6

    :goto_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/settings/network/telephony/MobileNetworkUtils$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/euicc/EuiccManager;)V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isCurrentCountrySupported countryCodes: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " eSIMSupported: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v4, v6

    :cond_6
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_3
    const-string p0, "EuiccManager is not enabled."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkUtils$1;

    invoke-direct {v0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils$1;-><init>(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f14353f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v2

    invoke-static {p0, p1, v2}, Lcom/android/settings/Utils;->getConfirmCredentialStringForUser(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTextForDeviceCredential(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object p0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v2, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v1, v2, v0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
