.class public Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryPreference;
.super Lcom/android/settings/ProgressCategory;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1404c9

    iput p1, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f1404c9

    iput p1, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f1404c9

    iput p1, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f1404c9

    iput p1, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    return-void
.end method


# virtual methods
.method public final getAllAudioStreamPreferences()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
