.class public Landroid/media/audiofx/DynamicsProcessing$Stage;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stage"
.end annotation


# instance fields
.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mInUse:Z


# direct methods
.method public constructor whitelist <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mInUse:Z

    iput-boolean p2, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public whitelist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    return v0
.end method

.method public whitelist isInUse()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mInUse:Z

    return v0
.end method

.method public whitelist setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Stage;->isInUse()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " Stage InUse: %b\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Stage;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " Stage Enabled: %b\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
