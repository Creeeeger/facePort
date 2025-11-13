.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;

.field public final synthetic f$1:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

.field public final synthetic f$2:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

.field public final synthetic f$3:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler$$ExternalSyntheticLambda0;->f$3:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler$$ExternalSyntheticLambda0;->f$3:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->SOURCE_ADDED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->getSummary()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->getSummary()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->getOnClickListener(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p0

    iget-boolean v0, v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mIsConnected:Z

    if-ne v0, v2, :cond_2

    invoke-virtual {v1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-ne v0, v3, :cond_2

    invoke-virtual {v1}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-ne v0, p0, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v2, v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mIsConnected:Z

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v1}, Landroidx/preference/Preference;->notifyChanged()V

    :goto_2
    return-void
.end method
