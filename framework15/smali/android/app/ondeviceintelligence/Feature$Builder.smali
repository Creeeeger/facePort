.class public final Landroid/app/ondeviceintelligence/Feature$Builder;
.super Ljava/lang/Object;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ondeviceintelligence/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mFeatureParams:Landroid/os/PersistableBundle;

.field private blacklist mId:I

.field private blacklist mModelName:Ljava/lang/String;

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mType:I

.field private blacklist mVariant:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mId:I

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mFeatureParams:Landroid/os/PersistableBundle;

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/app/ondeviceintelligence/Feature;
    .locals 9

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/Feature$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    new-instance v0, Landroid/app/ondeviceintelligence/Feature;

    iget v3, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mId:I

    iget-object v4, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mName:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mModelName:Ljava/lang/String;

    iget v6, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mType:I

    iget v7, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mVariant:I

    iget-object v8, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mFeatureParams:Landroid/os/PersistableBundle;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/app/ondeviceintelligence/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;IILandroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist setFeatureParams(Landroid/os/PersistableBundle;)Landroid/app/ondeviceintelligence/Feature$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/Feature$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mFeatureParams:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public whitelist setModelName(Ljava/lang/String;)Landroid/app/ondeviceintelligence/Feature$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/Feature$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mModelName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/app/ondeviceintelligence/Feature$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/Feature$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setType(I)Landroid/app/ondeviceintelligence/Feature$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/Feature$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mType:I

    return-object p0
.end method

.method public whitelist setVariant(I)Landroid/app/ondeviceintelligence/Feature$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/Feature$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mVariant:I

    return-object p0
.end method
