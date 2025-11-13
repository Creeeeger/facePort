.class public final Landroid/media/AudioMixerAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioMixerAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioMixerAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mFormat:Landroid/media/AudioFormat;

.field private blacklist mMixerBehavior:I


# direct methods
.method public constructor whitelist <init>(Landroid/media/AudioFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioMixerAttributes$Builder;->mMixerBehavior:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/AudioMixerAttributes$Builder;->mFormat:Landroid/media/AudioFormat;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/AudioMixerAttributes;
    .locals 3

    new-instance v0, Landroid/media/AudioMixerAttributes;

    iget-object v1, p0, Landroid/media/AudioMixerAttributes$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v2, p0, Landroid/media/AudioMixerAttributes$Builder;->mMixerBehavior:I

    invoke-direct {v0, v1, v2}, Landroid/media/AudioMixerAttributes;-><init>(Landroid/media/AudioFormat;I)V

    return-object v0
.end method

.method public whitelist setMixerBehavior(I)Landroid/media/AudioMixerAttributes$Builder;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mixer behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Landroid/media/AudioMixerAttributes$Builder;->mMixerBehavior:I

    nop

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
