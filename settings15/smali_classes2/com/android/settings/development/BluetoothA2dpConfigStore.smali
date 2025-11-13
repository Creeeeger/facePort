.class public final Lcom/android/settings/development/BluetoothA2dpConfigStore;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBitsPerSample:I

.field public mChannelMode:I

.field public mCodecPriority:I

.field public mCodecSpecific1Value:J

.field public mCodecTypeNative:I

.field public mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xf4240

    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecTypeNative:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecPriority:I

    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    return-void
.end method
