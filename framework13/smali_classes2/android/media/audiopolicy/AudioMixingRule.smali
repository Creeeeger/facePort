.class public Landroid/media/audiopolicy/AudioMixingRule;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMixingRule$Builder;,
        Landroid/media/audiopolicy/AudioMixingRule$MixRole;,
        Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    }
.end annotation


# static fields
.field public static final whitelist MIX_ROLE_INJECTOR:I = 0x1

.field public static final whitelist MIX_ROLE_PLAYERS:I = 0x0

.field public static final greylist-max-o RULE_EXCLUDE_ATTRIBUTE_CAPTURE_PRESET:I = 0x8002

.field public static final greylist-max-o RULE_EXCLUDE_ATTRIBUTE_USAGE:I = 0x8001

.field public static final greylist-max-o RULE_EXCLUDE_UID:I = 0x8004

.field public static final blacklist RULE_EXCLUDE_USERID:I = 0x8008

.field private static final greylist-max-o RULE_EXCLUSION_MASK:I = 0x8000

.field public static final whitelist RULE_MATCH_ATTRIBUTE_CAPTURE_PRESET:I = 0x2

.field public static final whitelist RULE_MATCH_ATTRIBUTE_USAGE:I = 0x1

.field public static final whitelist RULE_MATCH_UID:I = 0x4

.field public static final whitelist RULE_MATCH_USERID:I = 0x8


# instance fields
.field private greylist-max-r mAllowPrivilegedPlaybackCapture:Z

.field private final greylist-max-r mCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTargetMixType:I

.field private greylist-max-r mVoiceCommunicationCaptureAllowed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisAudioAttributeRule(I)Z
    .locals 0

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isAudioAttributeRule(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisPlayerRule(I)Z
    .locals 0

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isPlayerRule(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisRecorderRule(I)Z
    .locals 0

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isRecorderRule(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidAttributesSystemApiRule(I)Z
    .locals 0

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidAttributesSystemApiRule(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidRule(I)Z
    .locals 0

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidRule(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidSystemApiRule(I)Z
    .locals 0

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidSystemApiRule(I)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(ILjava/util/ArrayList;ZZ)V
    .locals 1
    .param p1, "mixType"    # I
    .param p3, "allowPrivilegedMediaPlaybackCapture"    # Z
    .param p4, "voiceCommunicationCaptureAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;ZZ)V"
        }
    .end annotation

    .line 55
    .local p2, "criteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mAllowPrivilegedPlaybackCapture:Z

    .line 245
    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    .line 56
    iput-object p2, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    .line 57
    iput p1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    .line 58
    iput-boolean p3, p0, Landroid/media/audiopolicy/AudioMixingRule;->mAllowPrivilegedPlaybackCapture:Z

    .line 59
    iput-boolean p4, p0, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/ArrayList;ZZLandroid/media/audiopolicy/AudioMixingRule-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/audiopolicy/AudioMixingRule;-><init>(ILjava/util/ArrayList;ZZ)V

    return-void
.end method

.method private static greylist-max-o areCriteriaEquivalent(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;)Z"
        }
    .end annotation

    .line 197
    .local p0, "cr1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    .local p1, "cr2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 199
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v0

    .line 201
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 197
    :cond_4
    :goto_0
    return v0
.end method

.method private static greylist-max-o isAudioAttributeRule(I)Z
    .locals 1
    .param p0, "match_rule"    # I

    .line 362
    packed-switch p0, :pswitch_data_0

    .line 367
    const/4 v0, 0x0

    return v0

    .line 365
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o isPlayerRule(I)Z
    .locals 2
    .param p0, "rule"    # I

    .line 341
    const v0, -0x8001

    and-int/2addr v0, p0

    .line 342
    .local v0, "match_rule":I
    sparse-switch v0, :sswitch_data_0

    .line 347
    const/4 v1, 0x0

    return v1

    .line 345
    :sswitch_0
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist isRecorderRule(I)Z
    .locals 2
    .param p0, "rule"    # I

    .line 352
    const v0, -0x8001

    and-int/2addr v0, p0

    .line 353
    .local v0, "match_rule":I
    packed-switch v0, :pswitch_data_0

    .line 357
    const/4 v1, 0x0

    return v1

    .line 355
    :pswitch_0
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o isValidAttributesSystemApiRule(I)Z
    .locals 1
    .param p0, "rule"    # I

    .line 318
    packed-switch p0, :pswitch_data_0

    .line 323
    const/4 v0, 0x0

    return v0

    .line 321
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o isValidRule(I)Z
    .locals 2
    .param p0, "rule"    # I

    .line 328
    const v0, -0x8001

    and-int/2addr v0, p0

    .line 329
    .local v0, "match_rule":I
    sparse-switch v0, :sswitch_data_0

    .line 336
    const/4 v1, 0x0

    return v1

    .line 334
    :sswitch_0
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private static greylist-max-o isValidSystemApiRule(I)Z
    .locals 1
    .param p0, "rule"    # I

    .line 306
    sparse-switch p0, :sswitch_data_0

    .line 313
    const/4 v0, 0x0

    return v0

    .line 311
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public blacklist allowPrivilegedMediaPlaybackCapture()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mAllowPrivilegedPlaybackCapture:Z

    return v0
.end method

.method blacklist containsMatchAttributeRuleForUsage(I)Z
    .locals 4
    .param p1, "usage"    # I

    .line 185
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 186
    .local v1, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    iget v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 188
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 189
    return v3

    .line 191
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    :cond_0
    goto :goto_0

    .line 192
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 284
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 285
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 287
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/audiopolicy/AudioMixingRule;

    .line 288
    .local v2, "that":Landroid/media/audiopolicy/AudioMixingRule;
    iget v3, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    iget v4, v2, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    .line 289
    invoke-static {v3, v4}, Landroid/media/audiopolicy/AudioMixingRule;->areCriteriaEquivalent(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/media/audiopolicy/AudioMixingRule;->mAllowPrivilegedPlaybackCapture:Z

    iget-boolean v4, v2, Landroid/media/audiopolicy/AudioMixingRule;->mAllowPrivilegedPlaybackCapture:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    iget-boolean v4, v2, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 288
    :goto_0
    return v0

    .line 285
    .end local v2    # "that":Landroid/media/audiopolicy/AudioMixingRule;
    :cond_3
    :goto_1
    return v1
.end method

.method public greylist-max-o getCriteria()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getTargetMixRole()I
    .locals 2

    .line 232
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method greylist-max-o getTargetMixType()I
    .locals 1

    .line 206
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 297
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    .line 298
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mAllowPrivilegedPlaybackCapture:Z

    .line 300
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    .line 301
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 297
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method greylist-max-o isAffectingUsage(I)Z
    .locals 4
    .param p1, "usage"    # I

    .line 168
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 169
    .local v1, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    iget v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 171
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 172
    return v3

    .line 174
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    :cond_0
    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isForCallRedirection()Z
    .locals 6

    .line 265
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 266
    .local v1, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 267
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->isForCallRedirection()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 269
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    if-eq v2, v3, :cond_1

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 270
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    :cond_0
    iget v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 273
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 275
    :cond_1
    return v4

    .line 277
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    :cond_2
    goto :goto_0

    .line 278
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setVoiceCommunicationCaptureAllowed(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .line 260
    iput-boolean p1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    .line 261
    return-void
.end method

.method public blacklist voiceCommunicationCaptureAllowed()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    return v0
.end method
