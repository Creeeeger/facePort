.class Landroid/widget/directwriting/DirectWritingServiceConfiguration;
.super Ljava/lang/Object;
.source "DirectWritingServiceConfiguration.java"


# static fields
.field private static final blacklist ACTION_SHOW_BOARD:Ljava/lang/String; = "com.samsung.android.honeyboard.action.SHOW_BOARD"

.field private static final blacklist DELAY_HIDE_DEFAULT:J = 0x3e8L

.field private static final blacklist DELAY_KEEP_WRITING_DEFAULT:J = 0x2eeL

.field private static final blacklist HORIZONTAL_SPACE_DEFAULT:I = 0x32

.field private static final blacklist MAX_DISTANCE_DEFAULT:I = 0xa

.field private static final blacklist STATUS_BAR_REJECT_DISTANCE_DEFAULT:I = 0x64

.field private static final blacklist VERTICAL_SPACE_DEFAULT:I = 0x32


# instance fields
.field private blacklist forceShowSipAppPrivateCommandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist hideDelay:J

.field private blacklist keepWritingDelay:J

.field private blacklist maxDistance:I

.field private blacklist transientBarRejectDistance:I

.field private blacklist triggerHorizontalSpace:I

.field private blacklist triggerVerticalSpace:I


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->hideDelay:J

    .line 31
    const-wide/16 v0, 0x2ee

    iput-wide v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->keepWritingDelay:J

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->maxDistance:I

    .line 35
    const/16 v0, 0x32

    iput v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->triggerVerticalSpace:I

    .line 36
    iput v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->triggerHorizontalSpace:I

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->transientBarRejectDistance:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->forceShowSipAppPrivateCommandList:Ljava/util/List;

    .line 42
    const-string v1, "com.samsung.android.honeyboard.action.SHOW_BOARD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist getForceShowSipAppPrivateCommandList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->forceShowSipAppPrivateCommandList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getHideDelay()J
    .locals 2

    .line 63
    iget-wide v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->hideDelay:J

    return-wide v0
.end method

.method public blacklist getKeepWritingDelay()J
    .locals 2

    .line 67
    iget-wide v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->keepWritingDelay:J

    return-wide v0
.end method

.method public blacklist getMaxDistance()I
    .locals 1

    .line 71
    iget v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->maxDistance:I

    return v0
.end method

.method public blacklist getTransientBarRejectDistance()I
    .locals 1

    .line 83
    iget v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->transientBarRejectDistance:I

    return v0
.end method

.method public blacklist getTriggerHorizontalSpace()I
    .locals 1

    .line 79
    iget v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->triggerHorizontalSpace:I

    return v0
.end method

.method public blacklist getTriggerVerticalSpace()I
    .locals 1

    .line 75
    iget v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->triggerVerticalSpace:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DirectWritingServiceConfiguration]  hideDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->hideDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keepWritingDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->keepWritingDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->maxDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerVerticalSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->triggerVerticalSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerHorizontalSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->triggerHorizontalSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceShowSipAppPrivateCommandList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->forceShowSipAppPrivateCommandList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist update(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 46
    const-string v0, "hideDelay"

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->hideDelay:J

    .line 47
    const-string v0, "keepWritingDelay"

    const-wide/16 v1, 0x2ee

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->keepWritingDelay:J

    .line 49
    const-string/jumbo v0, "maxDistance"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->maxDistance:I

    .line 51
    const-string/jumbo v0, "triggerVerticalSpace"

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->triggerVerticalSpace:I

    .line 52
    const-string/jumbo v0, "triggerHorizontalSpace"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->triggerHorizontalSpace:I

    .line 53
    const-string/jumbo v0, "transientBarRejectDistance"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->transientBarRejectDistance:I

    .line 55
    const-string v0, "forceShowSipAppPrivateCommandList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 56
    .local v0, "privateCommandList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->forceShowSipAppPrivateCommandList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 58
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->forceShowSipAppPrivateCommandList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_0
    return-void
.end method
