.class Landroid/app/AppOpInfo$Builder;
.super Ljava/lang/Object;
.source "AppOpInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

.field private blacklist mCode:I

.field private blacklist mDefaultMode:I

.field private blacklist mDisableReset:Z

.field private blacklist mForceCollectNotes:Z

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mPermission:Ljava/lang/String;

.field private blacklist mRestrictRead:Z

.field private blacklist mRestriction:Ljava/lang/String;

.field private blacklist mSimpleName:Ljava/lang/String;

.field private blacklist mSwitchCode:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/AppOpInfo$Builder;->mPermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpInfo$Builder;->mRestriction:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpInfo$Builder;->mAllowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v0, 0x3

    iput v0, p0, Landroid/app/AppOpInfo$Builder;->mDefaultMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/AppOpInfo$Builder;->mDisableReset:Z

    iput-boolean v0, p0, Landroid/app/AppOpInfo$Builder;->mRestrictRead:Z

    iput-boolean v0, p0, Landroid/app/AppOpInfo$Builder;->mForceCollectNotes:Z

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Landroid/app/AppOpInfo$Builder;->mCode:I

    iput p1, p0, Landroid/app/AppOpInfo$Builder;->mSwitchCode:I

    iput-object p2, p0, Landroid/app/AppOpInfo$Builder;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/AppOpInfo$Builder;->mSimpleName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/app/AppOpInfo;
    .locals 13

    new-instance v12, Landroid/app/AppOpInfo;

    iget v1, p0, Landroid/app/AppOpInfo$Builder;->mCode:I

    iget v2, p0, Landroid/app/AppOpInfo$Builder;->mSwitchCode:I

    iget-object v3, p0, Landroid/app/AppOpInfo$Builder;->mName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AppOpInfo$Builder;->mSimpleName:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/AppOpInfo$Builder;->mPermission:Ljava/lang/String;

    iget-object v6, p0, Landroid/app/AppOpInfo$Builder;->mRestriction:Ljava/lang/String;

    iget-object v7, p0, Landroid/app/AppOpInfo$Builder;->mAllowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

    iget v8, p0, Landroid/app/AppOpInfo$Builder;->mDefaultMode:I

    iget-boolean v9, p0, Landroid/app/AppOpInfo$Builder;->mDisableReset:Z

    iget-boolean v10, p0, Landroid/app/AppOpInfo$Builder;->mRestrictRead:Z

    iget-boolean v11, p0, Landroid/app/AppOpInfo$Builder;->mForceCollectNotes:Z

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/app/AppOpInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;IZZZ)V

    return-object v12
.end method

.method public blacklist setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/AppOpInfo$Builder;->mAllowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

    return-object p0
.end method

.method public blacklist setCode(I)Landroid/app/AppOpInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/app/AppOpInfo$Builder;->mCode:I

    return-object p0
.end method

.method public blacklist setDefaultMode(I)Landroid/app/AppOpInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/app/AppOpInfo$Builder;->mDefaultMode:I

    return-object p0
.end method

.method public blacklist setDisableReset(Z)Landroid/app/AppOpInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/AppOpInfo$Builder;->mDisableReset:Z

    return-object p0
.end method

.method public blacklist setForceCollectNotes(Z)Landroid/app/AppOpInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/AppOpInfo$Builder;->mForceCollectNotes:Z

    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/AppOpInfo$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/AppOpInfo$Builder;->mPermission:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setRestrictRead(Z)Landroid/app/AppOpInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/AppOpInfo$Builder;->mRestrictRead:Z

    return-object p0
.end method

.method public blacklist setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/AppOpInfo$Builder;->mRestriction:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSimpleName(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/AppOpInfo$Builder;->mSimpleName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSwitchCode(I)Landroid/app/AppOpInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/app/AppOpInfo$Builder;->mSwitchCode:I

    return-object p0
.end method
