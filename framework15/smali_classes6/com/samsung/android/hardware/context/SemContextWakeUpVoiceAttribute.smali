.class public Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextWakeUpVoiceAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MODE_REFERENCE_DATA:I = 0x1

.field private static final blacklist MODE_REGISTER:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextWakeUpVoiceAttribute"


# instance fields
.field private blacklist mGramData:[B

.field private blacklist mMode:I

.field private blacklist mNetData:[B

.field private blacklist mVoiceMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->setAttribute()V

    return-void
.end method

.method constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->setAttribute()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    return-void
.end method

.method public constructor blacklist <init>([B[B)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->setAttribute()V

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    if-nez v1, :cond_0

    const-string v1, "voice_mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v1, "net_data"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "gram_data"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :goto_0
    const/16 v1, 0x10

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 4

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    const-string v3, "SemContextWakeUpVoiceAttribute"

    if-nez v0, :cond_3

    const-string v0, "The net data is null."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    if-nez v0, :cond_4

    const-string v0, "The gram data is null."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    return v2
.end method
