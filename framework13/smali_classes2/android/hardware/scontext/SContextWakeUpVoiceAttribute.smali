.class public Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextWakeUpVoiceAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static blacklist MODE_REFERENCE_DATA:I = 0x0

.field static blacklist MODE_REGISTER:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SContextWakeUpVoiceAttribute"


# instance fields
.field private blacklist mGramData:[B

.field private blacklist mMode:I

.field private blacklist mNetData:[B

.field private blacklist mVoiceMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    .line 32
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REFERENCE_DATA:I

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    .line 40
    iput-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    .line 46
    sget v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    .line 47
    invoke-direct {p0}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->setAttribute()V

    .line 48
    return-void
.end method

.method constructor blacklist <init>(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 63
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    .line 40
    iput-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    .line 64
    sget v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    .line 65
    iput p1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 66
    invoke-direct {p0}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->setAttribute()V

    .line 67
    return-void
.end method

.method public constructor blacklist <init>([B[B)V
    .locals 1
    .param p1, "netData"    # [B
    .param p2, "gramData"    # [B

    .line 82
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    .line 40
    iput-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    .line 83
    sget v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REFERENCE_DATA:I

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    .line 84
    iput-object p1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    .line 85
    iput-object p2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    .line 86
    invoke-direct {p0}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->setAttribute()V

    .line 87
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    iget v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    if-ne v1, v2, :cond_0

    .line 115
    iget v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    const-string/jumbo v2, "voice_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    const-string v2, "net_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 118
    iget-object v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    const-string v2, "gram_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 120
    :goto_0
    const/16 v1, 0x10

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 121
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 4

    .line 92
    iget v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    sget v1, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 93
    iget v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    if-eq v0, v3, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 95
    return v2

    .line 97
    :cond_0
    return v3

    .line 99
    :cond_1
    iget-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    const-string v1, "SContextWakeUpVoiceAttribute"

    if-nez v0, :cond_2

    .line 100
    const-string v0, "The net data is null."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v2

    .line 103
    :cond_2
    iget-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    if-nez v0, :cond_3

    .line 104
    const-string v0, "The gram data is null."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v2

    .line 107
    :cond_3
    return v3
.end method
