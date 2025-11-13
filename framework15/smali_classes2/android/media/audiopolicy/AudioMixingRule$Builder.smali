.class public Landroid/media/audiopolicy/AudioMixingRule$Builder;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMixingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowPrivilegedMediaPlaybackCapture:Z

.field private final blacklist mCriteria:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTargetMixType:I

.field private blacklist mVoiceCommunicationCaptureAllowed:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$DXJIoM-ZdeHxRjLqQf679sU5vC8(I)Z
    .locals 0

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisRecorderRule(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$mJ1IGv61p3ro9ldbVfUy40LBddw(I)Z
    .locals 0

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisPlayerRule(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddRuleInternal(Landroid/media/audiopolicy/AudioMixingRule$Builder;Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mAllowPrivilegedMediaPlaybackCapture:Z

    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mVoiceCommunicationCaptureAllowed:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/Set;

    return-void
.end method

.method private blacklist addRuleInternal(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisPlayerRule(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisRecorderRule(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iput v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisPlayerRule(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    if-nez v1, :cond_3

    :cond_2
    invoke-static {v0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisRecorderRule(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incompatible rule for mix"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    iget-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/Set;

    monitor-enter v1

    const v2, 0x8000

    xor-int/2addr v2, v0

    :try_start_0
    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    nop

    monitor-exit v1

    return-object p0

    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "AudioMixingRule cannot contain RULE_MATCH_* and RULE_EXCLUDE_* for the same dimension."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private greylist-max-o checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_4

    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidRule(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, -0x8001

    and-int/2addr v0, p1

    invoke-static {v0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisAudioAttributeRule(I)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p2, Landroid/media/AudioAttributes;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    move-object v2, p2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-direct {v1, v2, p1}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;-><init>(Landroid/media/AudioAttributes;I)V

    invoke-direct {p0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid AudioAttributes argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {v1, v2, p1}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;-><init>(Ljava/lang/Integer;I)V

    invoke-direct {p0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Integer argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null argument for mixing rule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$addRuleInternal$0(ILandroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Z
    .locals 1

    iget v0, p1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidSystemApiRule(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidAttributesSystemApiRule(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist allowPrivilegedPlaybackCapture(Z)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mAllowPrivilegedMediaPlaybackCapture:Z

    return-object p0
.end method

.method public whitelist build()Landroid/media/audiopolicy/AudioMixingRule;
    .locals 7

    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule;

    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    :goto_0
    move v2, v1

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/Set;

    iget-boolean v4, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mAllowPrivilegedMediaPlaybackCapture:Z

    iget-boolean v5, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mVoiceCommunicationCaptureAllowed:Z

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/audiopolicy/AudioMixingRule;-><init>(ILjava/util/Collection;ZZLandroid/media/audiopolicy/AudioMixingRule-IA;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build AudioMixingRule with no rules."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist excludeMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidSystemApiRule(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr v0, p1

    invoke-direct {p0, v0, p2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist excludeRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidAttributesSystemApiRule(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr v0, p2

    invoke-direct {p0, v0, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTargetMixRole(I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal argument for mix role"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    if-nez p1, :cond_2

    new-instance v2, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda1;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda2;-><init>()V

    :goto_1
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_4

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target mix role is not compatible with mix rules."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist voiceCommunicationCaptureAllowed(Z)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mVoiceCommunicationCaptureAllowed:Z

    return-object p0
.end method
