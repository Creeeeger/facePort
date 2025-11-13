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

.field private blacklist mPriority:I

.field private blacklist mPropertyName:Ljava/lang/String;

.field private blacklist mPropertyValue:Ljava/lang/String;

.field private blacklist mType:Ljava/lang/String;

.field private blacklist mValue:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mType:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mValue:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyName:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyValue:Ljava/lang/String;

    .line 102
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mLabel:I

    .line 103
    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mCoercedLabel:Ljava/lang/CharSequence;

    .line 104
    iput v1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mIcon:I

    .line 105
    iput v1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPriority:I

    .line 106
    iput-boolean v1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mEnabled:Z

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public blacklist getCoercedLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mCoercedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getEnabled()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mEnabled:Z

    return v0
.end method

.method public blacklist getIconRes()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mIcon:I

    return v0
.end method

.method public blacklist getLabelRes()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mLabel:I

    return v0
.end method

.method public blacklist getPriority()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPriority:I

    return v0
.end method

.method public blacklist getPropertyName()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPropertyValue()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasCoercedLabel()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "coerced_label"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnabled()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasIcon()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasLabel()Z
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "label"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasPriority()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string/jumbo v1, "priority"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasPropertyName()Z
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string/jumbo v1, "property_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasPropertyValue()Z
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string/jumbo v1, "property_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasType()Z
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasValue()Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string/jumbo v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist setCoercedLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "coercedLabel"    # Ljava/lang/CharSequence;

    .line 127
    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mCoercedLabel:Ljava/lang/CharSequence;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "coerced_label"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 153
    iput-boolean p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mEnabled:Z

    .line 154
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public blacklist setIconRes(I)V
    .locals 2
    .param p1, "icon"    # I

    .line 140
    iput p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mIcon:I

    .line 141
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public blacklist setLabelRes(I)V
    .locals 2
    .param p1, "label"    # I

    .line 114
    iput p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mLabel:I

    .line 115
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "label"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public blacklist setPriority(I)V
    .locals 2
    .param p1, "priority"    # I

    .line 166
    iput p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPriority:I

    .line 167
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string/jumbo v1, "priority"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public blacklist setPropertyName(Ljava/lang/String;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyName:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string/jumbo v1, "property_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public blacklist setPropertyValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "propertyValue"    # Ljava/lang/String;

    .line 218
    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyValue:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string/jumbo v1, "property_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public blacklist setType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mType:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public blacklist setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mValue:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string/jumbo v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PolicyInfo {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " Value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasPropertyName()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " PropertyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasPropertyValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " PropertyValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " Priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " LabelRes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mLabel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasCoercedLabel()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " CoercedLabel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mCoercedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 236
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasIcon()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " Icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    :cond_7
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
