.class synthetic Lcom/samsung/android/ims/settings/SemImsProfile$2;
.super Ljava/lang/Object;
.source "SemImsProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/settings/SemImsProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$samsung$android$ims$settings$SemImsProfile$NETWORK_TYPE:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 262
    invoke-static {}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->values()[Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$2;->$SwitchMap$com$samsung$android$ims$settings$SemImsProfile$NETWORK_TYPE:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->_1XRTT:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$2;->$SwitchMap$com$samsung$android$ims$settings$SemImsProfile$NETWORK_TYPE:[I

    sget-object v1, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->HSPAP:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
