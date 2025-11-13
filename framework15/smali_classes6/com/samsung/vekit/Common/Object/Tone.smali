.class public Lcom/samsung/vekit/Common/Object/Tone;
.super Ljava/lang/Object;
.source "Tone.java"


# instance fields
.field private blacklist intensity:I

.field blacklist toneType:Lcom/samsung/vekit/Common/Type/ToneType;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/Type/ToneType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Tone;->toneType:Lcom/samsung/vekit/Common/Type/ToneType;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Tone;->intensity:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/Type/ToneType;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Tone;->toneType:Lcom/samsung/vekit/Common/Type/ToneType;

    iput p2, p0, Lcom/samsung/vekit/Common/Object/Tone;->intensity:I

    return-void
.end method


# virtual methods
.method public blacklist getIntensity()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/Tone;->intensity:I

    return v0
.end method

.method public blacklist getToneType()Lcom/samsung/vekit/Common/Type/ToneType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Tone;->toneType:Lcom/samsung/vekit/Common/Type/ToneType;

    return-object v0
.end method

.method public blacklist setIntensity(I)Lcom/samsung/vekit/Common/Object/Tone;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Tone;->intensity:I

    return-object p0
.end method
