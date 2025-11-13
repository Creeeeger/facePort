.class public Landroid/media/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist PRIVACY_SENSITIVE_DEFAULT:I = -0x1

.field private static final blacklist PRIVACY_SENSITIVE_DISABLED:I = 0x0

.field private static final blacklist PRIVACY_SENSITIVE_ENABLED:I = 0x1


# instance fields
.field private greylist-max-o mBundle:Landroid/os/Bundle;

.field private greylist-max-o mContentType:I

.field private greylist-max-o mFlags:I

.field private blacklist mIsContentSpatialized:Z

.field private blacklist mMuteHapticChannels:Z

.field private blacklist mPrivacySensitive:I

.field private greylist-max-o mSource:I

.field private blacklist mSpatializationBehavior:I

.field private blacklist mSystemUsage:I

.field private greylist-max-o mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mUsage:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 3

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 756
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    .line 757
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 758
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 759
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 760
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 761
    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 762
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 763
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 765
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 780
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioAttributes;)V
    .locals 3
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 756
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    .line 757
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 758
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 759
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 760
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 761
    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 762
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 763
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 765
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 788
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 789
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmContentType(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 790
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmSource(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 791
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 792
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmTags(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 793
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->areHapticChannelsMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 794
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->isContentSpatialized()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 795
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSpatializationBehavior()I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 796
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 797
    iput v2, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 799
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1098
    if-eqz p1, :cond_1

    .line 1101
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 1104
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1106
    :goto_0
    return-object p0

    .line 1099
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 1117
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1118
    return-object p0
.end method

.method public blacklist allowConcurrentCapture()Landroid/media/AudioAttributes$Builder;
    .locals 2

    .line 1355
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1356
    const-string v0, "AudioAttributes"

    const-string v1, "Current source is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    return-object p0

    .line 1360
    :cond_0
    const/16 v1, 0x7cf

    if-ne v0, v1, :cond_1

    .line 1361
    const-string v0, "VOICE_ASSISTANT"

    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    .line 1363
    :cond_1
    const-string v0, "SEC_CONCURRENT_CAPTURE"

    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    .line 1365
    :goto_0
    return-object p0
.end method

.method public whitelist build()Landroid/media/AudioAttributes;
    .locals 6

    .line 808
    new-instance v0, Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes;-><init>(Landroid/media/AudioAttributes-IA;)V

    .line 809
    .local v0, "aa":Landroid/media/AudioAttributes;
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmContentType(Landroid/media/AudioAttributes;I)V

    .line 811
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 812
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    if-ne v1, v2, :cond_0

    .line 813
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    goto :goto_0

    .line 815
    :cond_0
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    goto :goto_0

    .line 818
    :cond_1
    iget v3, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    if-ne v3, v2, :cond_b

    .line 819
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    .line 827
    :goto_0
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I

    move-result v1

    const/4 v3, 0x5

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 831
    :pswitch_0
    invoke-static {v0, v3}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    .line 832
    nop

    .line 837
    :goto_1
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmSource(Landroid/media/AudioAttributes;I)V

    .line 838
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 839
    iget-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    if-eqz v1, :cond_2

    .line 840
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x800

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 842
    :cond_2
    iget-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    if-eqz v1, :cond_3

    .line 843
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x4000

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 845
    :cond_3
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 846
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    const v5, 0x8000

    or-int/2addr v1, v5

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 849
    :cond_4
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    if-ne v1, v2, :cond_7

    .line 852
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    if-ne v1, v3, :cond_5

    goto :goto_2

    .line 856
    :cond_5
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    goto :goto_3

    .line 854
    :cond_6
    :goto_2
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    goto :goto_3

    .line 858
    :cond_7
    if-ne v1, v4, :cond_8

    .line 859
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    goto :goto_3

    .line 861
    :cond_8
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 863
    :goto_3
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmTags(Landroid/media/AudioAttributes;Ljava/util/HashSet;)V

    .line 864
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    const-string v2, ";"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFormattedTags(Landroid/media/AudioAttributes;Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    .line 866
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmBundle(Landroid/media/AudioAttributes;Landroid/os/Bundle;)V

    .line 870
    :cond_9
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_a

    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    .line 872
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    and-int/lit8 v1, v1, -0x21

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 874
    :cond_a
    return-object v0

    .line 821
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot set both usage and system usage on same builder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o replaceFlags(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "flags"    # I

    .line 1086
    const v0, 0x1f7ff

    and-int/2addr v0, p1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1087
    return-object p0
.end method

.method public blacklist replaceTags(Ljava/util/HashSet;)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/AudioAttributes$Builder;"
        }
    .end annotation

    .line 1128
    .local p1, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 1129
    return-object p0
.end method

.method public whitelist semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 1346
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "capturePolicy"    # I

    .line 1046
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    invoke-static {p1, v0}, Landroid/media/AudioAttributes;->capturePolicyToFlags(II)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1047
    return-object p0
.end method

.method public whitelist setCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 2
    .param p1, "preset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1247
    packed-switch p1, :pswitch_data_0

    .line 1272
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid capture preset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for AudioAttributes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributes"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1269
    :pswitch_1
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 1270
    nop

    .line 1274
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist setContentType(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "contentType"    # I

    .line 955
    packed-switch p1, :pswitch_data_0

    .line 964
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 962
    nop

    .line 966
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setFlags(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "flags"    # I

    .line 998
    and-int/lit16 p1, p1, 0x1d1

    .line 999
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1000
    return-object p0
.end method

.method public blacklist setForCallRedirection()Landroid/media/AudioAttributes$Builder;
    .locals 2

    .line 1333
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1334
    return-object p0
.end method

.method public whitelist setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;
    .locals 0
    .param p1, "muted"    # Z

    .line 1309
    iput-boolean p1, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 1310
    return-object p0
.end method

.method public whitelist setHotwordModeEnabled(Z)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1016
    if-eqz p1, :cond_0

    .line 1017
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    goto :goto_0

    .line 1019
    :cond_0
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1021
    :goto_0
    return-object p0
.end method

.method public whitelist setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "preset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1287
    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7ce

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7cd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1297
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_1

    .line 1295
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 1299
    :goto_1
    return-object p0
.end method

.method public whitelist setInternalContentType(I)Landroid/media/AudioAttributes$Builder;
    .locals 0
    .param p1, "contentType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 978
    packed-switch p1, :pswitch_data_0

    .line 983
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    .line 980
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 981
    nop

    .line 986
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7cd
        :pswitch_0
    .end packed-switch
.end method

.method public greylist setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "streamType"    # I

    .line 1164
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1165
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 1166
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1167
    nop

    .line 1168
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1170
    .local v0, "attributes":Landroid/media/AudioAttributes;
    if-eqz v0, :cond_0

    .line 1171
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 1172
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmContentType(Landroid/media/AudioAttributes;)I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1173
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1174
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->areHapticChannelsMuted()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 1175
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->isContentSpatialized()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 1176
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getSpatializationBehavior()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 1177
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmTags(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 1178
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmBundle(Landroid/media/AudioAttributes;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    .line 1179
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmSource(Landroid/media/AudioAttributes;)I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 1182
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    :cond_0
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    if-nez v0, :cond_1

    .line 1183
    const/4 v0, 0x1

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid stream type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for AudioAttributes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributes"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1220
    :pswitch_0
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1221
    goto :goto_1

    .line 1217
    :pswitch_1
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1218
    goto :goto_1

    .line 1213
    :pswitch_2
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1214
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1215
    goto :goto_1

    .line 1210
    :pswitch_3
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1211
    goto :goto_1

    .line 1188
    :pswitch_4
    iget v2, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    goto :goto_0

    .line 1206
    :pswitch_5
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1207
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1208
    goto :goto_1

    .line 1203
    :pswitch_6
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1204
    goto :goto_1

    .line 1200
    :pswitch_7
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1201
    goto :goto_1

    .line 1197
    :pswitch_8
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1198
    goto :goto_1

    .line 1194
    :pswitch_9
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1195
    goto :goto_1

    .line 1191
    :goto_0
    :pswitch_a
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1192
    goto :goto_1

    .line 1185
    :pswitch_b
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1226
    :cond_1
    :goto_1
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    if-nez v0, :cond_2

    .line 1227
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$smusageForStreamType(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 1229
    :cond_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public whitelist setIsContentSpatialized(Z)Landroid/media/AudioAttributes$Builder;
    .locals 0
    .param p1, "isSpatialized"    # Z

    .line 1057
    iput-boolean p1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 1058
    return-object p0
.end method

.method public whitelist setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .locals 2
    .param p1, "streamType"    # I

    .line 1148
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 1152
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 1153
    return-object p0

    .line 1149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setPrivacySensitive(Z)Landroid/media/AudioAttributes$Builder;
    .locals 0
    .param p1, "privacySensitive"    # Z

    .line 1322
    nop

    .line 1323
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 1324
    return-object p0
.end method

.method public whitelist setSpatializationBehavior(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "sb"    # I

    .line 1068
    packed-switch p1, :pswitch_data_0

    .line 1073
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid spatialization behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :pswitch_0
    nop

    .line 1075
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 1076
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setSystemUsage(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "systemUsage"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 934
    invoke-static {p1}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    .line 940
    return-object p0

    .line 937
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid system usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUsage(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "usage"    # I

    .line 895
    packed-switch p1, :pswitch_data_0

    .line 916
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 914
    nop

    .line 918
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
