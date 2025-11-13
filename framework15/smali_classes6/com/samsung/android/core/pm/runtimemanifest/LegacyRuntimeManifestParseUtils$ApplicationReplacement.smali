.class public Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;
.super Ljava/lang/Object;
.source "LegacyRuntimeManifestParseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationReplacement"
.end annotation


# static fields
.field private static blacklist COERCED_LABEL:Ljava/lang/String;

.field private static blacklist ENABLED:Ljava/lang/String;

.field private static blacklist ICON:Ljava/lang/String;

.field private static blacklist LABEL:Ljava/lang/String;


# instance fields
.field private blacklist mCandidates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCoercedLabel:Ljava/lang/CharSequence;

.field private blacklist mEnabled:Z

.field private blacklist mIcon:I

.field private blacklist mLabel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "label"

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->LABEL:Ljava/lang/String;

    const-string v0, "coerced_label"

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->COERCED_LABEL:Ljava/lang/String;

    const-string v0, "icon"

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ICON:Ljava/lang/String;

    const-string v0, "enabled"

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ENABLED:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    iput v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public blacklist getCoercedLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    return v0
.end method

.method public blacklist getIconRes()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    return v0
.end method

.method public blacklist getLabelRes()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    return v0
.end method

.method public blacklist hasCoercedLabel()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v1, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->COERCED_LABEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v1, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ENABLED:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasIcon()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v1, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ICON:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasLabel()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v1, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->LABEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist setCoercedLabel(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v1, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->COERCED_LABEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v1, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ENABLED:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setIconRes(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v1, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ICON:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setLabelRes(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v1, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->LABEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
