.class public Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
.super Ljava/lang/Object;
.source "RuntimeManifestPolicies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyInfo"
.end annotation


# static fields
.field private static final blacklist COERCED_LABEL:Ljava/lang/String; = "coerced_label"

.field private static final blacklist ENABLED:Ljava/lang/String; = "enabled"

.field private static final blacklist ICON:Ljava/lang/String; = "icon"

.field private static final blacklist LABEL:Ljava/lang/String; = "label"

.field private static final blacklist MAX_VALUE:Ljava/lang/String; = "max_value"

.field private static final blacklist MIN_VALUE:Ljava/lang/String; = "min_value"

.field private static final blacklist PRIORITY:Ljava/lang/String; = "priority"

.field private static final blacklist PROPERTY_NAME:Ljava/lang/String; = "property_type"

.field private static final blacklist PROPERTY_VALUE:Ljava/lang/String; = "property_value"

.field private static final blacklist TYPE:Ljava/lang/String; = "type"

.field private static final blacklist VALUE:Ljava/lang/String; = "value"


# instance fields
.field private blacklist mAddedItems:Ljava/util/Set;
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

.field private blacklist mMaxValue:Ljava/lang/String;

.field private blacklist mMinValue:Ljava/lang/String;

.field private blacklist mPriority:I

.field private blacklist mPropertyName:Ljava/lang/String;

.field private blacklist mPropertyValue:Ljava/lang/String;

.field private blacklist mType:Ljava/lang/String;

.field private blacklist mValue:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMinValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMaxValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyValue:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mLabel:I

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mCoercedLabel:Ljava/lang/CharSequence;

    iput v1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mIcon:I

    iput v1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPriority:I

    iput-boolean v1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mEnabled:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public blacklist getCoercedLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mCoercedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mEnabled:Z

    return v0
.end method

.method public blacklist getIconRes()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mIcon:I

    return v0
.end method

.method public blacklist getLabelRes()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mLabel:I

    return v0
.end method

.method public blacklist getMaxValue()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMaxValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public blacklist getMinValue()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMinValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public blacklist getPriority()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPriority:I

    return v0
.end method

.method public blacklist getPropertyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPropertyValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasCoercedLabel()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "coerced_label"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasIcon()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasLabel()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "label"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasMaxValue()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "max_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasMinValue()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "min_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasPriority()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "priority"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasPropertyName()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "property_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasPropertyValue()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "property_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasType()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasValue()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist setCoercedLabel(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mCoercedLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "coerced_label"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setIconRes(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mIcon:I

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setLabelRes(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mLabel:I

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "label"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setMaxValue(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMaxValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "max_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setMinValue(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMinValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "min_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setPriority(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPriority:I

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "priority"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setPropertyName(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "property_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setPropertyValue(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "property_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setType(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setValue(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PolicyInfo {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " Value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasMinValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " MinValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMinValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasMaxValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " MaxValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMaxValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasPropertyName()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " PropertyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasPropertyValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " PropertyValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " Priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " LabelRes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mLabel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasCoercedLabel()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, " CoercedLabel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mCoercedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasIcon()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, " Icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
